module TFT_LCD #(
	parameter MAX_RX_LEN = 32
)(
	input wire clk,
	input wire rst_n,
	input wire [7:0] switch_8bit,
	input wire [4:0] KEY, // 4x4
	input wire       Pressed,
	input wire [8*MAX_RX_LEN-1:0] rx_Data_reg, // 資料暫存器
	input wire                    rx_ready,    // 接收完成脈衝
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// 拆解 32 個 Byte (bytes[0] 為 lowest byte，即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_Data_reg[8*g +: 8];
	end
endgenerate

// 格式範例：bytes[g]="I", bytes[g-1]="D", bytes[g-2]=":", bytes[g-3]='9', ..., bytes[g-6]='1'
wire [MAX_RX_LEN-1:0] match_id;
reg  [31:0]           detected_id;
reg                   id_found;

generate
    for (g = 4; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_id[g] = (bytes[g]   == "N") &&
                             (bytes[g-1] == "u") &&
                             (bytes[g-2] == "m") &&
                             (bytes[g-3] == ":");
    end
    for (g = 0; g < 4; g = g + 1) begin : MATCH_ZERO
        assign match_id[g] = 1'b0;
    end
endgenerate

integer k;
always @(*) begin
    id_found    = 1'b0;
    detected_id = 32'd0;
    for (k = MAX_RX_LEN - 1; k >= 4; k = k - 1) begin
        if (match_id[k] && !id_found) begin
            id_found    = 1'b1;
            detected_id = bytes[k-4];
        end
    end
end

reg Pressed_reg1, Pressed_reg2;
wire Pressed_posedge = (Pressed_reg1 && !Pressed_reg2);
wire Pressed_negedge = (!Pressed_reg1 && Pressed_reg2);
always@(posedge clk) begin
	if (!rst_n) begin
		Pressed_reg1 <= 0;
		Pressed_reg2 <= 0;
	end else begin
		Pressed_reg1 <= Pressed;
		Pressed_reg2 <= Pressed_reg1;
	end
end

reg [3:0] key_latched;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_latched <= 4'd15;
	end else if (Pressed && !Pressed_reg1) begin // 只在剛按下的正緣鎖存 KEY
		key_latched <= KEY;
	end else begin
		key_latched <= 4'd15;
	end
end

reg [3:0] key_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_pulse <= 4'b1111;
	end else begin
		// 當 Pressed 產生正緣（剛按下的瞬間）
		if (Pressed && !Pressed_reg1) begin
			key_pulse <= KEY;       // 存入當前按下的 key 值
		end else begin
			key_pulse <= 4'b1111;   // 1 個 Clock 後自動歸位為預設值 15
		end
	end
end

parameter CLK_FREQ = 32'd50_000_000; // 1s 所需週期(50MHz)

// =========================================================================
// 基本參數配置
// =========================================================================
parameter MAX_CHARS = 9 + 17 + 14; // 文字上限
parameter FONT_W = 4'd8;  // 原始字寬
parameter FONT_H = 5'd16; // 原始字高

parameter COLOR_RED   = 16'hF800; // 紅色 (RGB565)
parameter COLOR_GREEN = 16'h07E0; // 綠色 (RGB565)
parameter COLOR_BLUE  = 16'h001F; // 藍色 (RGB565)
parameter COLOR_WHITE = 16'hFFFF; // 白色 (RGB565)
parameter COLOR_BLACK = 16'h0000; // 黑色 (RGB565)

reg [7:0]  char_ascii [0:MAX_CHARS-1]; // 文字資料
reg [7:0]  char_x     [0:MAX_CHARS-1]; // 文字 x 座標
reg [7:0]  char_y     [0:MAX_CHARS-1]; // 文字 y 座標
reg [15:0] char_color [0:MAX_CHARS-1]; // 文字顏色
reg [3:0]  char_scale [0:MAX_CHARS-1]; // 文字大小 (不可輸入 0)

reg [2:0] current_display_state;
reg [2:0] next_display_state;
localparam display_CLEAR     = 3'd0,
			  display_WiFi_TEST = 3'd1,
			  display_TEXT      = 3'd2,
			  display_DONE      = 3'd3;

reg [9:0] number_mask;
reg [31:0] timer_cnt;

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
	case(current_display_state)
	
		display_CLEAR: begin
			
		end
		
		display_WiFi_TEST: begin
			if (detected_id == "C") begin
				next_display_state = display_TEXT;
			end
		end
		
		display_DONE: begin end
		
		default:;
	endcase
	
	if ((switch_8bit[2:0] == 3'b100) && (current_display_state != display_TEXT)) begin
		next_display_state = display_WiFi_TEST;
	end else begin
		next_display_state = current_display_state;
	end
end

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		timer_cnt <= 32'd0;
		number_mask <= 10'b0;
	end else begin
		case(current_display_state)
		
			display_CLEAR: begin
				for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
					char_color[text_number] = COLOR_WHITE;
					char_scale[text_number] = 4'd0;
					char_ascii[text_number] = "";
				end
			end
		
			display_WiFi_TEST: begin
				if ((detected_id >= "1") && (detected_id <= "9")) begin
					number_mask[detected_id - 8'd48] <= 1'b1;
				end
				for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
					char_ascii[text_number] = "";
					char_scale[text_number] = 4'd0;
				end
				for (text_number = 0; text_number < 9; text_number = text_number + 1) begin
					char_x[text_number] = 8'd42 * (text_number % 3) + 5;
					char_y[text_number] = 8'd55 * (text_number / 3);
					char_color[text_number] = (detected_id == "E") ? COLOR_RED : COLOR_BLUE;
					char_scale[text_number] = 4'd3;
				end
				char_ascii[0] = (number_mask[1]) ? "" : "1";
				char_ascii[1] = (number_mask[2]) ? "" : "2";
				char_ascii[2] = (number_mask[3]) ? "" : "3";
				char_ascii[3] = (number_mask[4]) ? "" : "4";
				char_ascii[4] = (number_mask[5]) ? "" : "5";
				char_ascii[5] = (number_mask[6]) ? "" : "6";
				char_ascii[6] = (number_mask[7]) ? "" : "7";
				char_ascii[7] = (number_mask[8]) ? "" : "8";
				char_ascii[8] = (number_mask[9]) ? "" : "9";
			end
			
			display_TEXT: begin
				for (text_number = 0; text_number < MAX_CHARS; text_number = text_number + 1) begin
					char_ascii[text_number] = "";
				end
				for (text_number = 0; text_number < 17; text_number = text_number + 1) begin
					if (text_number < 6) begin
						char_x[text_number] = 8'd21 * (text_number % 6) + 4;
						char_y[text_number] = 8'd54 * 0 + 5;
					end else if ((text_number >= 6) && (text_number < 10)) begin
						char_x[text_number] = 8'd21 * ((text_number - 6) % 6) + 4;
						char_y[text_number] = 8'd54 + 5;
					end else if ((text_number >= 10) && (text_number < 17)) begin
						char_x[text_number] = 8'd18 * ((text_number - 10) % 7) + 4;
						char_y[text_number] = 8'd54 * 2 + 5;
					end
					char_color[text_number] =  (detected_id == "E") ? COLOR_RED : COLOR_BLUE;
					char_scale[text_number] = 4'd2;
				end
				char_ascii[0] = "C";
				char_ascii[1] = "P";
				char_ascii[2] = "L";
				char_ascii[3] = "D";
				char_ascii[4] = "I";
				char_ascii[5] = "D";
				
				char_ascii[6] = "M";
				char_ascii[7] = "O";
				char_ascii[8] = "D";
				char_ascii[9] = "E";
				
				char_ascii[10] = "t";
				char_ascii[11] = "r";
				char_ascii[12] = "i";
				char_ascii[13] = "e";
				char_ascii[14] = "s";
				char_ascii[15] = "o";
				char_ascii[16] = ":";
			end
			
			display_DONE: begin
				
			end

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
		char_w       = FONT_W * char_scale[scan_i];
		char_h       = FONT_H * char_scale[scan_i];

		if (x_cnt >= char_x[scan_i] && x_cnt < (char_x[scan_i] + char_w) && y_cnt >= char_y[scan_i] && y_cnt < (char_y[scan_i] + char_h)) begin
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
		pixel_color = (current_display_state == display_CLEAR) ? COLOR_BLACK : COLOR_WHITE;
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
						if (x_cnt < (ARG_X_END - ARG_X_OFFSET)) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < (ARG_Y_END - ARG_Y_OFFSET)) y_cnt <= y_cnt + 1;
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

parameter ARG_X_OFFSET     = 8'd2;   // X 軸偏移
parameter ARG_Y_OFFSET     = 8'd1;   // Y 軸偏移

reg [7:0] font_rom [0:1519];
initial begin
	$readmemh("ASCII_32to126.txt", font_rom);
end

endmodule