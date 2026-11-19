module top (
	input  wire clk,           // CPLD/FPGA 50MHz
	input  wire rst_n,         // CPLD/FPGA Reset 按鍵 (Low Active)
	
	input  wire [7:0] switch_8bit, // 8Bit 指撥開關 (SW1 ~ SW8)
	
	output wire [1:0] Keyboard_column_2x2, // 2x2 無段式開關 行(Column)
	input  wire [1:0] Keyboard_row_2x2,    // 2x2 無段式開關 列(Row)
	output wire [2:0] Keyboard_column_3x3, // 3x3 無段式開關 行(Column)
	input  wire [2:0] Keyboard_row_3x3,    // 3x3 無段式開關 列(Row)
	input  wire [3:0] Keyboard_column_4x4, // 4x4 無段式開關 行(Column)
	output wire [3:0] Keyboard_row_4x4,    // 4x4 無段式開關 列(Row)
	
	output wire ADS1115_SCL,  // ADS1115 ADC SCL
	inout  wire ADS1115_SDA,  // ADS1115 ADC SDA   (用於輸出搖桿數值)
	input  wire ADS1115_ALRT, // ADS1115 ADC ALERT (可不接)
	input  wire Joystick_SW,  // 搖桿按鈕 (z 軸)
	
	output wire [7:0] seven_segment_Seg, // 七段顯示器資料腳位 (.gfedcba)
	output wire [7:0] seven_segment_Com, // 七段顯示器位數腳位 (Dig1 ~ Dig8)
	
	output wire WS2812B_8x8_DIN,  // WS2812B 8x8 BRG LED 矩陣 DIN
	input  wire WS2812B_8x8_DOUT, // WS2812B 8x8 BRG LED 矩陣 DOUT (末端溢位資料 可不接)
	
	output wire ST7735S_SCL, // ST7735S 128x160 RGB TFT LCD SPI 時脈
	output wire ST7735S_SDA, // ST7735S 128x160 RGB TFT LCD SPI 資料/指令輸入
	output wire ST7735S_RES, // ST7735S 128x160 RGB TFT LCD 硬體重設 (低電為 0 觸發)
	output wire ST7735S_DC,  // ST7735S 128x160 RGB TFT LCD 資料/指令選擇 (0:指令, 1:資料)
	output wire ST7735S_CS,  // ST7735S 128x160 RGB TFT LCD 螢幕晶片致能 (低電為 0 觸發)
	output wire ST7735S_BLK, // ST7735S 128x160 RGB TFT LCD 背光板 (可使用 PWM 調整亮度)
	
	output wire WiFi_tx,      // ESP8266 Wi-Fi 的 rx
	input  wire WiFi_rx,      // ESP8266 Wi-Fi 的 tx
	output wire WiFi_RST,     // ESP8266 Wi-Fi 的 RST
	
	output wire [2:0] KEY_2x2,   // 2x2 無段式開關 按鍵數值
	output wire KEY_Pressed_2x2, // 2x2 無段式開關 偵測按下
	output wire [3:0] KEY_3x3,   // 3x3 無段式開關 按鍵數值
	output wire KEY_Pressed_3x3, // 3x3 無段式開關 偵測按下
	
	output wire USB2UART_WiFi_tx, // USB to TTL 的 rx
	output wire USB2UART_WiFi_rx  // USB to TTL 的 rx
);

parameter CLK_FREQ      = 50_000_000; // 50MHz
parameter BAUD          = 115200;     // UART 鮑率
parameter MAX_TX_LEN    = 64;         // UART 最大可接收的 AT 指令/資料位元數
parameter MAX_RX_LEN    = 32;         // UART 最大可接收的資料位元數
parameter LCD_MAX_CHARS = 12;         // LCD 最多可顯示的 ASCII 碼數量

assign USB2UART_WiFi_tx = WiFi_tx; // 監控 Wi-Fi rx 資料
assign USB2UART_WiFi_rx = WiFi_rx; // 監控 Wi-Fi rx 資料

// 內部控制線路連線
wire [3:0] previous_system_state, current_system_state, next_system_state;
wire [31:0] system_timer;

wire joystick_z_pulse;
wire joystick_up_pulse;
wire joystick_down_pulse;
wire joystick_left_pulse;
wire joystick_right_pulse;

