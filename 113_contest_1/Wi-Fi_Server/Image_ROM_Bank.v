module Image_ROM_Bank #(
	parameter IMG_WIDTH  = 42,  // 實際有效寬度
	parameter IMG_HEIGHT = 53,  // 實際有效高度
	parameter TOTAL_IMGS = 19   // 總圖數
)(
	input  wire [4:0] img_index,  
	input  wire [7:0] rel_x,      // 相對 X (0 ~ 41)
	input  wire [5:0] rel_y,      // 相對 Y (0 ~ 52)
	output wire       pixel_on    
);

// 關鍵：對應 .txt 檔每行固定 16 個 Bytes 的實體排版
localparam BYTES_PER_ROW  = 16; 
localparam BYTES_PER_IMG  = BYTES_PER_ROW * IMG_HEIGHT; // 16 * 53 = 848 Bytes

reg [7:0] rom_data [0 : (BYTES_PER_IMG * TOTAL_IMGS) - 1];

initial begin
	$readmemh("image_combined.txt", rom_data);
end

// 位址計算：強制每行跳 16 Bytes
wire [15:0] row_base_addr = (img_index * BYTES_PER_IMG) + (rel_y * BYTES_PER_ROW);
wire [3:0]  byte_offset   = rel_x / 8;
wire [2:0]  bit_offset    = 3'd7 - (rel_x % 8); // MSB First

wire [15:0] target_addr   = row_base_addr + byte_offset;
wire [7:0]  current_byte  = rom_data[target_addr];

// 濾掉超過 42 像素寬的填充雜訊
assign pixel_on = (rel_x < IMG_WIDTH) ? current_byte[bit_offset] : 1'b0;

endmodule