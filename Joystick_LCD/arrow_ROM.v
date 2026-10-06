module arrow_ROM (
	input  wire [6:0]  row,      // Y 軸 (0 ~ 64)
	input  wire [2:0]  col_byte, // X 軸以 Byte 為單位 (0 ~ 7)
	output wire [7:0]  data_out, // 傳回該 Byte (8 個像素)
	
	// 搖桿輸入訊號
	input wire [15:0] joy_x,      // 16-bit ADC X 軸
	input wire [15:0] joy_y,      // 16-bit ADC Y 軸
	input wire        joy_z       // 搖桿按鈕 (1 表示按下)
);

// 64 行 * 64 bits (8 Bytes/行)
reg [63:0] arrow_up_rom [63:0];
reg [63:0] arrow_down_rom [63:0];
reg [63:0] arrow_right_rom [63:0];
reg [63:0] arrow_left_rom [0:63];

initial begin
	$readmemh("arrow_up.txt", arrow_up_rom);
end

assign data_out = line_data[col_byte*8 +: 8];

reg [64:0] line_data;


always @(*) begin
	if (joy_y < 1000) begin
		line_data = arrow_up_rom[row];
	end
end

endmodule