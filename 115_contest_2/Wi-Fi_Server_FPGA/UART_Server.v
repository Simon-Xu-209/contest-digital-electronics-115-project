module UART_Server(
	input         clk,      // 50MHz
	input         rst_n,    // Reset (Low Active)
	input  [7:0]  switch_8bit,
	input  [2:0]  column_3x3,
	output [2:0]  row_3x3,
	input         tx_en,
	input         rx,
	output        tx,
	output wire   Server_WiFi_txd,
	output reg    RST_WiFi,
	output wire [15:0] seg_data,
	output wire [7:0]  seg_com,
	output wire DOUT,
	output SCL, SDA, RES, DC, CS, BLK,
	output reg [3:0] KEY,
	output wire CONNECETED
);

assign Server_WiFi_txd = rx;

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

// 宣告控制訊號 (來自 tx_buffer_controller)
wire                     ctrl_tx_start;
wire [8*MAX_CMD_LEN-1:0] ctrl_tx_cmd;
wire                     tx_reg_busy;

wire [8*MAX_CMD_LEN-1:0] final_tx_cmd   = init_done ? ctrl_tx_cmd   : current_cmd;
wire                     final_tx_start = init_done ? ctrl_tx_start : tx_start;

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

// 實體化傳送暫存器控制器
tx_buffer_controller #(
	.MAX_BYTES(MAX_CMD_LEN)
) u_tx_buffer_ctrl (
	.clk          (clk),
	.rst_n        (rst_n),
	
	.send_req     (order_proc_done),  // 由 Order_processor 完成後觸發
	.target_id    (client_id),        // TCP Client ID
	
	// 改為傳入專用的發送暫存器
	.sendID       (sendID),
	.sendQA       (sendQA),
	.sendQT       (sendQT),
	
	.tx_reg_busy  (tx_reg_busy),
	.uart_tx_start(ctrl_tx_start),
	.uart_tx_cmd  (ctrl_tx_cmd),
	.cmd_done     (cmd_done),
	
	.rec_ok       (rx_ok),
	.rec_prompt   (rx_prompt)
);

wire rx_ready;
wire [3:0] link_ID;
wire [15:0] rx_Data_len;
wire [255:0] rx_Data_reg;
wire Data_reg_busy;

wire       rx_done;
wire [7:0] rx_byte;

