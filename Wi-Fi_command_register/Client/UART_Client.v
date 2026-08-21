module UART_Client(
	input         clk,             // 50MHz 時脈
	input         rst_n,           // FPGA 重置 (Active Low)
	input  [2:0]  column,            // 矩陣鍵盤「行」輸入 (Column 1~4)
	output [2:0]  row,				 // 矩陣鍵盤「列」輸出 (Row 1~4)
	input         rx,              // 來自 ESP8266 的 TX (FPGA RX)
	output        tx,              // 傳給 ESP8266 的 RX (FPGA TX)
	output        Client_WiFi_txd, // 轉接至測試除錯腳位
	output reg    RST_WiFi         // 連接至 ESP8266 的 RST 腳位
);

assign Client_WiFi_txd = rx;

// -------------------------------------------------------------
// 內部連線訊號 (Internal Wires)
// -------------------------------------------------------------
wire [4:0] key;            // 來自 button 的按鍵值 (0~15)
wire       pressed;        // 來自 button 的觸發訊號 (1: 按下)

wire [7:0] rxd_byte;       // 來自 uart_rx 解碼出的 Byte
wire       receive_end;    // 來自 uart_rx 的接收完成脈衝
wire       receiver_OK;    // 來自 receiver_OK 的狀態訊號
reg        receive_ok_en;  // 輸出給 receiver_OK 的致能訊號

