// =========================================================================
// 模組名稱：TFT_LCD
// 功能描述：ST7735S 繪圖 API 模組，開放 Command Bus 接收動態文字與指令
// =========================================================================
module TFT_LCD #(
	parameter MAX_CHARS = 16,        // 支援更多動態文字數 (放寬至 32 字)
	parameter FONT_W    = 4'd8,      // 原始字寬
	parameter FONT_H    = 5'd16      // 原始字高
)(
	input  wire        clk,          // 50MHz
	input  wire        rst_n,        // Reset (Low Active)

	// --------------------------------------------------------------------
	// Command Bus (指令介面 API)
	// --------------------------------------------------------------------
	input  wire        cmd_valid,      // 指令觸發脈衝 (1 clock)
	input  wire [3:0]  cmd_type,       // 0: 設定背景色/全清 ; 1: 更新單一字元
	input  wire [7:0]  cmd_char_index, // 目標字元暫存器編號 (0 ~ MAX_CHARS-1)
	input  wire [7:0]  cmd_ascii,      // ASCII 碼內容
	input  wire [7:0]  cmd_x,          // X 座標 (0~127)
	input  wire [7:0]  cmd_y,          // Y 座標 (0~159)
	input  wire [15:0] cmd_color,      // 文字/背景顏色 (RGB565)
	input  wire [3:0]  cmd_scale,      // 放大倍率 (0: 隱藏)

	// ST7735S 實體腳位
	output wire SCL, SDA, RES, DC, CS, BLK
);

// 色彩定義
localparam COLOR_BLACK = 16'h0000;

// UI 動態記憶體陣列
reg [7:0]  char_ascii [0:MAX_CHARS-1];
reg [7:0]  char_x     [0:MAX_CHARS-1];
reg [7:0]  char_y     [0:MAX_CHARS-1];
reg [15:0] char_color [0:MAX_CHARS-1];
reg [3:0]  char_scale [0:MAX_CHARS-1];
reg [15:0] background_color;

integer idx;

// --------------------------------------------------------------------
// Command Decoder (指令解碼器)
// --------------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		background_color <= COLOR_BLACK;
		for (idx = 0; idx < MAX_CHARS; idx = idx + 1) begin
			char_ascii[idx] <= " ";
			char_x[idx]     <= 8'd0;
			char_y[idx]     <= 8'd0;
			char_color[idx] <= COLOR_BLACK;
			char_scale[idx] <= 4'd0; // 預設全部隱藏
		end
	end else if (cmd_valid) begin
		case (cmd_type)
			// CMD 0: 設定背景色，並將所有文字暫存器關閉 (隱藏)
			4'd0: begin
				background_color <= cmd_color;
				for (idx = 0; idx < MAX_CHARS; idx = idx + 1) begin
					char_scale[idx] <= 4'd0;
				end
			end

			// CMD 1: 更新指定編號的文字屬性
			4'd1: begin
				if (cmd_char_index < MAX_CHARS) begin
					char_ascii[cmd_char_index] <= cmd_ascii;
					char_x[cmd_char_index]     <= cmd_x;
					char_y[cmd_char_index]     <= cmd_y;
					char_color[cmd_char_index] <= cmd_color;
					char_scale[cmd_char_index] <= cmd_scale;
					end
				end
			default: ;
		endcase
	end
end

// --------------------------------------------------------------------
// 點陣渲染與掃描引擎
// --------------------------------------------------------------------
reg [7:0]  active_ascii;
reg [15:0] active_color;
reg [3:0]  active_lx, active_ly;
reg        hit_text;

wire [7:0] pixel_x, pixel_y;
reg [15:0] render_pixel_color;

integer scan_i;
reg [7:0] char_w, char_h;

// 判斷當前像素落在哪個文字塊中
always @(*) begin
	active_ascii = " ";
	active_color = COLOR_BLACK;
	active_lx    = 4'd0;
	active_ly    = 4'd0;
	hit_text     = 1'b0;

	for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
		char_w = FONT_W * char_scale[scan_i];
		char_h = FONT_H * char_scale[scan_i];

		if (char_scale[scan_i] > 4'd0 &&
		pixel_x >= char_x[scan_i] && pixel_x < (char_x[scan_i] + char_w) &&
		pixel_y >= char_y[scan_i] && pixel_y < (char_y[scan_i] + char_h)) begin

			hit_text     = 1'b1;
			active_ascii = char_ascii[scan_i];
			active_color = char_color[scan_i];
			active_lx    = (pixel_x - char_x[scan_i]) / char_scale[scan_i];
			active_ly    = (pixel_y - char_y[scan_i]) / char_scale[scan_i];
		end
	end
end

// 像素輸出邏輯
wire [7:0] font_row_bits;
always @(*) begin
	if (hit_text && font_row_bits[4'd7 - active_lx]) begin
		render_pixel_color = active_color;
	end else begin
		render_pixel_color = background_color;
	end
end

// 實體化驅動器與 ROM
SPI_Driver_ST7735S #(
	.OFFSET_X(8'd0),
	.OFFSET_Y(8'd0)
) SPI_Driver_ST7735S_u1 (
	.clk        (clk),
	.rst_n      (rst_n),
	.pixel_color(render_pixel_color),
	.brightness (8'd255),
	.current_x  (pixel_x),
	.current_y  (pixel_y),
	.lcd_scl    (SCL),
	.lcd_sda    (SDA),
	.lcd_res    (RES),
	.lcd_dc     (DC),
	.lcd_cs     (CS),
	.lcd_blk    (BLK)
);

font_rom_32to126 u_font_rom (
	.ascii_char(active_ascii),
	.char_row  (active_ly),
	.row_pixels(font_row_bits)
);

endmodule