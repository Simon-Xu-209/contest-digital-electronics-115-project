module WiFi_Controller #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN  = 32,
	parameter CLK_FREQ    = 50_000_000,
	parameter BAUD_RATE   = 115200
)(
	input  wire                     clk,
	input  wire                     rst_n,
	
	// 硬體外設腳位
	input  wire                     WiFi_rx,
	output wire                     WiFi_tx,
	output wire                     WiFi_rst_n,
	
	// 上層控制與發送暫存器介面
	input  wire                     send_en,
	input  wire [3:0]               send_target_id,
	input  wire [8*MAX_TX_LEN-1:0]  send_data_reg,
	output wire                     tx_busy,
	
	// 上層接收暫存器介面
	output wire [3:0]               rx_link_id,
	output wire [15:0]              rx_data_len,
	output wire [8*MAX_RX_LEN-1:0]  rx_data_reg,
	output wire                     rx_done,
	
	// 狀態輸出
	output reg                      init_done
);

assign WiFi_rst_n = 1'b1;

// 訊號同步
reg WiFi_rx_sync1, WiFi_rx_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		WiFi_rx_sync1 <= 1'b1;
		WiFi_rx_sync2 <= 1'b1;
	end else begin
		WiFi_rx_sync1 <= WiFi_rx;
		WiFi_rx_sync2 <= WiFi_rx_sync1;
	end
end

// -------------------------------------------------------------
// UART RX
// -------------------------------------------------------------
wire       rx_byte_en;
wire [7:0] rx_byte;

UART_rx_string #(
	.MAX_BYTES(MAX_RX_LEN),
	.CLK_FREQ (CLK_FREQ),
	.BAUD_RATE(BAUD_RATE)
) UART_rx_string_u1 (
	.clk          (clk),
	.rst_n        (rst_n),
	.UART_rx      (WiFi_rx_sync2),
	.rx_byte_en   (rx_byte_en),
	.rx_byte      (rx_byte),
	.link_ID      (rx_link_id),
	.rx_data_len  (rx_data_len),
	.rx_data_reg  (rx_data_reg),
	.rx_done      (rx_done),
	.data_reg_busy()
);

// -------------------------------------------------------------
// UART TX
// -------------------------------------------------------------
reg                     tx_start;
reg  [8*MAX_TX_LEN-1:0] tx_data_reg;
wire                    uart_tx_busy;
wire                    uart_tx_done;

UART_tx_string #(
	.MAX_BYTES(MAX_TX_LEN),
	.CLK_FREQ (CLK_FREQ),
	.BAUD_RATE(BAUD_RATE)
) UART_tx_string_u1 (
	.clk        (clk),
	.rst_n      (rst_n),
	.tx_start   (tx_start),
	.tx_data_reg(tx_data_reg),
	.UART_tx    (WiFi_tx),
	.tx_busy    (uart_tx_busy),
	.tx_done    (uart_tx_done)
);

// -------------------------------------------------------------
// ESP8266 指令回應檢查器
// -------------------------------------------------------------
wire resp_checking;
wire resp_ok;
wire got_ready;
wire resp_timeout;

ESP8266_Response_Checker #(
	.CLK_FREQ(CLK_FREQ)
) ESP8266_Resp_Checker_u1 (
	.clk          (clk),
	.rst_n        (rst_n),
	.check_enable (uart_tx_done), // 當 UART 實體位元組傳送完畢，觸發檢查器啟動
	.rx_byte_en   (rx_byte_en),
	.rx_byte      (rx_byte),
	.checking     (resp_checking),
	.resp_ok      (resp_ok),
	.got_ready    (got_ready),
	.resp_timeout (resp_timeout)
);

assign tx_busy = uart_tx_busy || resp_checking;