wire [2:0] coordinate_x, coordinate_y;
wire [1:0] coordinate_state;

wire [23:0] orderQuantity; // 訂購數量
wire [23:0] bidAmount;     // 出價金額
wire [23:0] productQuota;  // 商品配額
wire [47:0] grandTotal;    // 付款總額
wire [31:0] new_order_id_confirm;

// 專案主控制電路
Main_Controller #(
	.MAX_TX_LEN(MAX_TX_LEN),
	.MAX_RX_LEN(MAX_RX_LEN),
	.MAX_CHARS(LCD_MAX_CHARS)
) Main_Controller_u1 (
	.clk                  (clk),
	.rst_n                (rst_n),
	.switch_8bit          (switch_8bit),
	.KEY_2x2              (KEY_2x2),
	.KEY_Pressed_2x2      (KEY_Pressed_2x2),
	.KEY_3x3              (KEY_3x3),
	.KEY_Pressed_3x3      (KEY_Pressed_3x3),
	
	.joystick_z_pulse     (joystick_z_pulse),
	.joystick_up_pulse    (joystick_up_pulse),
	.joystick_down_pulse  (joystick_down_pulse),
	.joystick_right_pulse (joystick_right_pulse),
	.joystick_left_pulse  (joystick_left_pulse),
	
	.seven_segment_chars  (seven_segment_chars), // 七段顯示器顯示字串
	
	.previous_system_state(previous_system_state), // 前一刻系統狀態
	.current_system_state (current_system_state),  // 當前系統狀態
	.next_system_state    (next_system_state),     // 下一刻系統狀態
	.system_timer         (system_timer),          // 系統計時器
	
	.orderQuantity        (orderQuantity),
	.bidAmount            (bidAmount),
	.productQuota         (productQuota),
	.grandTotal           (grandTotal),
	.new_order_id_confirm (new_order_id_confirm),
	.new_orderQuantity_xx (new_orderQuantity_xx),
	.new_bidAmount_xx     (new_bidAmount_xx),
	
	.coordinate_x         (coordinate_x),
	.coordinate_y         (coordinate_y),
	.coordinate_state     (coordinate_state),
	
	.WiFi_send_types      (WiFi_send_types), // Wi-Fi 連續資料流種類選擇
	.start_send           (start_send),      // Wi-Fi 連續資料流開始發送旗標(高態觸發)
	.start_send_ack       (start_send_ack),  // Wi-Fi 連續資料流開始發送旗標重置旗標
	.WiFi_restart         (WiFi_restart)     // 強制重啟 Wi-Fi 初始化
);

// 鍵盤掃描模組
keyboard_2x2 Keyboard_2x2_u1 (
	.clk     (clk),
	.rst_n   (rst_n),
	.column  (Keyboard_column_2x2),
	.row     (Keyboard_row_2x2),
	.Pressed (KEY_Pressed_2x2),
	.KEY     (KEY_2x2)
);

keyboard_3x3 Keyboard_3x3_u1 (
	.clk     (clk),
	.rst_n   (rst_n),
	.column  (Keyboard_column_3x3),
	.row     (Keyboard_row_3x3),
	.Pressed (KEY_Pressed_3x3),
	.KEY     (KEY_3x3)
);

// 搖桿模組
wire [15:0] joystick_x;
wire [15:0] joystick_y;
wire        joystick_z;

Joystick Joystick_u1 (
	.clk            (clk),
	.rst_n          (rst_n),
	.ADS1115_SCL    (ADS1115_SCL),  // ADS1115 ADC SCL
	.ADS1115_SDA    (ADS1115_SDA),  // ADS1115 ADC SDA   (用於輸出搖桿數值)
	.ADS1115_ALRT   (ADS1115_ALRT), // ADS1115 ADC ALERT (可不接)
	.Joystick_SW    (Joystick_SW),  // 搖桿 z 軸按鍵
	
	.joystick_x     (joystick_x), // 搖桿 x 軸數值
	.joystick_y     (joystick_y), // 搖桿 y 軸數值
	.joystick_z     (joystick_z), // 搖桿 z 軸按鍵(按下為 1)
	
	.joystick_up    (joystick_up),
	.joystick_down  (joystick_down),
	.joystick_right (joystick_right),
	.joystick_left  (joystick_left),
	
	.joystick_z_pulse    (joystick_z_pulse),
	.joystick_up_pulse   (joystick_up_pulse),
	.joystick_down_pulse (joystick_down_pulse),
	.joystick_right_pulse(joystick_right_pulse),
	.joystick_left_pulse (joystick_left_pulse)
);

