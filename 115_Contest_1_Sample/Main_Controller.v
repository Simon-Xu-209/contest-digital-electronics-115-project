module Main_Controller (
	input wire clk,
	input wire rst_n,
	
	input wire [2:0] KEY_2x2,   // 2x2 無段式開關 按鍵數值
	input wire KEY_Pressed_2x2, // 2x2 無段式開關 偵測按下
	input wire [3:0] KEY_3x3,   // 3x3 無段式開關 按鍵數值
	input wire KEY_Pressed_3x3, // 3x3 無段式開關 偵測按下
	input wire [4:0] KEY_4x4,   // 4x4 無段式開關 按鍵數值
	input wire KEY_Pressed_4x4  // 4x4 無段式開關 偵測按下
);

endmodule