// joystick_top.v
module Joystick_top (
	input  wire         clk,        // 開發板系統時脈
	input  wire         rst_n,      // 復位按鍵
    
	// 開發板上的模組接腳
	output wire SCL,    // ADC SCL      / J10_SCL
	inout  wire SDA,    // ADC SDA      / J10_SDA
	input  wire ALRT,   // ADC ALERT    / J10_ALRT
	input  wire SW,     // 搖桿按鈕      / J11_SW

	// 內部/外部輸出介面 (例如可接至 LED 或數碼管顯示)
	output wire [15:0] x_axis,
	output wire [15:0] y_axis,
	output wire        button_state,
	
	output wire DIN,
	output wire [15:0] seg_data,
	output wire [7:0] seg_com
);

// 實例化 ADC 控制器 (處理 X, Y 軸)
ads1115_control u_adc (
	.clk(clk),
	.rst_n(rst_n),
	.SCL(SCL),
	.SDA(SDA),
	.ALRT(ALRT),
	.joystick_x(x_axis),
	.joystick_y(y_axis)
);

// 實例化按鈕防彈跳 (處理 Z 軸)
joystick_button u_btn (
	.clk(clk),
	.rst_n(rst_n),
	.SW(SW),
	.sw_pressed(button_state)
);

Joystick_display u_7seg (
	.ck          (clk),            // 系統 50MHz 時脈
	.rst_n       (rst_n),          // 復位信號
	.x_axis      (x_axis),         // 來自 Joystick 的 x_axis [15:0]
	.y_axis      (y_axis),         // 來自 Joystick 的 y_axis [15:0]
	.btn_z       (button_state),   // 來自 Joystick 的 button_state (搖桿按鈕)
	.seg_data    (seg_data),       // 接至七段顯示器段選
	.seg_com     (seg_com)         // 接至七段顯示器位選
);

////////
WS2812 WS2812_u1(
	.clk(clk), // 50 MHz
	.rst_n(rst_n),
	.x_axis(x_axis),    // ADS1115 X軸
	.y_axis(y_axis),    // ADS1115 Y軸
	.stop(button_state),
	.DIN(DIN)           // J6_DIN
);

endmodule