// ESP8266 Wi-Fi 模組
wire            send_en;
wire            send_en_ack;
wire [3:0]      tx_link_id;
wire [8*64-1:0] send_data_reg;
wire            tx_busy;
wire            send_done;
wire [3:0]      rx_link_id;
wire [15:0]     rx_data_len;
wire [8*32-1:0] rx_data_reg;
wire            rx_done;
wire            rx_data_done_ack;
wire            rx_data_reg_busy;
wire            WiFi_restart;
wire            WiFi_init_done;

WiFi_Controller #(
	.MAX_TX_LEN(MAX_TX_LEN),
	.MAX_RX_LEN(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) WiFi_Controller_u1 (
	.clk              (clk),
	.rst_n            (rst_n),
	.WiFi_rx          (WiFi_rx),
	.WiFi_tx          (WiFi_tx),
	.WiFi_rst_n       (WiFi_RST),
	.send_en          (send_en),          // Wi-Fi 資料發送旗標(高態觸發)
	.send_en_ack      (send_en_ack),      // Wi-Fi 資料發送旗標重置旗標
	.send_target_id   (tx_link_id),       // 目標連線 ID 暫存器
	.send_data_reg    (send_data_reg),    // 傳送資料暫存器
	.tx_busy          (tx_busy),          // 資料傳送中旗標
	.send_done        (send_done),        // 資料傳送完成脈衝
	.rx_link_id       (rx_link_id),       // 接收連線 ID 暫存器
	.rx_data_len      (rx_data_len),      // 接收資料位元組長度暫存器
	.rx_data_reg      (rx_data_reg),      // 接收資料暫存器
	.rx_data_done     (rx_data_done),     // 接收完成旗標(高態觸發)
	.rx_data_done_ack (rx_data_done_ack), // 接收完成旗標清除旗標
	.rx_data_reg_busy (rx_data_reg_busy), // 資料接收中旗標
	.WiFi_restart     (WiFi_restart),     // 強制重啟 Wi-Fi 初始化
	.init_done        (WiFi_init_done)    // Wi-Fi 結束初始化訊號
);

wire [3:0] WiFi_send_types;
wire start_send;
wire start_send_ack;

wire [7:0] new_orderQuantity_xx, new_bidAmount_xx;

WiFi_Protocol_Handler #(
	.MAX_TX_LEN(64),
	.MAX_RX_LEN(32)
) WiFi_Protocol_Handler_u1 (
	.clk                 (clk),
	.rst_n               (rst_n),
	
	// --- 來自 Main_Controller 的業務數據與控制 ---
	.previous_system_state(previous_system_state), // 前一刻系統狀態
	.current_system_state (current_system_state),  // 當前系統狀態
	.next_system_state    (next_system_state),     // 下一刻系統狀態
	/*
	.trigger_sequence_id (WiFi_send_types), // 部指定要執行的「傳送劇本編號」(對應第二個 Case 的狀態)
	.start_send          (start_send),      // Wi-Fi 連續資料流開始發送旗標(高態觸發)
	.start_send_ack      (start_send_ack),  // Wi-Fi 連續資料流開始發送旗標重置旗標
	*/
	.orderQuantity       (orderQuantity),        // 訂購數量
	.bidAmount           (bidAmount),            // 出價金額
	.productQuota        (productQuota),         // 商品配額
	.grandTotal          (grandTotal),           // 付款總額
	.new_orderQuantity_xx(new_orderQuantity_xx), // 第三訂單的新訂單數量
	.new_bidAmount_xx    (new_bidAmount_xx),     // 第三訂單的新出價金額
	
	// --- 介面至 WiFi_Controller ---
	.send_en             (send_en),        // Wi-Fi 資料發送旗標(高態觸發)
	.send_en_ack         (send_en_ack),    // Wi-Fi 資料發送旗標重置旗標
	.send_target_id      (send_target_id), // 目標連線 ID 暫存器
	.send_data_reg       (send_data_reg),  // 傳送資料暫存器
	.tx_busy             (tx_busy),        // 資料傳送中旗標
	.send_done           (send_done),      // 資料傳送完成脈衝
	
	// --- 來自 WiFi_Controller 的接收資料 ---
	.rx_link_id          (rx_link_id),       // 接收連線 ID 暫存器
	.rx_data_len         (rx_data_len),      // 接收資料位元組長度暫存器
	.rx_data_reg         (rx_data_reg),      // 接收資料暫存器
	.rx_data_done        (rx_data_done),     // 接收完成旗標(高態觸發)
	.rx_data_done_ack    (rx_data_done_ack), // 接收完成旗標清除旗標
	
	// --- 輸出給 Main_Controller 的解析結果 ---
	.new_order_id_confirm(new_order_id_confirm),
	.connect_done_pulse  ()
);



