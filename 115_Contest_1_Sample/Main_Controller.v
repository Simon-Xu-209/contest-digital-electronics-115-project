module Main_Controller (
	input  wire clk,
	input  wire rst_n,
	
	input  wire [7:0] switch_8bit, // 8Bit 指撥開關 (SW1 ~ SW8)
	
	input  wire [2:0] KEY_2x2,         // 2x2 無段式開關 按鍵數值
	input  wire       KEY_Pressed_2x2, // 2x2 無段式開關 偵測按下
	
	// 搖桿輸入訊號
	input  wire [15:0] joy_x,      // 16-bit ADC X 軸
	input  wire [15:0] joy_y,      // 16-bit ADC Y 軸
	input  wire        joy_z,      // 搖桿按鈕 (舊版 joystick_button 輸出: 1 表示按下)
	
	output wire [63:0] seven_segment_chars, // 8 個 ASCII 字元
	
	output reg           ws_draw_en,
	output wire [1535:0] ws_led_grb_data
);

// ------------------------------------------------------------------------
// Z 軸按鈕緣觸發偵測 (上升緣：0 -> 1，對應舊版 sw_pressed 觸發)
// ------------------------------------------------------------------------
reg joy_z_d1;
reg display_mode; // 0: 顯示 X 軸, 1: 顯示 Y 軸

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		joy_z_d1     <= 1'b0;
		display_mode <= 1'b0; // 預設顯示 X 軸
	end else begin
		joy_z_d1 <= joy_z;
		// 偵測按鈕按下的上升緣 (舊版 joystick_button 輸出高電位表示按下)
		if (!joy_z_d1 && joy_z) begin
			display_mode <= ~display_mode;
		end
	end
end

// ------------------------------------------------------------------------
// 16-bit 二進位轉 5 位數 BCD (參考舊版 Double Dabble 演算法)
// ------------------------------------------------------------------------
function [19:0] bin16_to_bcd;
	input [15:0] bin;
	integer i;
	reg [19:0] bcd;
	begin
		bcd = 20'b0;
		for (i = 15; i >= 0; i = i - 1) begin
			if (bcd[3:0]   >= 5) bcd[3:0]   = bcd[3:0]   + 3;
			if (bcd[7:4]   >= 5) bcd[7:4]   = bcd[7:4]   + 3;
			if (bcd[11:8]  >= 5) bcd[11:8]  = bcd[11:8]  + 3;
			if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
			if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 3;
			bcd = {bcd[18:0], bin[i]};
		end
		bin16_to_bcd = bcd;
	end
endfunction

// 選擇顯示目標數值並計算 BCD
wire [15:0] current_val = (display_mode == 1'b0) ? joy_x : joy_y;
wire [19:0] bcd_val     = bin16_to_bcd(current_val);

// ------------------------------------------------------------------------
// 組合 8 位數 ASCII 碼 (傳送給 Seven_Segment_Display)
// ------------------------------------------------------------------------
// 顯示格式：[X/Y] [空白] [萬] [千] [百] [十] [個] [空白]
assign seven_segment_chars = {
	(display_mode == 1'b0) ? "X" : "Y",  // Dig8: 顯示 'X' 或 'Y'
	8'h20,                               // Dig7: 空白 ' '
	{4'h3, bcd_val[19:16]},              // Dig6: 萬位數字 ASCII (0x30 + BCD)
	{4'h3, bcd_val[15:12]},              // Dig5: 千位數字 ASCII
	{4'h3, bcd_val[11:8]},               // Dig4: 百位數字 ASCII
	{4'h3, bcd_val[7:4]},                // Dig3: 十位數字 ASCII
	{4'h3, bcd_val[3:0]},                // Dig2: 個位數字 ASCII
	8'h20                                // Dig1: 空白 ' '
};

// ------------------------------------------------------------------------
// WS2812B 邏輯
// ------------------------------------------------------------------------
reg [1535:0] frame_buffer;
assign ws_led_grb_data = frame_buffer;

localparam COLOR_OFF   = 24'h00_00_00;
localparam COLOR_RED   = 24'h00_1F_00;
localparam COLOR_GREEN = 24'h1F_00_00;
localparam COLOR_BLUE  = 24'h00_00_1F;

reg [7:0] switch_d1;
reg       key_2x2_d1;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		switch_d1    <= 8'd0;
		key_2x2_d1   <= 1'b0;
		ws_draw_en   <= 1'b0;
		frame_buffer <= {1536{1'b0}};
	end else begin
		switch_d1  <= switch_8bit;
		key_2x2_d1 <= KEY_Pressed_2x2;
		
		if ((switch_8bit != switch_d1) || (KEY_Pressed_2x2 && !key_2x2_d1)) begin
			ws_draw_en <= 1'b1;
		end else begin
			ws_draw_en <= 1'b0;
		end

		case (switch_8bit[1:0])
			2'b00: frame_buffer <= {64{COLOR_OFF}};
			2'b01: frame_buffer <= {
					COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF,
					COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED,
					COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF,
					COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED,
					COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF,
					COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED,
					COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF,
					COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED, COLOR_OFF, COLOR_RED
				};
			2'b10:   frame_buffer <= {64{COLOR_GREEN}};
			default: frame_buffer <= {64{COLOR_BLUE}};
		endcase
	end
end

endmodule