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
	output wire   RST_WiFi,
	output wire [15:0] seg_data,
	output wire [7:0]  seg_com,
	output wire DOUT,
	output SCL, SDA, RES, DC, CS, BLK, // 128x160 RGB TFT LCD
	output wire [3:0] KEY,
	output wire CONNECETED
);

assign Server_WiFi_txd = rx;

parameter MAX_RX_LEN = 32;
parameter MAX_TX_LEN = 64;

wire send_en;
wire [8*MAX_RX_LEN-1:0] send_data_reg;
wire tx_busy;
wire [3:0] rx_link_id;
wire [15:0] rx_data_len;
wire [8*MAX_RX_LEN-1:0] rx_data_reg;
wire rx_done;

wire resp_checking;
wire resp_ok;
wire got_ready;
wire resp_timeout;

WiFi_Controller #(
	.MAX_TX_LEN(MAX_TX_LEN),
	.MAX_RX_LEN(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
)(
	.clk  (clk),
	.rst_n(rst_n),
	
	// 硬體外設腳位
	.WiFi_rx    (rx),
	.WiFi_tx    (tx),
	.WiFi_rst_n (RST_WiFi),
	
	// 上層控制與發送暫存器介面
	.send_en       (send_en),
	.send_target_id(client_id),
	.send_data_reg (send_data_reg),
	.tx_busy       (tx_busy),
	
	// 上層接收暫存器介面
	.rx_link_id   (rx_link_id),
	.rx_data_len  (rx_data_len),
	.rx_data_reg  (rx_data_reg),
	.rx_done      (rx_done),
	
	// 狀態輸出
	.init_done(),
	
	.resp_checking(resp_checking),
	.resp_ok      (resp_ok),
	.got_ready    (got_ready),
	.resp_timeout (resp_timeout),
	
	.client_id    (client_id),     // 當前連線 Client ID
	.is_connected (is_connected),  // 連線狀態電位 (高位代表有連線)
	.conn_pulse   (conn_pulse),    // 連線成功單週期脈衝
	.client_closed(client_closed)
);

wire [3:0] client_id;
wire       is_connected;   // 改為連線狀態電位
wire       conn_pulse;     // 連線觸發脈衝
wire       client_closed;

assign CONNECETED = is_connected;

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
	.MAX_RX_LEN(MAX_RX_LEN),
	.MAX_TX_LEN(MAX_TX_LEN)
) Order_processor_u1 (
	.clk            (clk),
	.rst_n          (rst_n),
	.start_proc     (conn_pulse),       // Client 連線成功觸發發送
	.client_id_in   (client_id),        // 自動抓取剛連線的 Client ID
	.rx_Data_reg    (rx_data_reg),
	.rx_ready       (rx_done),
	.tx_busy        (tx_busy),          // Wi-Fi 模組 busy 訊號

	.switch_8bit    (switch_8bit),
	.KEY            (KEY),
	.Pressed        (Pressed),

	// 發送介面接往 WiFi_Controller
	.send_en        (send_en),
	.send_target_id (send_target_id),
	.send_data_reg  (send_data_reg),

	.orderID        (orderID),
	.orderQuantity  (orderQuantity),
	.bidAmount      (bidAmount),
	.productQuota   (productQuota),
	.grandTotal     (grandTotal),

	.sendID         (sendID),
	.sendQA         (sendQA),
	.sendQT         (sendQT),

	.proc_done      (order_proc_done),
	.resp_ok        (resp_ok)
);

// -------------------------------------------------------------
// 外設模組連接
// -------------------------------------------------------------

wire Pressed;
Keyboard_3x3 Keyboard_3x3_u1(
	.clk    (clk),
	.rst_n  (rst_n),
	.column (column_3x3),
	.row    (row_3x3),
	.KEY    (KEY),        // 按鍵值
	.Pressed(Pressed) // 1 表示已按下
);



seven_segment_display #(
	.MAX_RX_LEN(MAX_RX_LEN)
) seven_segment_display_1 (
	.clk          (clk),
	.rst_n        (rst_n),
	.rx_Data_reg  (rx_Data_reg), // 直接連接收到的 32 Bytes Payload
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
	.DOUT         (DOUT),
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



endmodule