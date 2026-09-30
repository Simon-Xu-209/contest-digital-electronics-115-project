// =========================================================================
// 模組名稱：font_rom_32to126
// 功能描述：ASCII (32~126) 8x16 點陣字型 ROM 讀取模組
// =========================================================================
module font_rom_32to126 (
	input  wire [7:0] ascii_char, // ASCII 字元碼
	input  wire [3:0] char_row,   // 字元內部的第幾列 (0~15)
	output wire [7:0] row_pixels  // 該列 8 個像素的點陣 Bit 資料
);

// 計算字元索引 (以空格 ' ' 為起點 0)
wire [7:0] char_idx = (ascii_char >= " " && ascii_char <= "~") ? (ascii_char - " ") : 8'd0;

// 定址：每個字元佔 16 Bytes
wire [11:0] rom_addr = (char_idx << 4) + char_row;

reg [7:0] font_mem [0:1519];

initial begin
	$readmemh("ASCII_32to126.txt", font_mem);
end

assign row_pixels = font_mem[rom_addr];

endmodule