// -------------------------------------------------------------
// AT 指令初始化狀態機
// -------------------------------------------------------------
reg [3:0]  init_step;
reg [27:0] boot_cnt;
reg [27:0] rst_wait_cnt;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		init_step      <= 4'd0;
		init_done      <= 1'b0;
		tx_start       <= 1'b0;
		tx_data_reg <= {8*MAX_TX_LEN{1'b0}};
		boot_cnt       <= 28'd0;
		rst_wait_cnt   <= 28'd0;
		tx_fsm_state <= TX_IDLE;
	end else if (!init_done) begin
		tx_start <= 1'b0;
		case (init_step)
			// 上電延遲 0.5 秒
			4'd0: begin
				if (boot_cnt >= CLK_FREQ/2) init_step <= 4'd1;
				else boot_cnt <= boot_cnt + 1'b1;
			end

			// Step 1: AT+RST
			4'd1: begin
				if (!tx_busy) begin
					tx_data_reg <= "AT+RST\r\n"; // 重啟 ESP8266 晶片
					tx_start       <= 1'b1;
					rst_wait_cnt   <= 28'd0;
					init_step      <= 4'd2;
				end
			end
			// 等待 ESP8266 輸出 ready (或 3 秒防呆超時)
			4'd2: begin
				rst_wait_cnt <= rst_wait_cnt + 1'b1;
				if (got_ready || rst_wait_cnt >= CLK_FREQ * 3) begin
					init_step <= 4'd3;
				end
			end

			// Step 2: AT+RFPOWER=0
			4'd3: begin
				if (!tx_busy) begin
					tx_data_reg <= "AT+RFPOWER=0\r\n"; // 設定為 Station (Client) 模式 (CWMODE=1)
					tx_start       <= 1'b1;
					init_step      <= 4'd4;
				end
			end
			4'd4: if (resp_ok || resp_timeout) init_step <= 4'd5;

			// Step 3: AT+CWJAP
			4'd5: begin
				if (!tx_busy) begin
					tx_data_reg <= "AT+CWJAP=\"WiFi_FPGA\",\"048778414\"\r\n"; // 連線到指定熱點 "WiFi_FPGA", "048778414"
					tx_start       <= 1'b1;
					init_step      <= 4'd6;
				end
			end
			4'd6: if (resp_ok || resp_timeout) init_step <= 4'd7;

			// Step 4: AT+CIPMUX=0
			4'd7: begin
				if (!tx_busy) begin
					tx_data_reg <= "AT+CIPMUX=0\r\n"; // 設定為單連線模式 (CIPMUX=0)
					tx_start       <= 1'b1;
					init_step      <= 4'd8;
				end
			end
			4'd8: if (resp_ok || resp_timeout) init_step <= 4'd9;

			// Step 5: AT+CIPSTART
			4'd9: begin
				if (!tx_busy) begin
					tx_data_reg <= "AT+CIPSTART=\"TCP\",\"192.168.4.1\",80\r\n"; // 建立 TCP 連線至 Server
					tx_start       <= 1'b1;
					init_step      <= 4'd10;
				end
			end
			4'd10: if (resp_ok || resp_timeout) init_step <= 4'd11;

			// 初始化完成
			4'd11: begin
				init_done <= 1'b1;
			end

			default: init_step <= 4'd0;
		endcase
	end else if (init_done) begin
		tx_start <= 1'b0;
		
		case (tx_fsm_state)
			TX_IDLE: begin
				if (send_en && !tx_busy && (data_len_bytes > 0)) begin
					// 自動格式化成 "AT+CIPSEND=<id>,<len>\r\n"
					/* 
					* 多連線 (CIPMUX=1) 動態組裝範例：
					* 格式：AT+CIPSEND=<id>,<len>\r\n (Client 可以省略連線 ID)
					*/
					if (data_len_bytes >= 100) begin
						tx_data_reg <= {"AT+CIPSEND=", len_hundreds, len_tens, len_ones, "\r\n"};
					end else if (data_len_bytes >= 10) begin
						tx_data_reg <= {"AT+CIPSEND=", len_tens, len_ones, "\r\n"};
					end else begin
						tx_data_reg <= {"AT+CIPSEND=", len_ones, "\r\n"};
					end
					tx_start     <= 1'b1;
					tx_fsm_state <= TX_WAIT_PROMPT;
				end
			end

			TX_WAIT_PROMPT: begin
				// 當 ESP8266 回傳 '>' (8'h3E) 時，轉入資料發送
				if (rx_byte_en && rx_byte == ">") begin
					tx_data_reg  <= send_data_reg; // 載入真正的資料
					tx_start     <= 1'b1;
					tx_fsm_state <= TX_WAIT_OK;
					end else if (resp_timeout) begin
						tx_fsm_state <= TX_IDLE; // 超時防呆跳回 IDLE
				end
			end

			TX_WAIT_OK: begin
				if (resp_ok || resp_timeout) begin
					tx_fsm_state <= TX_IDLE;
				end
			end
		endcase
	end
end


// -------------------------------------------------------------
// 發送狀態機定義 (自動補全 AT+CIPSEND)
// -------------------------------------------------------------
localparam TX_IDLE      = 3'd0,
           TX_SEND_CMD  = 3'd1, // 發送 AT+CIPSEND=<id>,<len>
           TX_WAIT_PROMPT = 3'd2, // 等待 ESP8266 回覆 '>'
           TX_SEND_DATA = 3'd3, // 發送真正的 Payload
           TX_WAIT_OK   = 3'd4; // 等待 SEND OK

reg [2:0] tx_fsm_state;
reg [7:0] data_len_bytes;

// 將 8-bit 長度轉換為十進位 ASCII 數字 (百位、十位、個位)
wire [7:0] len_hundreds = (data_len_bytes / 100) + "0";
wire [7:0] len_tens     = ((data_len_bytes % 100) / 10) + "0";
wire [7:0] len_ones     = (data_len_bytes % 10) + "0";

// 自動計算 send_data_reg 中的有效 Byte 數
integer i;
always @(*) begin
	data_len_bytes = 0;
	for (i = 0; i < MAX_TX_LEN; i = i + 1) begin
		if (send_data_reg[i*8 +: 8] != 8'h00)
			data_len_bytes = data_len_bytes + 1;
	end
end



endmodule