uart_rx_string #(
	.MAX_BYTES(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_uart_rx (
	.clk          (clk),
	.rst_n        (rst_n),
	.rx           (rx_sync2),
	.rx_done      (rx_done),
	.rx_byte      (rx_byte),
	.link_ID      (link_ID),      // Wi-Fi 連線 ID 暫存器
	.rx_Data_len  (rx_Data_len),  // 資料長度暫存器(位元組)
	.rx_Data_reg  (rx_Data_reg),  // 輸出穩定的正式資料暫存器
	.rx_ready     (rx_ready),     // 接收完成脈衝
	.Data_reg_busy(Data_reg_busy) // 忙碌旗標
);

wire rx_ok;
wire rx_prompt;

receiver_OK u_receiver_OK (
	.clk            (clk),
	.rst_n          (rst_n),
	.RECEIVE_END    (rx_done), // UART RX 的 Byte 接收完成脈衝
	.receive_ok_en  (1'b1),
	.rxd            (rx_byte),  // UART RX 得到的字元資料
	.receiver_OK    (rx_ok),       // 接至控制器的 OK 判斷
	.receiver_PROMPT(rx_prompt)   // 接至控制器的 Prompt 判斷
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

wire [3:0] client_id;
wire       is_connected;   // 改為連線狀態電位
wire       conn_pulse;     // 連線觸發脈衝
wire       client_closed;

assign CONNECETED = is_connected;

connect_detector #(
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) u_connect_detector (
	.clk             (clk),
	.rst_n           (rst_n),
	.rx              (rx_sync2),
	.init_done       (init_done),
	.client_id       (client_id),
	.is_connected    (is_connected),  // 狀態旗標 (高位代表連線中)
	.conn_pulse      (conn_pulse),    // 觸發脈衝
	.client_closed   (client_closed)
);



wire [31:0] orderID;       // 訂單 ID
wire [15:0] orderQuantity; // 訂購數量
wire [15:0] bidAmount;     // 出價金額
wire [15:0] productQuota;  // 商品配額
wire [15:0] grandTotal;    // 付款總額

wire [31:0] sendID;
wire [63:0] sendQA;
wire [63:0] sendQT;

wire order_proc_done;

// -------------------------------------------------------------
// 訂單處理器 (Order_processor)
// -------------------------------------------------------------
Order_processor #(
	.MAX_RX_LEN(MAX_RX_LEN)
) Order_processor_u1 (
	.clk           (clk),
	.rst_n         (rst_n),
	.start_proc    (conn_pulse),      // 連線成功，通知開始處理
	//.rx_ready      (rx_ready),
	.rx_Data_reg   (rx_Data_reg),     // 資料暫存器
	
	.switch_8bit  (switch_8bit),
	.KEY          (KEY),
	.Pressed      (Pressed),
	
	.orderID       (orderID),
	.orderQuantity (orderQuantity),
	.bidAmount     (bidAmount),
	.productQuota  (productQuota),
	.grandTotal    (grandTotal),
	
	// 連接傳輸暫存器
	.sendID        (sendID),
	.sendQA        (sendQA),
	.sendQT        (sendQT),
	
	.proc_done     (order_proc_done)  // 處理完成脈衝
);

// -------------------------------------------------------------
// 外設模組連接
// -------------------------------------------------------------

wire Pressed;
//wire [3:0] KEY;
keyboard_3x3 keyboard_3x3_u1(
	.clk    (clk),
	.rst_n  (rst_n),
	.column (column_3x3),
	.row    (row_3x3),
	.KEY    (KEY),        // 按鍵值
	.Pressed(Pressed) // 1 表示已按下
);

/*
button_3x3 button_3x3_u1(
	.clk    (clk),
	.column (column_3x3),
	.row    (row_3x3),
	.key    (KEY),        // 按鍵值
	.pressed(Pressed) // 1 表示已按下
);*/

seven_segment_display #(
	.MAX_RX_LEN(MAX_RX_LEN)
) seven_segment_display_1 (
	.clk          (clk),
	.rst_n        (rst_n),
	.rx_Data_reg  (rx_Data_reg), // 直接連接收到的 64 Bytes Payload
	.switch_8bit  (switch_8bit),
	.KEY          (KEY),
	.Pressed      (Pressed),
	.seg_data     (seg_data),
	.seg_com      (seg_com),
	.orderID      (orderID),       // 訂單 ID
	.orderQuantity(orderQuantity), // 訂購數量
	.bidAmount    (bidAmount),     // 出價金額
	.productQuota (productQuota),  // 商品配額
	.grandTotal   (grandTotal)     // 付款總額
);

LED_Matrix_8x8 LED_Matrix_8x8_u1(
	.clk          (clk),
	.rst_n        (rst_n),
	.switch_8bit  (switch_8bit),
	.KEY          (KEY),
	.Pressed      (Pressed),
	.DOUT          (DOUT),
	.orderID      (orderID),       // 訂單 ID
	.orderQuantity(orderQuantity), // 訂購數量
	.bidAmount    (bidAmount),     // 出價金額
	.productQuota (productQuota),  // 商品配額
	.grandTotal   (grandTotal)     // 付款總額
);

TFT_LCD TFT_LCD_u1(
	.clk          (clk),
	.rst_n        (rst_n),
	.switch_8bit  (switch_8bit),
	.KEY          (KEY),
	.Pressed      (Pressed),
	.SCL          (SCL),
	.SDA          (SDA),
	.RES          (RES),
	.DC           (DC),
	.CS           (CS),
	.BLK          (BLK),
	.orderID      (orderID),       // 訂單 ID
	.orderQuantity(orderQuantity), // 訂購數量
	.bidAmount    (bidAmount),     // 出價金額
	.productQuota (productQuota),  // 商品配額
	.grandTotal   (grandTotal)     // 付款總額
);

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