// -------------------------------------------------------------
// ESP8266 模組硬體重置
// -------------------------------------------------------------
reg [20:0] rst_cnt;
reg        wifi_rst_done;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rst_cnt       <= 21'd0;
		RST_WiFi      <= 1'b0; // 低電位重置 ESP8266
		wifi_rst_done <= 1'b0;
	end else begin
		if (rst_cnt < 21'd1_000_000) begin // 20ms
			rst_cnt       <= rst_cnt + 1'b1;
			RST_WiFi      <= 1'b0;
			wifi_rst_done <= 1'b0;
		end else begin
			RST_WiFi      <= 1'b1;
			wifi_rst_done <= 1'b1;
		end
	end
end

// -------------------------------------------------------------
// 按鍵彈跳與邊緣觸發
// -------------------------------------------------------------
reg pressed_d1, pressed_d2;
wire key_trigger = (!pressed_d2 && pressed_d1); // 上升緣觸發

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		pressed_d1 <= 1'b0;
		pressed_d2 <= 1'b0;
	end else begin
		pressed_d1 <= pressed;
		pressed_d2 <= pressed_d1;
	end
end

// -------------------------------------------------------------
// AT 指令發送狀態機
// -------------------------------------------------------------
localparam S_IDLE      = 4'd0,
			  S_AT_RST    = 4'd1,
			  S_CWMODE    = 4'd2,
			  S_CWJAP     = 4'd3,
			  S_CIPSTART  = 4'd4,
			  S_READY     = 4'd5,
			  S_CIPSEND   = 4'd6,
			  S_SEND_DATA = 4'd7,
			  S_WAIT_DONE = 4'd8,
			  S_COOL_DOWN = 4'd9;

reg [27:0] cooldown_cnt;

reg [3:0]  state, next_state_after_wait;

// UART 字串發送控制
reg [8*64-1:0] current_cmd;
reg [5:0]      cmd_len;
reg            tx_start;
wire           tx_busy;
wire           cmd_done;

// 延遲計數器 (50MHz)
reg [27:0] delay_cnt;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state                 <= S_IDLE;
		tx_start              <= 1'b0;
		receive_ok_en         <= 1'b0;
		current_cmd           <= 512'd0;
		cmd_len               <= 6'd0;
		delay_cnt             <= 28'd0;
		cooldown_cnt          <= 28'd0;
		next_state_after_wait <= S_IDLE;
	end else begin
		tx_start      <= 1'b0; // 脈衝自動拉低
		receive_ok_en <= 1'b1; // 預設維持 OK 檢測致能

		case (state)
			S_IDLE: begin
				if (wifi_rst_done) begin
					delay_cnt <= 28'd0;
					state     <= S_AT_RST;
				end
			end

			// 發送 AT+RST
			S_AT_RST: begin
				if (!tx_busy && !tx_start) begin
					current_cmd           <= "AT+RST\r\n";
					cmd_len               <= 6'd8;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0; // 清除舊的 OK
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_CWMODE;
					state                 <= S_WAIT_DONE;
				end
			end

			// 發送 AT+CWMODE=1
			S_CWMODE: begin
				if (!tx_busy && !tx_start) begin
					current_cmd           <= "AT+CWMODE=1\r\n";
					cmd_len               <= 6'd13;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0; // 清除舊的 OK
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_CWJAP;
					state                 <= S_WAIT_DONE;
					end
				end

			// 連接 WiFi (AT+CWJAP)
			S_CWJAP: begin
				if (!tx_busy && !tx_start) begin
					current_cmd           <= "AT+CWJAP=\"WiFi_FPGA\",\"048778414\"\r\n";
					cmd_len               <= 6'd34;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0; // 清除舊的 OK
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_CIPSTART;
					state                 <= S_WAIT_DONE;
				end
			end

			// 建立 TCP 連線 (AT+CIPSTART)
			S_CIPSTART: begin
				if (!tx_busy && !tx_start) begin
					current_cmd           <= "AT+CIPSTART=\"TCP\",\"192.168.4.1\",80\r\n";
					cmd_len               <= 6'd36;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0; // 清除舊的 OK
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_READY;
					state                 <= S_WAIT_DONE;
				end
			end

			// 等待指令傳送完成與 OK 訊號
			S_WAIT_DONE: begin
				delay_cnt <= delay_cnt + 1'b1;
				// 收到 receiver_OK 或者 5 秒 Timeout 保險跳轉
				if (receiver_OK || delay_cnt >= 28'd250_000_000) begin
					state     <= next_state_after_wait;
					delay_cnt <= 28'd0;
					receive_ok_en <= 1'b0;
				end
			end

			// 準備就緒，等待鍵盤觸發
			S_READY: begin
				cooldown_cnt <= 28'd0;
				if (key_trigger) begin
					state <= S_CIPSEND;
				end
			end

			// 發送 AT+CIPSEND=3
			S_CIPSEND: begin
				if (!tx_busy && !tx_start) begin
					current_cmd           <= "AT+CIPSEND=3\r\n";
					cmd_len               <= 6'd15;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0; // 清除舊的 OK
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_SEND_DATA;
					state                 <= S_WAIT_DONE;
				end
			end

			// 傳送按鍵數值資料
			S_SEND_DATA: begin
				if (!tx_busy && !tx_start) begin
					case (key)
						5'd0:  current_cmd <= "0\r\n";
						5'd1:  current_cmd <= "1\r\n";
						5'd2:  current_cmd <= "2\r\n";
						5'd3:  current_cmd <= "3\r\n";
						5'd4:  current_cmd <= "4\r\n";
						5'd5:  current_cmd <= "5\r\n";
						5'd6:  current_cmd <= "6\r\n";
						5'd7:  current_cmd <= "7\r\n";
						5'd8:  current_cmd <= "8\r\n";
						5'd9:  current_cmd <= "9\r\n";
						5'd10: current_cmd <= "A\r\n";
						5'd11: current_cmd <= "B\r\n";
						5'd12: current_cmd <= "C\r\n";
						5'd13: current_cmd <= "D\r\n";
						5'd14: current_cmd <= "E\r\n";
						5'd15: current_cmd <= "F\r\n";
						default: current_cmd <= " \r\n";
					endcase
					cmd_len               <= 6'd3;
					tx_start              <= 1'b1;
					receive_ok_en         <= 1'b0;
					delay_cnt             <= 28'd0;
					next_state_after_wait <= S_COOL_DOWN;
					state                 <= S_WAIT_DONE;
				end
			end
			// 冷卻狀態：強制隔離 200ms (50MHz 下為 10,000,000 個週期)
			S_COOL_DOWN: begin
				if (cooldown_cnt < 28'd10_000_000) begin
					cooldown_cnt <= cooldown_cnt + 1'b1;
				end else begin
					cooldown_cnt <= 28'd0;
					state        <= S_READY; // 防護完成，才允許下一次按鍵按下
				end
			end
			default: state <= S_IDLE;
		endcase
	end
end

// -------------------------------------------------------------
// 實體化 UART 發送模組
// -------------------------------------------------------------
uart_tx_string #(
	.MAX_BYTES(64),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_tx (
	.clk     (clk),
	.rst_n   (rst_n),
	.tx_start(tx_start),
	.tx_cmd  (current_cmd),
	.tx      (tx),
	.tx_busy (tx_busy),
	.cmd_done(cmd_done)
);

// 鍵盤掃描模組
button_2x2 u_button_2x2 (
	.clk    (clk),
	//.column   (column),
	//.row   (row),
	//.key    (key),
	//.pressed(pressed) // 按鍵按下時為 1
);

// 鍵盤掃描模組
button_3x3 u_button_3x3 (
	.clk    (clk),
	.column   (column),
	.row   (row),
	.key    (key),
	.pressed(pressed) // 按鍵按下時為 1
);

// 鍵盤掃描模組
button_4x4 u_button_4x4 (
	.clk    (clk),
	//.column   (column),
	//.row   (row),
	//.key    (key),
	//.pressed(pressed) // 按鍵按下時為 1
);

// UART 接收模組
uart_rx #(
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_rx (
	.clk    (clk),
	.rst_n  (rst_n),
	.rx     (rx),
	.rx_data(rxd_byte),
	.rx_done(receive_end)
);

// ESP8266 回傳 "OK" 判斷模組
receiver_OK u_receiver_ok (
	.clk         (clk),
	.rst_n        (rst_n),
	.RECEIVE_END  (receive_end),
	.receive_ok_en(receive_ok_en),
	.rxd          (rxd_byte),
	.receiver_OK  (receiver_OK)
);

endmodule