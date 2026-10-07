module TFT_LCD #(
	parameter MAX_CHARS = 16,        // 支援更多動態文字數 (放寬至 32 字)
	parameter FONT_W    = 4'd8,      // 原始字寬
	parameter FONT_H    = 5'd16      // 原始字高
)(
	input wire clk,
	input wire rst_n,
	
	input wire [7:0] switch_8bit,
	input wire [2:0] PB,  // 2x2
	input wire PB_Pressed,
	input wire [3:0] KEY, // 3x3
	input wire KEY_Pressed,
	
	// 搖桿輸入訊號
	input wire [15:0] joy_x,      // 16-bit ADC X 軸
	input wire [15:0] joy_y,      // 16-bit ADC Y 軸
	input wire        joy_z,      // 搖桿按鈕 (1 表示按下)
	input wire [15:0] WiFi_signal,
	
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// =========================================================================
// 1 秒時脈產生器 (以 50MHz 時脈為例：50,000,000 個週期 = 1 秒)
// =========================================================================
parameter CLK_FREQ = 32'd50_000_000; // 請根據實際開發板時脈調整 (如 50MHz)
reg [31:0] one_sec_cnt;
reg        one_sec_pulse;

reg [31:0] timer_cnt;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		one_sec_cnt   <= 0;
		one_sec_pulse <= 0;
	end else begin
		if (one_sec_cnt >= CLK_FREQ - 1) begin
			one_sec_cnt   <= 0;
			one_sec_pulse <= 1'b1; // 產生 1 個 clk 週期的觸發脈衝
		end else begin
			one_sec_cnt   <= one_sec_cnt + 1;
			one_sec_pulse <= 1'b0;
		end
	end
end

// =========================================================================
// 基本參數配置
// =========================================================================
parameter COLOR_RED   = 16'hF800; // 紅色 (RGB565)
parameter COLOR_GREEN = 16'h07E0; // 紅色 (RGB565)
parameter COLOR_BLUE  = 16'h001F; // 藍色 (RGB565)
parameter COLOR_WHITE = 16'hFFFF; // 白色 (RGB565)
parameter COLOR_BLACK = 16'h0000; // 背景色 (黑色)

// =========================================================================
// 動態文字物件屬性記憶體 (Text OAM)
// 0~3: 上方英文字母 (紅色)
// 4~8: 下方座標文字 (藍色，格式: "[", row, ",", col, "]")
// =========================================================================
reg [7:0]  char_ascii [0:MAX_CHARS-1]; 
reg [7:0]  char_x     [0:MAX_CHARS-1]; 
reg [7:0]  char_y     [0:MAX_CHARS-1]; 
reg [15:0] char_color [0:MAX_CHARS-1]; 
reg [1:0]  char_scale [0:MAX_CHARS-1]; 

// --- 狀態控制暫存器 ---
reg [2:0] char_group_cnt; // 0~6 組 (A~D, E~H, ..., YZ)
reg [3:0] coord_row;      // 0~8
reg [3:0] coord_col;      // 1~8



reg [2:0] current_sys_mode;
reg [2:0] next_sys_mode;
localparam SYS_IDLE        = 3'd0,
			  SYS_INITIAL     = 3'd1,
			  SYS_ARROW_RIGHT = 3'd2,
			  SYS_ARROW_DOWN  = 3'd3,
			  SYS_ARROW_LEFT  = 3'd4,
			  SYS_ARROW_UP    = 3'd5;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_sys_mode <= SYS_IDLE;
	end else begin
		current_sys_mode <= next_sys_mode;
	end
end

always @(*) begin
	next_sys_mode = current_sys_mode;
	case(current_sys_mode)
		SYS_IDLE: begin
			next_sys_mode = SYS_ARROW_RIGHT;
		end
		
		SYS_ARROW_RIGHT: begin
			if (img_move_x >= 64) begin
				next_sys_mode = SYS_ARROW_DOWN;
			end
		end
		
		SYS_ARROW_DOWN: begin
			if (img_move_y >= 96) begin
				next_sys_mode = SYS_ARROW_LEFT;
			end
		end
		
		SYS_ARROW_LEFT: begin
			if (img_move_x <= 0) begin
				next_sys_mode = SYS_ARROW_UP;
			end
		end
		
		SYS_ARROW_UP: begin
			if (img_move_y <= 0) begin
				next_sys_mode = SYS_ARROW_RIGHT;
			end
		end
		
		default:;
	endcase
	
	if ((switch_8bit[1:0] == 2'b11)) begin
		next_sys_mode = SYS_IDLE;
	end
end

// --- 每秒觸發：動態更新字母與座標 ---
integer i;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		char_group_cnt <= 0;
		coord_row      <= 0;
		coord_col      <= 1;

		// 預設縮放倍率，可自由調整
		for (i = 0; i < MAX_CHARS; i = i + 1) begin
			char_scale[i] <= 2'd2;
		end
		
	end else begin
		if (timer_cnt < CLK_FREQ/100) begin
			timer_cnt <= timer_cnt + 1;
		end else begin
			timer_cnt <= 32'd0;
		end
		
		case(current_sys_mode)
			SYS_IDLE: begin end
			
			SYS_INITIAL: begin end
			
			SYS_ARROW_RIGHT: begin
				if (timer_cnt >= CLK_FREQ/100) begin
					if (img_move_x < 64) begin
						img_move_x <= img_move_x + 1;
					end
				end
			end
			
			SYS_ARROW_DOWN: begin
				if (timer_cnt >= CLK_FREQ/100) begin
					if (img_move_y < 96) begin
						img_move_y <= img_move_y + 1;
					end
				end
			end
			
			SYS_ARROW_LEFT: begin
				if (timer_cnt >= CLK_FREQ/100) begin
					if (img_move_x > 0) begin
						img_move_x <= img_move_x - 1;
					end
				end
			end
			
			SYS_ARROW_UP: begin
				if (timer_cnt >= CLK_FREQ/100) begin
					if (img_move_y > 0) begin
						img_move_y <= img_move_y - 1;
					end
				end
			end
			
			default:;
		endcase
	end
end





// =========================================================================
// 動態繪圖與 Hit Detection (自動走訪與點陣圖渲染)
// =========================================================================
reg [7:0]  active_ascii;
reg [15:0] active_color;
reg [3:0]  active_lx, active_ly;
reg        hit_text;

integer scan_i;
reg [7:0] char_w, char_h;
reg [1:0] scale_factor;

always @(*) begin
	active_ascii = " ";
	active_color = COLOR_BLACK;
	active_lx    = 0;
	active_ly    = 0;
	hit_text     = 1'b0;

	for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
		scale_factor = char_scale[scan_i] + 1'b1;
		char_w       = FONT_W * scale_factor;
		char_h       = FONT_H * scale_factor;

		if (x_cnt >= char_x[scan_i] && x_cnt < (char_x[scan_i] + char_w) &&
		y_cnt >= char_y[scan_i] && y_cnt < (char_y[scan_i] + char_h)) begin
		
			hit_text     = 1'b1;
			active_ascii = char_ascii[scan_i];
			active_color = char_color[scan_i];
			
			active_lx    = (x_cnt - char_x[scan_i]) / scale_factor;
			active_ly    = (y_cnt - char_y[scan_i]) / scale_factor;
		end
	end
end

// --- ASCII 字元 ROM 定址與取點 ---
wire [7:0] char_idx = (active_ascii >= " " && active_ascii <= "~") ? (active_ascii - " ") : 8'd0;
wire [15:0] ascii_addr = (char_idx << 4) + active_ly;
wire [7:0]  ascii_bits = font_rom[ascii_addr];

wire ascii_pixel_on = hit_text && ascii_bits[4'd7 - active_lx];

// 根據 x_cnt 的低 3 位 (0~7) 判斷當前像素是 Byte 中的哪一位
// 註：若圖檔高低位顛倒，可自行將 4'd7 - x_cnt[2:0] 改為 x_cnt[2:0]
wire arrow_pixel_on = hit_img && ~arrow_rom_data[arrow_bit_idx];
reg hit_img;
always@(*)begin
	if (x_cnt >= img_move_x && x_cnt < (64 + img_move_x) &&
		y_cnt >= img_move_y && y_cnt < (64 + img_move_y)) begin

		hit_img     = 1'b1;
	end else begin
		hit_img     = 1'b0;
	end
end

reg [6:0] img_move_x;
reg [6:0] img_move_y;

wire [6:0] img_rel_x = x_cnt - img_move_x; // 相對 X 座標 (0~63)
wire [6:0] img_rel_y = y_cnt - img_move_y; // 相對 Y 座標 (0~63)

wire [7:0] arrow_rom_data;

// 將相對 X 座標轉換為 Byte 索引 (0~7)
wire [2:0] arrow_col_byte = 3'd7 - img_rel_x[5:3];
wire [2:0] arrow_bit_idx = 3'd7 - img_rel_x[2:0];

/*
wire [15:0] addr    = (char_idx << 4) + active_ly;
wire [7:0]  bits    = font_rom[addr];*/

wire show_arrow_mode = (switch_8bit[2] == 1'b1);

reg [15:0] pixel_color;
always @(*) begin
	if (show_arrow_mode) begin
		// --- 顯示箭頭 ROM 模式 ---
		if (arrow_pixel_on) begin
			pixel_color = COLOR_BLACK;
		end else begin
			pixel_color = COLOR_WHITE;
		end
	end else begin
		// --- 顯示原本的 ASCII 文字模式 ---
		if (ascii_pixel_on) begin
			pixel_color = active_color; // ASCII 前景色
		end else begin
			pixel_color = COLOR_BLACK;  // ASCII 背景色
		end
	end
end





// =========================================================================
// 控制與計數器
// =========================================================================
reg [3:0]  clk_div;
reg [31:0] delay_cnt;
reg [5:0]  state;
reg [7:0]  cmd_idx, x_cnt, y_cnt;
reg [7:0]  spi_data;
reg [3:0]  bit_cnt;
reg        p_idx;

// =========================================================================
// SPI 與主控狀態機
// =========================================================================
localparam STATE_HW_RESET  = 3'd0;
localparam STATE_INIT_CMD  = 3'd1;
localparam STATE_SEND_INIT = 3'd2;
localparam STATE_SET_AXIS  = 3'd3;
localparam STATE_SCAN_DRAW = 3'd4;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state     <= 0;
		delay_cnt <= 0;
		bit_cnt   <= 0;
		x_cnt     <= 0;
		y_cnt     <= 0;
		p_idx     <= 0;
		cmd_idx   <= 0;
		SCL       <= 1;
		SDA       <= 0;
		RES       <= 1;
		DC        <= 0;
		CS        <= 1;
		BLK       <= 0;
	end else begin
		BLK <= 1; CS <= 0;
		if (delay_cnt > 0) begin
			delay_cnt <= delay_cnt - 1;
		end else if (bit_cnt > 0) begin
			if (clk_div == 0) begin 
				SCL <= 0; 
				SDA <= spi_data[bit_cnt-1];
				clk_div <= 1;
			end else begin 
				SCL <= 1; 
				bit_cnt <= bit_cnt - 1;
				clk_div <= 0;
			end
		end else begin
			case (state)
				STATE_HW_RESET: begin RES <= 0; delay_cnt <= 1000000; state <= STATE_INIT_CMD; end
				STATE_INIT_CMD: begin RES <= 1; delay_cnt <= 1000000; state <= STATE_SEND_INIT; cmd_idx <= 0; end
				STATE_SEND_INIT: begin 
					case (cmd_idx)
						0: begin spi_data <= CMD_SWRESET;      DC <= 0; bit_cnt <= 8; cmd_idx <= 1; end
						1: begin spi_data <= CMD_SLPOUT;       DC <= 0; bit_cnt <= 8; cmd_idx <= 2; delay_cnt <= 500000; end
						2: begin spi_data <= CMD_COLMOD;       DC <= 0; bit_cnt <= 8; cmd_idx <= 3; end
						3: begin spi_data <= ARG_COLMOD_16BIT; DC <= 1; bit_cnt <= 8; cmd_idx <= 4; end
						4: begin spi_data <= CMD_MADCTL;       DC <= 0; bit_cnt <= 8; cmd_idx <= 5; end
						5: begin spi_data <= ARG_MADCTL_MX_MY; DC <= 1; bit_cnt <= 8; cmd_idx <= 6; end
						6: begin spi_data <= CMD_DISPON;       DC <= 0; bit_cnt <= 8; cmd_idx <= 7; end
						default: state <= STATE_SET_AXIS;
					endcase
				end
				STATE_SET_AXIS: begin 
					case (cmd_idx)
						7:  begin spi_data <= CMD_CASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 8;  end
						8:  begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 9;  end
						9:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= CMD_RASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin spi_data <= CMD_RAMWR;   DC <= 0; bit_cnt <= 8; state <= STATE_SCAN_DRAW; x_cnt <= 0; y_cnt <= 0; p_idx <= 0; end
					endcase
				end
				STATE_SCAN_DRAW: begin 
					spi_data <= p_idx ? pixel_color[7:0] : pixel_color[15:8];
					DC <= 1; bit_cnt <= 8;
					if (p_idx) begin
						if (x_cnt < ARG_X_END - ARG_X_OFFSET) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < ARG_Y_END - ARG_Y_OFFSET) y_cnt <= y_cnt + 1;
							else begin
								state <= STATE_SET_AXIS;
								cmd_idx <= 17;
								x_cnt <= 0;
								y_cnt <= 0;
							end
						end
					end
					p_idx <= ~p_idx;
				end
				default: state <= STATE_HW_RESET;
			endcase
		end
	end
end

// =============================================================================
// ST7735S 指令宣告與 ROM
// =============================================================================
parameter CMD_SWRESET   = 8'h01;
parameter CMD_SLPOUT    = 8'h11;
parameter CMD_DISPON    = 8'h29;
parameter CMD_CASET     = 8'h2A;
parameter CMD_RASET     = 8'h2B;
parameter CMD_RAMWR     = 8'h2C;
parameter CMD_MADCTL    = 8'h36;
parameter CMD_COLMOD    = 8'h3A;

parameter ARG_COLMOD_16BIT = 8'h05;
parameter ARG_MADCTL_MX_MY = 8'hC0;
parameter ARG_X_START      = 8'd0 + ARG_X_OFFSET;
parameter ARG_X_END        = 8'd127 + ARG_X_OFFSET;
parameter ARG_Y_START      = 8'd0 + ARG_Y_OFFSET;
parameter ARG_Y_END        = 8'd159 + ARG_Y_OFFSET;

parameter ARG_X_OFFSET     = 8'd0;   // X 軸偏移
parameter ARG_Y_OFFSET     = 8'd0;   // Y 軸偏移

reg [7:0] font_rom [0:1519];
initial begin
	$readmemh("ASCII_32to126.txt", font_rom);
end



// -------------------------------------------------------------------------
// 獨立的箭頭 ROM (UP_ROM) 介面與實例化
// -------------------------------------------------------------------------
arrow_ROM arrow_ROM_inst (
	.sys_state(current_sys_mode),

	.row      (img_rel_y),       // 垂直座標 (0~63)
	.col_byte (arrow_col_byte),  // 水平 Byte 索引 (0~7)
	.data_out (arrow_rom_data),
	.joy_x    (joystick_x),
	.joy_y    (joystick_y),
	.joy_z    (joystick_z)  
);

endmodule