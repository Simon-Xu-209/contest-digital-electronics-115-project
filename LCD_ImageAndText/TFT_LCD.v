module TFT_LCD (
	input wire clk,
	input wire rst_n,
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// 控制與計數器
reg [3:0]  clk_div;
reg [31:0] delay_cnt;
reg [5:0]  state;
reg [7:0]  cmd_idx, x_cnt, y_cnt;
reg [7:0]  spi_data;
reg [3:0]  bit_cnt;
reg        p_idx; // 0: 高位元組, 1: 低位元組

// =============================================================================
// 1. 圖像 ROM 宣告與初始化 (作為背景圖)
// =============================================================================
reg [7:0] image_rom [0:40959];
initial begin
    $readmemh("image_data.txt", image_rom); 
end

// 圖像背景定址 (128寬度)
wire [15:0] img_addr = (((y_cnt << 7) + x_cnt) << 1) + p_idx;
reg  [7:0]  bg_pixel_byte;

always @(posedge clk) begin
	bg_pixel_byte <= image_rom[img_addr];
end

// =============================================================================
// 2. 文字 Font ROM 宣告與計數字元邏輯 (複製自您原本的字元顯示邏輯)
// =============================================================================
reg [7:0] font_rom [0:1519]; // 95個字元 * 16位元組 = 1520
initial begin
    $readmemh("ASCII_32to126.TXT", font_rom);
end

// 動態文字顯示內容與座標網格計算
parameter TEXT_COLOR = 16'hF00F; // 設定前景文字色)

wire [3:0] grid_x = x_cnt[7:3]; // x_cnt / 8  (每個字寬8像素)
wire [3:0] grid_y = y_cnt[7:4]; // y_cnt / 16 (每個字高16像素)
wire [2:0] bit_pos = x_cnt[2:0]; // 字元內部的橫向像素位置 (0~7)
wire [3:0] row_pos = y_cnt[3:0]; // 字元內部的縱向行位置 (0~15)

// 根據網格決定當前該格子顯示什麼 ASCII 字元 (此處範例顯示 "FPGA LCD")
reg [7:0] char_ascii;
always @(*) begin
    case (grid_y)
        4'd4: begin
            case (grid_x)
                4'd3:  char_ascii = "N";
                4'd4:  char_ascii = "e";
                4'd5:  char_ascii = "v";
                4'd6:  char_ascii = "e";
                4'd7:  char_ascii = "r";
                default: char_ascii = " "; // 空格
            endcase
        end
		  4'd5: begin
            case (grid_x)
                4'd3:  char_ascii = "G";
                4'd4:  char_ascii = "o";
                4'd5:  char_ascii = "n";
                4'd6:  char_ascii = "n";
                4'd7:  char_ascii = "a";
                default: char_ascii = " "; // 空格
            endcase
        end
		  4'd6: begin
            case (grid_x)
                4'd3:  char_ascii = "G";
                4'd4:  char_ascii = "i";
                4'd5:  char_ascii = "v";
                4'd6:  char_ascii = "e";
                default: char_ascii = " "; // 空格
            endcase
        end
		  4'd7: begin
            case (grid_x)
                4'd3:  char_ascii = "Y";
                4'd4:  char_ascii = "o";
                4'd5:  char_ascii = "u";
                default: char_ascii = " "; // 空格
            endcase
        end
		  4'd8: begin
            case (grid_x)
                4'd3:  char_ascii = "U";
                4'd4:  char_ascii = "p";
                default: char_ascii = " "; // 空格
            endcase
        end
        default: char_ascii = " ";
    endcase
end

// 計算 Font ROM 的讀取位址並抓取點矩陣位元
wire [10:0] font_addr = ((char_ascii - 8'd32) << 4) + row_pos;
wire [7:0]  font_bits = font_rom[font_addr];
// 判斷當前像素點是否為文字筆畫 (1為文字，0為背景)
wire is_text_pixel = font_bits[7 - bit_pos];

// =============================================================================
// 3. SPI 與主控狀態機
// =============================================================================
localparam STATE_HW_RESET  = 3'd0;
localparam STATE_INIT_CMD  = 3'd1; 
localparam STATE_SEND_INIT = 3'd2; 
localparam STATE_SET_AXIS  = 3'd3;
localparam STATE_SCAN_DRAW = 3'd4; 

always@(posedge clk or negedge rst_n) begin
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
						7:  begin spi_data <= CMD_CASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 8; end
						8:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 9; end
						9:  begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= CMD_RASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin 
							spi_data <= CMD_RAMWR;   DC <= 0; bit_cnt <= 8; cmd_idx <= 18; 
							x_cnt <= 0; y_cnt <= 0; p_idx <= 0; 
						end
						18: begin state <= STATE_SCAN_DRAW; end // 預讀第一格背景
					endcase
				end
				STATE_SCAN_DRAW: begin 
					// 💡 核心圖層疊加電路 (OSD Blending)
					if (is_text_pixel) begin
						// 如果是文字筆畫，送出指定的文字顏色 (高八位或低八位)
						spi_data <= p_idx ? TEXT_COLOR[7:0] : TEXT_COLOR[15:8];
					end else begin
						// 如果是背景，直接吐出背景圖 ROM 的單個 Byte
						spi_data <= bg_pixel_byte;
					end
					
					DC <= 1; 
					bit_cnt <= 8;
					
					// 座標計數邏輯
					if (p_idx == 1'b1) begin
						if (x_cnt < ARG_X_END) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < ARG_Y_END) begin
								y_cnt <= y_cnt + 1;
							end else begin
								state   <= STATE_SET_AXIS;
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
// ST7735S 指令與參數常數宣告
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
parameter ARG_MADCTL_MX_MY = 8'hC0; // 配合您先前的取模方向

parameter ARG_X_START      = 8'd0;
parameter ARG_X_END        = 8'd127;
parameter ARG_Y_START      = 8'd0;
parameter ARG_Y_END        = 8'd159;

endmodule