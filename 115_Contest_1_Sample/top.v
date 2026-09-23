module top (
	input  wire clk,           // CPLD/FPGA 50MHz
	input  wire rst_n,         // CPLD/FPGA Reset 按鍵 (Low Active)
	
	input  [7:0]  switch_8bit, // 8Bit 指撥開關 (SW1 ~ SW8)
	
	input  wire [1:0]  Keyboard_column_2x2, // 2x2 無段式開關 行(Column)
	output wire [1:0]  Keyboard_row_2x2,    // 2x2 無段式開關 列(Row)
	input  wire [2:0]  Keyboard_column_3x3, // 3x3 無段式開關 行(Column)
	output wire [2:0]  Keyboard_row_3x3,    // 3x3 無段式開關 列(Row)
	input  wire [3:0]  Keyboard_column_4x4, // 4x4 無段式開關 行(Column)
	output wire [3:0]  Keyboard_row_4x4,    // 4x4 無段式開關 列(Row)
	
	output wire ADS1115_SCL,  // ADS1115 ADC SCL
	inout  wire ADS1115_SDA,  // ADS1115 ADC SDA   (用於輸出搖桿數值)
	input  wire ADS1115_ALRT, // ADS1115 ADC ALERT (可不接)
	input  wire Joystick_SW,  // 搖桿按鈕 (z 軸)
	
	/*
	output wire MPU6050_SCL, // MPU-6050 六軸感測器 SCL
	inout  wire MPU6050_SDA, // MPU-6050 六軸感測器 SDA
	output wire MPU6050_XDA, // MPU-6050 六軸感測器 XDA
	output wire MPU6050_XCL, // MPU-6050 六軸感測器 XCL
	output wire MPU6050_AD0, // MPU-6050 六軸感測器 AD0
	input  wire MPU6050_INT, // MPU-6050 六軸感測器 INT
	
	input  wire        OV2640_PCLK,  // OV2640 鏡頭模組 PCLK (輸出像素時脈)
	input  wire        OV2640_HREF,  // OV2640 鏡頭模組 HREF
	input  wire        OV2640_VSYNC, // OV2640 鏡頭模組 VSYNC
	input  wire [9:0]  OV2640_Y,     // OV2640 鏡頭模組 J2_Y9 ~ J2_Y2 (8-bit 資料，對應 D7~D0)
	inout  wire        OV2640_SIO_D, // OV2640 鏡頭模組 SCCB Data
	output wire        OV2640_SIO_C, // OV2640 鏡頭模組 SCCB Clock
	output wire        OV2640_RESET, // OV2640 鏡頭模組 Reset
	output wire        OV2640_PWDN,  // OV2640 鏡頭模組 Power Down
	output wire        OV2640_XCLK,  // OV2640 鏡頭模組 XCLK (主時脈)
	*/
	
	output wire [7:0] seven_segment_Seg, // 七段顯示器資料腳位 (.gfedcba)
	output wire [7:0] seven_segment_Com, // 七段顯示器位數腳位 (Dig1 ~ Dig8)
	
	output wire WS2812_8x8_DIN,  // WS2812 8x8 BRG LED 矩陣 DOUT (末端溢位資料 可不接)
	output wire WS2812_8x8_DOUT, // WS2812 8x8 BRG LED 矩陣 DIN
	
	output wire ST7735S_SCL, // ST7735S 128x160 RGB TFT LCD 各接腳
	output wire ST7735S_SDA,
	output wire ST7735S_RES,
	output wire ST7735S_DC,
	output wire ST7735S_CS,
	output wire ST7735S_BLK,
	
	output wire WiFi_tx,      // ESP8266 Wi-Fi 的 rx
	input  wire WiFi_rx,      // ESP8266 Wi-Fi 的 tx
	output wire WiFi_RST,     // ESP8266 Wi-Fi 的 RST
	
	//===================================================
	// Debug 用
	//===================================================
	output wire [2:0] KEY_2x2,   // 2x2 無段式開關 按鍵數值
	output wire KEY_Pressed_2x2, // 2x2 無段式開關 偵測按下
	output wire [3:0] KEY_3x3,   // 3x3 無段式開關 按鍵數值
	output wire KEY_Pressed_3x3, // 3x3 無段式開關 偵測按下
	output wire [4:0] KEY_4x4,   // 4x4 無段式開關 按鍵數值
	output wire KEY_Pressed_4x4, // 4x4 無段式開關 偵測按下
	
	output wire USB2UART_WiFi_tx, // USB to TTL 的 rx
	output wire USB2UART_WiFi_rx  // USB to TTL 的 rx
);

