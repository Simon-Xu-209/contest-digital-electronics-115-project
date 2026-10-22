module Image_ROM_Bank #(
	parameter IMG_WIDTH  = 64,
	parameter IMG_HEIGHT = 64,
	parameter TOTAL_IMGS = 4
)(
	input  wire [1:0] img_index,  // 選擇第幾張圖 (0: Right, 1: Down, 2: Left, 3: Up)
	input  wire [5:0] rel_x,      // 相對 X (0~63)
	input  wire [5:0] rel_y,      // 相對 Y (0~63)
	output wire       pixel_on    // 輸出該像素點是否點亮
);

// 每張圖片佔用 64 * (64 / 8) = 512 Bytes
localparam BYTES_PER_IMG = IMG_HEIGHT * (IMG_WIDTH / 8);

// 宣告 4 張圖需要的總記憶體 (2048 Bytes)
reg [7:0] rom_data [0 : (BYTES_PER_IMG * TOTAL_IMGS) - 1];

initial begin
	// 建議將所有箭頭合併為單一十六進位文字檔，或個別讀取到不同位址段
	$readmemh("arrows_combined.txt", rom_data);
end

// 計算位元組位址 (Byte Address)
// 位址 = (圖片偏移) + (列偏移) + (欄位元組偏移)
wire [2:0]  byte_x     = rel_x[5:3];               // X / 8
wire [2:0]  bit_idx    = 3'd7 - rel_x[2:0];        // MSB First
wire [11:0] byte_addr  = (img_index * BYTES_PER_IMG) + (rel_y * (IMG_WIDTH/8)) + byte_x;

// 抓取對應 Byte 並判斷位元
wire [7:0] current_byte = rom_data[byte_addr];

// 若黑底白字 (0 為亮點) 則取反，反之亦然
assign pixel_on = ~current_byte[bit_idx];

endmodule