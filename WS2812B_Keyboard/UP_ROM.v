module UP_ROM (
	input  wire [7:0]  row,      // Y 軸 (0 ~ 159)
	input  wire [3:0]  col_byte, // X 軸以 Byte 為單位 (0 ~ 15)
	output wire [7:0]  data_out, // 傳回該 Byte (8 個像素)
	
	// 搖桿輸入訊號
	input wire [15:0] joy_x,      // 16-bit ADC X 軸
	input wire [15:0] joy_y,      // 16-bit ADC Y 軸
	input wire        joy_z,      // 搖桿按鈕 (1 表示按下)
	input wire [15:0] WiFi_signal
);

// 160 行 * 128 bits (16 Bytes/行)
reg [127:0] arrow_up_rom [0:159];
reg [127:0] arrow_down_rom [0:159];
reg [127:0] arrow_right_rom [0:159];
reg [127:0] arrow_left_rom [0:159];

initial begin
	$readmemh("UP.txt", arrow_up_rom);
	$readmemh("DOWN.txt", arrow_down_rom);
	$readmemh("RIGHT.txt", arrow_right_rom);
	$readmemh("LEFT.txt", arrow_left_rom);
end

/*
// 讀出該行的 128-bit 資料，並依據 col_byte 切出對應的 8-bit Byte
wire [127:0] line_data = arrow_up_rom[row];
*/
// 註：若高低位元順序相反，可將 (15 - col_byte) 改為 col_byte
assign data_out = line_data[col_byte*8 +: 8];


reg [127:0] line_data;


always @(*) begin
	if (joy_y < 1000) begin
		line_data = arrow_up_rom[row];
	end else if (joy_y > 10000) begin
		line_data = arrow_down_rom[row];
	end
end

endmodule