// 七段顯示器模組
wire [63:0] seven_segment_chars;
wire [7:0]  brightness_pwm = 8'd255;

Seven_Segment_Display Seven_Segment_Display_u1(
	.clk              (clk),
	.rst_n            (rst_n),
	.display_chars    (seven_segment_chars), // 七段顯示器顯示字串
	.brightness_pwm   (brightness_pwm),      // 七段顯示器 PWM 亮度
	.seven_segment_Seg(seven_segment_Seg),   // 七段顯示器資料腳位 (.gfedcba)
	.seven_segment_Com(seven_segment_Com)    // 七段顯示器位數腳位 (Dig1 ~ Dig8)
);

// WS2812B 8x8 LED 矩陣模組
WS2812B #(
	.CLK_FREQ(50_000_000)
) WS2812B_u1 (
	.clk                  (clk),
	.rst_n                (rst_n),
	.previous_system_state(previous_system_state), // 前一刻系統狀態
	.current_system_state (current_system_state),  // 當前系統狀態
	.next_system_state    (next_system_state),     // 下一刻系統狀態
	.system_timer         (system_timer),          // 系統計時器
	.coordinate_x         (coordinate_x),
	.coordinate_y         (coordinate_y),
	.coordinate_state     (coordinate_state),
	.orderQuantity        (orderQuantity),
	.bidAmount            (bidAmount),
	.productQuota         (productQuota),
	.grandTotal           (grandTotal),
	.WS2812B_8x8_DIN      (WS2812B_8x8_DIN), // WS2812B 8x8 BRG LED 矩陣 DIN
	.WS2812B_8x8_DOUT     (WS2812B_8x8_DOUT) // WS2812B 8x8 BRG LED 矩陣 DOUT (末端溢位資料 可不接)
);

// ST7735S TFT LCD 模組
TFT_LCD #(
	.MAX_CHARS(LCD_MAX_CHARS)
) TFT_LCD_u1 (
	.clk                  (clk),
	.rst_n                (rst_n),
	.KEY_2x2              (KEY_2x2),
	.KEY_Pressed_2x2      (KEY_Pressed_2x2),
	.previous_system_state(previous_system_state), // 前一刻系統狀態
	.current_system_state (current_system_state),  // 當前系統狀態
	.next_system_state    (next_system_state),     // 下一刻系統狀態
	.system_timer         (system_timer),          // 系統計時器
	.orderQuantity        (orderQuantity),
	.bidAmount            (bidAmount),
	.productQuota         (productQuota),
	.grandTotal           (grandTotal),
	.new_order_id_confirm (new_order_id_confirm),
	.coordinate_x         (coordinate_x),
	.coordinate_y         (coordinate_y),
	.coordinate_state     (coordinate_state),
	.SCL                  (ST7735S_SCL), // ST7735S 128x160 RGB TFT LCD SPI 時脈
	.SDA                  (ST7735S_SDA), // ST7735S 128x160 RGB TFT LCD SPI 資料/指令輸入
	.RES                  (ST7735S_RES), // ST7735S 128x160 RGB TFT LCD 硬體重設 (低電為 0 觸發)
	.DC                   (ST7735S_DC),  // ST7735S 128x160 RGB TFT LCD 資料/指令選擇 (0:指令, 1:資料)
	.CS                   (ST7735S_CS),  // ST7735S 128x160 RGB TFT LCD 螢幕晶片致能 (低電為 0 觸發)
	.BLK                  (ST7735S_BLK)  // ST7735S 128x160 RGB TFT LCD 背光板 (可使用 PWM 調整亮度)
);

endmodule