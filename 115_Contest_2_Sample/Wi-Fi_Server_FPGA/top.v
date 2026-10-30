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
	
	output wire ST7735S_SCL, // ST7735S 128x160 RGB TFT LCD 各接腳
	output wire ST7735S_SDA,
	output wire ST7735S_RES,
	output wire ST7735S_DC,
	output wire ST7735S_CS,
	output wire ST7735S_BLK,
	
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

assign USB2UART_WiFi_tx = WiFi_tx;
assign USB2UART_WiFi_rx = WiFi_rx;

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
	
	.seven_segment_chars  (seven_segment_chars),
	
	.previous_system_state(previous_system_state),
	.current_system_state (current_system_state),
	.next_system_state    (next_system_state),
	.system_timer         (system_timer),
	
	.coordinate_x         (coordinate_x),
	.coordinate_y         (coordinate_y),
	.coordinate_state     (coordinate_state),
	
	.send_en              (send_en),
	.send_target_id       (rx_link_id),
	.send_data_reg        (send_data_reg),
	.tx_busy              (tx_busy),
	.rx_link_id           (rx_link_id),
	.rx_data_len          (rx_data_len),
	.rx_data_reg          (rx_data_reg),
	.rx_done              (rx_done)
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
	.ADS1115_SCL    (ADS1115_SCL),
	.ADS1115_SDA    (ADS1115_SDA),
	.ADS1115_ALRT   (ADS1115_ALRT),
	.Joystick_SW    (Joystick_SW),
	
	.joystick_x     (joystick_x),
	.joystick_y     (joystick_y),
	.joystick_z     (joystick_z),
	
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
wire [3:0]      tx_link_id;
wire [8*64-1:0] send_data_reg;
wire            tx_busy;
wire [3:0]      rx_link_id;
wire [15:0]     rx_data_len;
wire [8*32-1:0] rx_data_reg;
wire            rx_done;
wire            WiFi_init_done;

WiFi_Controller #(
	.MAX_TX_LEN(MAX_TX_LEN),
	.MAX_RX_LEN(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) WiFi_Controller_u1 (
	.clk           (clk),
	.rst_n         (rst_n),
	.WiFi_rx       (WiFi_rx),
	.WiFi_tx       (WiFi_tx),
	.WiFi_rst_n    (WiFi_RST),
	.send_en       (send_en),
	.send_target_id(tx_link_id),
	.send_data_reg (send_data_reg),
	.tx_busy       (tx_busy),
	.rx_link_id    (rx_link_id),
	.rx_data_len   (rx_data_len),
	.rx_data_reg   (rx_data_reg),
	.rx_done       (rx_done),
	.init_done     (WiFi_init_done)
);

// 七段顯示器模組
wire [63:0] seven_segment_chars;
wire [7:0]  brightness_pwm = 8'd255;

Seven_Segment_Display Seven_Segment_Display_u1(
	.clk              (clk),
	.rst_n            (rst_n),
	.display_chars    (seven_segment_chars),
	.brightness_pwm   (brightness_pwm),
	.seven_segment_Seg(seven_segment_Seg),
	.seven_segment_Com(seven_segment_Com)
);

// WS2812B 8x8 LED 矩陣模組
WS2812B #(
	.CLK_FREQ(50_000_000)
) WS2812B_u1 (
	.clk                 (clk),
	.rst_n               (rst_n),
	.current_system_state(current_system_state),
	.system_timer         (system_timer),
	.coordinate_x        (coordinate_x),
	.coordinate_y        (coordinate_y),
	.coordinate_state    (coordinate_state),
	.WS2812B_8x8_DIN     (WS2812B_8x8_DIN),
	.WS2812B_8x8_DOUT    (WS2812B_8x8_DOUT)
);

// ST7735S TFT LCD 模組
TFT_LCD #(
	.MAX_CHARS(LCD_MAX_CHARS)
) TFT_LCD_u1 (
	.clk                  (clk),
	.rst_n                (rst_n),
	.KEY_2x2              (KEY_2x2),
	.KEY_Pressed_2x2      (KEY_Pressed_2x2),
	.previous_system_state(previous_system_state),
	.current_system_state (current_system_state),
	.next_system_state    (next_system_state),
	.system_timer         (system_timer),
	.coordinate_x         (coordinate_x),
	.coordinate_y         (coordinate_y),
	.coordinate_state     (coordinate_state),
	.SCL                  (ST7735S_SCL),
	.SDA                  (ST7735S_SDA),
	.RES                  (ST7735S_RES),
	.DC                   (ST7735S_DC),
	.CS                   (ST7735S_CS),
	.BLK                  (ST7735S_BLK)
);

endmodule