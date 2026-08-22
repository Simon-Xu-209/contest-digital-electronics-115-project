module UART_Server(
	input         clk,      // 50MHz
	input         rst_n,    // Reset (Low Active)
	input         tx_en,
	input         rx,
	output        tx,
	output [7:0]  LED,
	output        Server_WiFi_txd,
	output reg    RST_WiFi
	// output        rse_wifi,
);

assign Server_WiFi_txd = rx;
// assign rse_wifi        = rst_n;

reg rx_sync1, rx_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rx_sync1 <= 1'b1;
		rx_sync2 <= 1'b1;
	end else begin
	rx_sync1 <= rx;
	rx_sync2 <= rx_sync1;
	end
end

// -------------------------------------------------------------
// Wi-Fi 硬體 Reset 延遲產生器
// -------------------------------------------------------------
reg [20:0] rst_cnt;
reg        wifi_rst_done;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rst_cnt       <= 21'd0;
		RST_WiFi      <= 1'b0;
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
// Boot Delay
// -------------------------------------------------------------
reg [24:0] boot_delay_cnt;
reg        boot_ready;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		boot_delay_cnt <= 0;
		boot_ready     <= 0;
	end else if (wifi_rst_done) begin
		if (boot_delay_cnt < 25'd25_000_000) begin // 500ms
			boot_delay_cnt <= boot_delay_cnt + 1'b1;
			boot_ready     <= 1'b0;
		end else begin
			boot_ready     <= 1'b1;
		end
	end
end

// -------------------------------------------------------------
// UART TX / RX 宣告與控制 (AT 指令處理)
// -------------------------------------------------------------
parameter MAX_CMD_LEN = 64;
reg [8*MAX_CMD_LEN-1:0] current_cmd;
parameter MAX_RX_LEN = 32;
reg        tx_start;
wire       tx_busy;
wire       cmd_done;

uart_tx_string #(
	.MAX_BYTES(MAX_CMD_LEN)
) uart_tx_u1 (
	.clk     (clk),
	.rst_n   (rst_n),
	.tx_start(final_tx_start),
	.tx_cmd  (final_tx_cmd),
	.tx      (tx),
	.tx_busy (tx_busy),
	.cmd_done(cmd_done)
);

// 初始化未完成時，聽開機狀態機 (current_cmd / tx_start)
// 初始化完成後，聽暫存控制器 (tx_data_reg / tx_reg_flag)
wire [8*MAX_CMD_LEN-1:0] final_tx_cmd   = init_done ? tx_data_reg : current_cmd;
wire                     final_tx_start = init_done ? tx_reg_flag : tx_start;

// 宣告控制訊號
wire                     ctrl_tx_start;
wire [8*MAX_CMD_LEN-1:0] ctrl_tx_cmd;
wire                     tx_reg_busy;
wire                     tx_reg_flag;
wire [8*MAX_CMD_LEN-1:0] tx_data_reg;

