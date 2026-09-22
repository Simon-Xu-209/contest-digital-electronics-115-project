module TFT_LCD (
	input  wire clk,   // 50MHz
	input  wire rst_n, // Reset
	output wire SCL, SDA, RES, DC, CS, BLK // ST7735S 128x160 RGB TFT LCD 各接腳
);

parameter CLK_FREQ = 32'd50_000_000; // 1s 所需週期(50MHz)

parameter MAX_CHARS = 12; // 文字上限
parameter FONT_W    = 4'd8;  // 原始字寬
parameter FONT_H    = 5'd16; // 原始字高

parameter COLOR_RED   = 16'hF800; // 紅色 (RGB565)
parameter COLOR_GREEN = 16'h07E0; // 綠色 (RGB565)
parameter COLOR_BLUE  = 16'h001F; // 藍色 (RGB565)
parameter COLOR_WHITE = 16'hFFFF; // 白色 (RGB565)
parameter COLOR_BLACK = 16'h0000; // 黑色 (RGB565)

reg [7:0]  char_ascii [0:MAX_CHARS-1]; // 文字資料
reg [7:0]  char_x     [0:MAX_CHARS-1]; // 文字 x 座標
reg [7:0]  char_y     [0:MAX_CHARS-1]; // 文字 y 座標
reg [15:0] char_color [0:MAX_CHARS-1]; // 文字顏色
reg [3:0]  char_scale [0:MAX_CHARS-1]; // 文字大小 (輸入 0 表示隱藏)
reg [15:0] BACKGROUND_COLOR;

reg [2:0] current_display_state, next_display_state;
localparam display_CLEAR   = 3'd0,
			  display_INITIAL = 3'd1,
			  display_IDLE    = 3'd2,
			  display_DONE    = 3'd7;

reg [31:0] timer_cnt; // 計數器

//-------------螢幕內容狀態機--------------
always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_display_state <= display_CLEAR;
	end else begin
		current_display_state <= next_display_state;
	end
end

integer text_number;
always @(*) begin
	next_display_state = current_display_state;
	
	for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
		char_x[text_number]  <= 8'd32 * (text_number % 4) + 4;
		char_y[text_number]  <= 8'd53 * (text_number / 4) + 2;
	end
	
	case(current_display_state)
	
		display_CLEAR: begin
			next_display_state = display_INITIAL;
		end
	
		display_INITIAL: begin
			
		end
		
		display_IDLE: begin end
		
		display_DONE: begin end
		
		default:;
	endcase
	
	if (current_display_state == display_CLEAR) begin
		next_display_state = display_INITIAL;
	end
end

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		timer_cnt <= 32'd0;
		
		// 文字設定初始化
		for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
			char_ascii[text_number] <= "";
			char_color[text_number] <= COLOR_BLACK;
			char_scale[text_number] <= 4'd2;
		end
		
	end else begin
		case(current_display_state)
		
			display_CLEAR: begin
				BACKGROUND_COLOR = COLOR_BLACK;
				for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
					char_ascii[text_number] <= "";
					char_color[text_number] <= COLOR_WHITE;
					char_scale[text_number] <= 4'd0;
				end
			end
		
			display_INITIAL: begin
				for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
					char_ascii[text_number] <= "-";
					char_color[text_number] <= COLOR_WHITE;
					char_scale[text_number] <= 4'd1;
				end
			end

		endcase
	end
end



// =========================================================================
// 動態繪圖與 Hit Detection (點陣渲染)
// =========================================================================
reg [7:0]  active_ascii;
reg [15:0] active_color;
reg [3:0]  active_lx, active_ly;
reg        hit_text;

// --- 連接底層 Driver 訊號 ---
wire [7:0]  pixel_x, pixel_y;
reg  [15:0] render_pixel_color;

integer scan_i;
reg [7:0] char_w, char_h;

always @(*) begin
	active_ascii = " ";
	active_color = COLOR_BLACK;
	active_lx    = 4'd0;
	active_ly    = 4'd0;
	hit_text     = 1'b0;

	for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
		char_w = FONT_W * char_scale[scan_i];
		char_h = FONT_H * char_scale[scan_i];

		if (char_scale[scan_i] > 0 &&
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

// 混合輸出邏輯 (優先權：圖片 > 文字 > 背景)
always @(*) begin
	/*if (hit_icon) begin
		render_pixel_color = img_pixel_color; // 繪製圖片像素
	end else */if (hit_text && font_row_bits[4'd7 - active_lx]) begin
		render_pixel_color = active_color;    // 繪製文字像素
	end else begin
		render_pixel_color = BACKGROUND_COLOR;// 背景
	end
end

// 實體化 SPI 驅動模組
SPI_Driver_ST7735S  #(
	.OFFSET_X(8'd0), // 硬體 X 軸偏移
	.OFFSET_Y(8'd0)  // 硬體 Y 軸偏移
) SPI_Driver_ST7735S_u1 (
	.clk        (clk),
	.rst_n      (rst_n),
	.pixel_color(render_pixel_color),
	.brightness (8'd255), // TFT LCD 亮度 (0~255)
	.current_x  (pixel_x),
	.current_y  (pixel_y),
	.lcd_scl    (SCL),
	.lcd_sda    (SDA),
	.lcd_res    (RES),
	.lcd_dc     (DC),
	.lcd_cs     (CS),
	.lcd_blk    (BLK)
);

// --- 連接 Font ROM 模組 ---
wire [7:0] font_row_bits;
font_rom_32to126 u_font_rom (
	.ascii_char(active_ascii),
	.char_row  (active_ly),
	.row_pixels(font_row_bits)
);

// 假設要在螢幕座標 (X: 0, Y: 0) 的地方畫一張 128x160 的 Icon 圖片
localparam ICON_X = 8'd0;
localparam ICON_Y = 8'd0;
localparam ICON_W = 8'd128;
localparam ICON_H = 8'd128;

wire hit_icon = (pixel_x >= ICON_X && pixel_x < ICON_X + ICON_W) &&
					 (pixel_y >= ICON_Y && pixel_y < ICON_Y + ICON_H);

// 計算傳給圖片 ROM 的內部相對座標
wire [7:0]  img_rel_x = pixel_x - ICON_X;
wire [7:0]  img_rel_y = pixel_y - ICON_Y;
wire [15:0] img_pixel_color;

// 實體化圖片 ROM
    image_rom u_img_rom (
	.clk      (clk),
	.img_x    (img_rel_x),
	.img_y    (img_rel_y),
	.pixel_rgb(img_pixel_color)
);

endmodule