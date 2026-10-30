module TFT_LCD #(
	parameter MAX_CHARS = 16,        // 支援更多動態文字數 (放寬至 32 字)
	parameter FONT_W    = 4'd8,      // 原始字寬
	parameter FONT_H    = 5'd16      // 原始字高
)(
	input wire clk,
	input wire rst_n,
	input wire [7:0]  switch_8bit,
	input wire [2:0]  KEY_2x2,
	input wire        KEY_Pressed_2x2,  // 2x2
	input wire [3:0]  KEY_3x3,
	input wire        KEY_Pressed_3x3,
	input wire [4:0]  KEY_4x4,
	input wire        KEY_Pressed_4x4,
	input wire [3:0]  previous_system_state,
	input wire [3:0]  current_system_state,
	input wire [3:0]  next_system_state,
	input wire [2:0]  coordinate_x, coordinate_y,
	input wire [1:0]  coordinate_state,
	input wire [15:0] WiFi_signal,
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// =========================================================================
// 1 秒時脈產生器 (以 50MHz 時脈為例：50,000,000 個週期 = 1 秒)
// =========================================================================
parameter CLK_FREQ = 32'd50_000_000; // 請根據實際開發板時脈調整 (如 50MHz)
reg [31:0] one_sec_cnt;
reg        one_sec_pulse;

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
parameter COLOR_GREEN = 16'h07E0; // 綠色 (RGB565)
parameter COLOR_BLUE  = 16'h001F; // 藍色 (RGB565)
parameter COLOR_WHITE = 16'hFFFF; // 白色 (RGB565)
parameter COLOR_BLACK = 16'h0000; // 黑色 (RGB565)

reg [15:0] LCD_BACKGROUND;



// =========================================================================
// 動態文字物件屬性記憶體 (Text OAM)
// 0~3: 上方英文字母 (紅色)
// 4~8: 下方座標文字 (藍色，格式: "[", row, ",", col, "]")
// =========================================================================
reg [7:0]  char_ascii [0:MAX_CHARS-1]; 
reg [7:0]  char_x     [0:MAX_CHARS-1]; 
reg [7:0]  char_y     [0:MAX_CHARS-1]; 
reg [15:0] char_color [0:MAX_CHARS-1]; 
reg [3:0]  char_scale [0:MAX_CHARS-1]; 



parameter SYS_RESET        = 4'd0,
			 SYS_INITIAL      = 4'd1,
			 SYS_IDLE         = 4'd2,
			 SYS_TFT_LCD      = 4'd3,
			 SYS_WiFi_CONNECT = 4'd4,
			 SYS_JOYSTICK     = 4'd5,
			 SYS_INTEGRATION  = 4'd6;



// --- 字串狀態控制暫存器 ---
reg [2:0] char_group_cnt; // 0~6 組 (A~D, E~H, ..., YZ)
reg [3:0] coord_row;      // 0~8
reg [3:0] coord_col;      // 1~8

integer i;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		char_group_cnt <= 0;
		coord_row      <= 0;
		coord_col      <= 1;
		
		for (i = 0; i < MAX_CHARS; i = i + 1) begin
			char_x[i]     <= 8'd127;
			char_y[i]     <= 8'd159;
			char_scale[i] <= 4'd0;
			char_ascii[i] <= "";
		end
		
	end else begin
		if (next_system_state != current_system_state) begin
			if (next_system_state == SYS_TFT_LCD) begin
				char_group_cnt <= 0;
				coord_row      <= 0;
				coord_col      <= 1;
			end
		end
		
		case(current_system_state)
		
			SYS_TFT_LCD: begin
				for (i = 0; i < 9; i = i + 1) begin
					char_scale[i] <= 4'd3;
					if (i < 4) begin
						char_x[i]     <= 8'd16 + (i % 4) * (FONT_W * 4'd3);
						char_y[i]     <= 8'd5;
						char_color[i] <= COLOR_RED;
					end else if ((i >= 4) && (i < 9)) begin
						char_x[i]     <= 8'd5 + ((i - 4) % 5) * (FONT_W * 4'd3);
						char_y[i]     <= 8'd65;
						char_scale[i] <= 4'd3;
						char_color[i] <= COLOR_BLUE;
					end
				end
				
				if (one_sec_pulse) begin
					char_ascii[4] <= "["; char_ascii[6] <= ","; char_ascii[8] <= "]";
					
					if (char_group_cnt < 6)
						char_group_cnt <= char_group_cnt + 1;
					else
						char_group_cnt <= 0;
					case (char_group_cnt)
						3'd0: begin char_ascii[0] <= "A"; char_ascii[1] <= "B"; char_ascii[2] <= "C"; char_ascii[3] <= "D"; end
						3'd1: begin char_ascii[0] <= "E"; char_ascii[1] <= "F"; char_ascii[2] <= "G"; char_ascii[3] <= "H"; end
						3'd2: begin char_ascii[0] <= "I"; char_ascii[1] <= "J"; char_ascii[2] <= "K"; char_ascii[3] <= "L"; end
						3'd3: begin char_ascii[0] <= "M"; char_ascii[1] <= "N"; char_ascii[2] <= "O"; char_ascii[3] <= "P"; end
						3'd4: begin char_ascii[0] <= "Q"; char_ascii[1] <= "R"; char_ascii[2] <= "S"; char_ascii[3] <= "T"; end
						3'd5: begin char_ascii[0] <= "U"; char_ascii[1] <= "V"; char_ascii[2] <= "W"; char_ascii[3] <= "X"; end
						3'd6: begin char_ascii[0] <= "Y"; char_ascii[1] <= "Z"; char_ascii[2] <= " "; char_ascii[3] <= " "; end
						default: begin char_ascii[0] <= " "; char_ascii[1] <= " "; char_ascii[2] <= " "; char_ascii[3] <= " "; end
					endcase
					
					if (coord_col < 8) begin
						coord_col <= coord_col + 1;
					end else begin
						coord_col <= 1;
						if (coord_row < 8) begin
							coord_row <= coord_row + 1;
						end else begin
							coord_row <= 0;
						end
					end
					
					// 將數字轉為 ASCII 碼 (加上 8'd48/"0")
					char_ascii[5] <= "0" + coord_row;
					char_ascii[7] <= "0" + coord_col;
				end
			end
			
			SYS_INTEGRATION: begin
				for (i = 0; i < 9; i = i + 1) begin
					char_scale[i] <= 4'd3;
					if (i < 4) begin
						char_x[i]     <= 8'd16 + (i % 4) * (FONT_W * 4'd3);
						char_y[i]     <= 8'd5;
						char_color[i] <= COLOR_RED;
					end else if ((i >= 4) && (i < 9)) begin
						char_x[i]     <= 8'd24 + ((i - 4) % 5) * (FONT_W * 4'd2);
						char_y[i]     <= 8'd65;
						char_scale[i] <= 4'd2;
						char_color[i] <= COLOR_BLUE;
					end
				end
				char_ascii[0] <= "A"; char_ascii[1] <= "B"; char_ascii[2] <= "C"; char_ascii[3] <= "D";
				char_ascii[4] <= "["; char_ascii[6] <= ","; char_ascii[8] <= "]";
				char_ascii[5] <= (coordinate_state == 2'd0) ? "0" : "1" + coordinate_x;
				char_ascii[7] <= (coordinate_state == 2'd0) ? "0" : "1" + coordinate_y;
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

always @(*) begin
	active_ascii = " ";
	active_color = COLOR_BLACK;
	active_lx    = 0;
	active_ly    = 0;
	hit_text     = 1'b0;

	for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
		char_w = FONT_W * char_scale[scan_i];
		char_h = FONT_H * char_scale[scan_i];

		if (x_cnt >= char_x[scan_i] && x_cnt < (char_x[scan_i] + char_w) &&
		y_cnt >= char_y[scan_i] && y_cnt < (char_y[scan_i] + char_h)) begin
		
			hit_text     = 1'b1;
			active_ascii = char_ascii[scan_i];
			active_color = char_color[scan_i];
			
			active_lx    = (x_cnt - char_x[scan_i]) / char_scale[scan_i];
			active_ly    = (y_cnt - char_y[scan_i]) / char_scale[scan_i];
		end
	end
end

// --- ROM 定址與點陣圖提取 ---
wire [7:0] char_idx = (active_ascii >= " " && active_ascii <= "~") ? (active_ascii - " ") : 8'd0;
wire [15:0] addr    = (char_idx << 4) + active_ly;
wire [7:0]  bits    = font_rom[addr];

reg [15:0] pixel_color;
always @(*) begin
	if (hit_text && bits[4'd7 - active_lx]) begin
		pixel_color = active_color; 
	end else begin
		pixel_color = COLOR_BLACK;     
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

endmodule