// 實體化傳送暫存器控制器
tx_buffer_controller #(
	.MAX_BYTES(MAX_CMD_LEN)
) u_tx_buffer_ctrl (
	.clk          (clk),
	.rst_n        (rst_n),
	
	// --- 外包介面：直連 connect_detector 或其他外設 ---
	.send_req     (client_connected), // 當偵測到新連線時驅動一次
	.target_id    (client_id),        // connect_detector 解析到的 ID (0~4)
	.payload_len  (8'd9),             // "WELCOME\r\n" 長度為 9 位元組
	.payload_data ("WELCOME\r\n"),     // 欲發送的內容
	
	// --- 狀態與對接介面 ---
	.tx_reg_busy  (tx_reg_busy),
	.uart_tx_start(ctrl_tx_start),    // 輸出至 final_tx_start
	.uart_tx_cmd  (ctrl_tx_cmd),      // 輸出至 final_tx_cmd
	.cmd_done     (cmd_done)          // 接收 UART 傳送完畢訊號
);

wire rx_ready;
wire [3:0] link_ID;
wire [15:0] rx_Data_len;
wire [255:0] rx_Data_reg;
wire Data_reg_busy;

uart_rx_string #(
	.MAX_BYTES(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_uart_rx (
	.clk          (clk),
	.rst_n        (rst_n),
	.rx           (rx_sync2),
	.link_ID      (link_ID),      // Wi-Fi 連線 ID 暫存器
	.rx_Data_len  (rx_Data_len),  // 資料長度暫存器(位元組)
	.rx_Data_reg  (rx_Data_reg),  // 輸出穩定的正式資料暫存器
	.rx_ready     (rx_ready),     // 接收完成脈衝
	.Data_reg_busy(Data_reg_busy) // 忙碌旗標
);

reg [8*MAX_CMD_LEN-1:0] resp_cmd;
reg                      resp_tx_start;
wire [8*MAX_CMD_LEN-1:0] tx_cmd_mux = init_done ? resp_cmd : current_cmd;

// -------------------------------------------------------------
// AT 初始化指令狀態機
// -------------------------------------------------------------
reg [3:0]  cmd_step;
reg [22:0] delay_cnt;
reg        delay_en;
reg        init_done;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		cmd_step    <= 0;
		tx_start    <= 0;
		current_cmd <= "";
		delay_cnt   <= 0;
		delay_en    <= 0;
		init_done   <= 0;
	end else if (tx_en && boot_ready && !init_done) begin
		tx_start <= 1'b0;

		if (delay_en) begin
			if (delay_cnt < 23'd2_500_000) begin // 50ms
				delay_cnt <= delay_cnt + 1'b1;
			end else begin
				delay_cnt <= 0;
				delay_en  <= 0;
			end
		end else begin
			case (cmd_step)
				4'd0: begin current_cmd <= "AT+RFPOWER=0\r\n"; tx_start <= 1'b1; cmd_step <= 4'd1; end
				4'd1: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd2; end
				4'd2: begin current_cmd <= "AT+CWMODE=2\r\n"; tx_start <= 1'b1; cmd_step <= 4'd3; end
				4'd3: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd4; end
				4'd4: begin current_cmd <= "AT+CWSAP=\"WiFi_FPGA\",\"048778414\",1,4\r\n"; tx_start <= 1'b1; cmd_step <= 4'd5; end
				4'd5: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd6; end
				4'd6: begin current_cmd <= "AT+CIPMUX=1\r\n"; tx_start <= 1'b1; cmd_step <= 4'd7; end
				4'd7: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd8; end
				4'd8: begin current_cmd <= "AT+CIPSERVER=1,80\r\n"; tx_start <= 1'b1; cmd_step <= 4'd9; end
				4'd9: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd10; end
				4'd10: begin current_cmd <= "AT+CIPAP=\"192.168.4.1\",\"192.168.4.1\",\"255.255.255.0\"\r\n"; tx_start <= 1'b1; cmd_step <= 4'd11; end
				4'd11: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd12; end
				4'd12: begin current_cmd <= "AT+CIPSTO=0\r\n"; tx_start <= 1'b1; cmd_step <= 4'd13; end
				4'd13: if (cmd_done) begin delay_en <= 1; cmd_step <= 4'd14; end
				4'd14: begin init_done <= 1'b1; end
				default:;
			endcase
		end
	end
end



// -------------------------------------------------------------
// 外設模組連接
// -------------------------------------------------------------

/*
// IPD 專用解析器 (負責解析 +IPD 內容並輸出連線 ID 與訊號狀態)
wire w_id_valid;
ipd_parser #(
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_ipd_parser (
	.clk        (clk),
	.rst_n      (rst_n),
	.rx         (rx_sync2),
	.init_done  (init_done),
	.link_ID    (),            // 視後續需求決定是否牽線
	.rx_Data_len(),            // 視後續需求決定是否牽線
	.orderID    (orderID), // 拋出解析完畢的 4 Bytes 訂單 ID
	.id_valid   (w_id_valid),  // 解析成功旗標
	.WiFi_signal()  // 直接輸出至頂層的 WiFi_signal 供七段顯示器使用
);
*/
/*
mode_LED #(
	.MAX_RX_LEN(MAX_RX_LEN)
)mode_LED_u1(
	.clk         (clk),
	.rst_n       (rst_n),
	.RECEIVE_END (w_rx_ready),   // 只在 w_rx_ready == 1 時才觸發解析
	.Data_reg_busy(Data_reg_busy),
	.rx_Data_reg (rx_Data_reg), // 傳入穩定的資料暫存器
	.SEND_END_cmd(init_done),
	.LED         (LED),
	.WiFi_signal (WiFi_signal)
);
*/

endmodule