module Generic_Image_ROM #(
	parameter IMG_WIDTH  = 64,  // 圖片寬度 (像素)
	parameter IMG_HEIGHT = 64,  // 圖片高度 (像素)
	parameter TOTAL_IMGS = 4,   // 圖片數量
	parameter FILE_PATH  = "arrows_combined.txt" // 文字檔檔名
)(
	input  wire [1:0] img_index,  // 選擇第幾張圖
	input  wire [6:0] rel_x,      // 相對 X 座標 (根據最大寬度調整位元數)
	input  wire [6:0] rel_y,      // 相對 Y 座標 (根據最大高度調整位元數)
	output wire       pixel_on    // 輸出該點是否亮起
);

// 自動計算總行數：高度 * 圖片數量
localparam TOTAL_ROWS = IMG_HEIGHT * TOTAL_IMGS;

// 宣告 ROM 暫存器陣列 (行寬維持 64-bit，容量自動延展)
reg [IMG_WIDTH-1 : 0] rom_data [0 : TOTAL_ROWS - 1];

initial begin
	$readmemh(FILE_PATH, rom_data);
end

// 通用位址計算公式
wire [11:0] row_addr = (img_index * IMG_HEIGHT) + rel_y;

// 通用點陣提取 (MSB First)
wire [IMG_WIDTH-1 : 0] current_row = rom_data[row_addr];
wire [6:0] bit_idx = (IMG_WIDTH - 1) - rel_x;

// 黑底白字取反輸出
assign pixel_on = ~current_row[bit_idx];

endmodule