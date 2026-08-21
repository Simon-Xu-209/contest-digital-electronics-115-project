module UART_Server(
	input         clk,      // 50MHz
	input         rst_n,     // FPGA 板上的 Reset 按鍵 (Low Active)
	input         tx_en,
	input         rx,
	output        tx,
	output [7:0]  LED,
	output        Server_WiFi_txd,
	output reg    RST_WiFi,  // 連接到 Wi-Fi 模組的 RST 腳位
	//output        rse_wifi,
	output [15:0] WiFi_signal
	//output wire [15:0] seg_data,
	//output wire [7:0] seg_com
);

assign Server_WiFi_txd = rx;
//assign rse_wifi        = rst_n;

// -------------------------------------------------------------
// Wi-Fi 硬體 Reset 延遲產生器
// 產生約 20ms 的乾淨低電位 Reset 脈衝，然後拉高
// -------------------------------------------------------------
reg [20:0] rst_cnt;
reg        wifi_rst_done;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rst_cnt       <= 21'd0;
		RST_WiFi      <= 1'b0; // 保持低電位，觸發 Wi-Fi 重置
		wifi_rst_done <= 1'b0;
	end else begin
		if (rst_cnt < 21'd1_000_000) begin // 50MHz 下約 20ms (1,000,000 * 20ns)
			rst_cnt       <= rst_cnt + 1'b1;
			RST_WiFi      <= 1'b0;
			wifi_rst_done <= 1'b0;
		end else begin
			RST_WiFi      <= 1'b1; // 釋放 Reset，拉高
			wifi_rst_done <= 1'b1; // 重置完成
		end
	end
end

// -------------------------------------------------------------
// AT 指令發送狀態機 (等待 Wi-Fi 重置完成 + 延遲後才開始發送)
// -------------------------------------------------------------
parameter MAX_CMD_LEN = 64;
reg [8*MAX_CMD_LEN-1:0] current_cmd;
    
reg        tx_start;
wire       tx_busy;
wire       cmd_done;

// 啟動延遲計數器 (Wi-Fi 重置後需等待約 500ms 讓 ESP 開機完成吐出 ready)
reg [24:0] boot_delay_cnt;
reg        boot_ready;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		boot_delay_cnt <= 0;
		boot_ready     <= 0;
	end else if (wifi_rst_done) begin
		if (boot_delay_cnt < 25'd25_000_000) begin // 50MHz 下約 500ms
			boot_delay_cnt <= boot_delay_cnt + 1'b1;
			boot_ready     <= 1'b0;
		end else begin
			boot_ready     <= 1'b1;
		end
	end
end

// UART TX 發送模組
uart_tx_string #(
	.MAX_BYTES(MAX_CMD_LEN)
) uart_tx_u1 (
	.clk    (clk),
	.rst_n   (rst_n),
	.tx_start(tx_start),
	.tx_cmd  (current_cmd),
	.tx      (tx),
	.tx_busy (tx_busy),
	.cmd_done(cmd_done)
);

// UART RX 接收模組
parameter MAX_RX_LEN = 32;
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
	.rx           (rx),
	.link_ID      (link_ID),      // Wi-Fi 連線 ID 暫存器
	.rx_Data_len  (rx_Data_len),  // 資料長度暫存器(位元組)
	.rx_Data_reg  (rx_Data_reg),  // 輸出穩定的正式資料暫存器
	.rx_ready     (rx_ready),     // 接收完成脈衝
	.Data_reg_busy(Data_reg_busy) // 忙碌旗標
);


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

// LED 模組
mode_LED mode_LED_u1(
	.clk          (clk),
	.rst_n        (rst_n),
	.RECEIVE_END  (rx_ready),
	.Data_reg_busy(Data_reg_busy),
	.rx_Data_reg  (rx_Data_reg),
	.SEND_END_cmd (init_done),
	.LED          (LED),
	.WiFi_signal  (WiFi_signal)
);
/*
seven_segment_display seven_segment_display_1(
	.clk(clk),
	.rst_n(rst_n),
	.WiFi_signal(WiFi_signal),
	.seg_data(seg_data),
	.seg_com(seg_com)
);
*/

/*
wire [3:0] current_link_id;
wire [7:0] current_data_len;
wire [7:0] parsed_cmd;
wire       data_valid;

ipd_parser #(
    .CLK_FREQ (50_000_000),
    .BAUD_RATE(115200)
) u_ipd_parser (
	.clk        (clk),
	.rst_n      (rst_n),
	.rx         (rx),
	.init_done  (init_done),
	.link_id    (current_link_id),
	.data_len   (current_data_len),
	.cmd_data   (parsed_cmd),
	.data_valid (data_valid),
	.WiFi_signal(WiFi_signal)
);
*/

endmodule