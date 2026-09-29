module image_rom (
	input  wire        clk,
	input  wire [7:0]  img_x,
	input  wire [7:0]  img_y,
	output reg  [15:0] pixel_rgb  // 輸出 16-bit RGB565 顏色
);

wire [15:0] rom_addr = (img_y * 128) + img_x; // 128x160 = 1024 個像素
reg  [15:0] rom_data [0:20480];

initial begin
	$readmemh("image.txt", rom_data); // 圖片 Hex 檔
end

always @(posedge clk) begin
	pixel_rgb <= rom_data[rom_addr];
end

endmodule