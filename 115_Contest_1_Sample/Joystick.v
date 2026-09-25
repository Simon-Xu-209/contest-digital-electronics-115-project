module Joystick (
	input  wire clk,
	input  wire rst_n,
	
	output wire ADS1115_SCL,  // ADS1115 ADC SCL
	inout  wire ADS1115_SDA,  // ADS1115 ADC SDA   (用於輸出搖桿數值)
	input  wire ADS1115_ALRT, // ADS1115 ADC ALERT (可不接)
	input  wire Joystick_SW   // 搖桿按鈕 (z 軸)
);

endmodule