parameter CLK_FREQ        = 50_000_000; // 50MHz
parameter BAUD            = 115200;     // UART 鮑率
parameter MAX_COMMAND_LEN = 32;         // UART 最大可接收/傳送的 AT 指令位元數
parameter MAX_DATA_LEN    = 32;         // UART 最大可接收/傳送的資料位元數

// 可透過串口調適助手檢查 ESP8266 Wi-Fi 模組傳送/接收的資料
assign USB2UART_WiFi_tx = WiFi_tx;
assign USB2UART_WiFi_rx = WiFi_rx;

Main_Controller Main_Controller_u1 (
	.clk             (clk),             // 50MHz
	.rst_n           (rst_n),           // Reset
	.KEY_2x2         (KEY_2x2),         // 2x2 無段式開關 按鍵數值
	.KEY_Pressed_2x2 (KEY_Pressed_2x2), // 2x2 無段式開關 偵測按下
	.KEY_3x3         (KEY_3x3),         // 3x3 無段式開關 按鍵數值
	.KEY_Pressed_3x3 (KEY_Pressed_3x3), // 3x3 無段式開關 偵測按下
	.KEY_4x4         (KEY_4x4),         // 4x4 無段式開關 按鍵數值
	.KEY_Pressed_4x4 (KEY_Pressed_4x4)  // 4x4 無段式開關 偵測按下
);

Keyboard_3x3 Keyboard_3x3_u1 (
	.clk     (clk),                 // 50MHz
	.rst_n   (rst_n),               // Reset
	.column  (Keyboard_column_3x3), // 3x3 無段式開關 行(Column)
	.row     (Keyboard_row_3x3),    // 3x3 無段式開關 列(Row)
	.Pressed (KEY_Pressed_3x3),     // 偵測是否按下按鍵
	.KEY     (KEY_3x3)              // 輸出按鍵值
);

// 補全控制 Wi-Fi 模組所需的內部線路 (Wire)
wire            send_en = 1'b0;
wire [8*64-1:0] send_data_reg = 0;
wire            tx_busy;
wire [3:0]      rx_link_id;
wire [15:0]     rx_data_len;
wire [8*32-1:0] rx_data_reg;
wire            rx_done;
wire            WiFi_init_done;

// ESP8266 Wi-Fi 主控制器
WiFi_Controller #(
	.MAX_CMD_LEN(64),
	.MAX_RX_LEN(32),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) WiFi_Controller_u1 (
	.clk           (clk),
	.rst_n         (rst_n),
	
	// 腳位分配
	.WiFi_rx       (WiFi_rx),
	.WiFi_tx       (WiFi_tx),
	.WiFi_rst_n    (WiFi_RST),
	
	// 發送介面
	.send_en       (send_en),
	.send_target_id(rx_link_id),    // 目標 Clinet 連線 ID 暫存器
	.send_data_reg (send_data_reg), // 傳送指令/資料暫存器
	.tx_busy       (tx_busy),       // 指令/資料傳送中旗標
	
	// 接收介面
	.rx_link_id    (rx_link_id),   // Client 連線 ID 暫存器
	.rx_data_len   (rx_data_len),  // 接收資料長度暫存器 (Byte)
	.rx_data_reg   (rx_data_reg),  // 接收資料暫存器
	.rx_done       (rx_done),      // 資料接收完成脈衝
	
	.init_done     (WiFi_init_done) // ESP8266 Wi-Fi 初始化完畢
);

// ST7735S 128x160 RGB TFT LCD 模組
TFT_LCD TFT_LCD_u1 (
	.clk  (clk),
	.rst_n(rst_n),
	.SCL  (ST7735S_SCL),
	.SDA  (ST7735S_SDA),
	.RES  (ST7735S_RES),
	.DC   (ST7735S_DC),
	.CS   (ST7735S_CS),
	.BLK  (ST7735S_BLK)
);

endmodule