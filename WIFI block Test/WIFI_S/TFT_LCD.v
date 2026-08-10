module TFT_LCD (
	input wire clk,
	input wire rst_n,
	input wire [7:0]switch_8bit,
	input wire [15:0]S,
	input wire [4:0]mode_select,
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// =========================================================================
// 核心修正：同步邊緣偵測計數器 與 影格空白期數值更新邏輯
// =========================================================================
reg [25:0] clk_cnt;
reg        clk_cnt_d1; // 用於延遲一週期以捕捉上升緣
wire       count_pulse;   // 真正、合法的「單週期」計數脈衝

integer LCD_cnt;

// 用於即時計算的內部連線（組合電路），不佔用時脈域
wire [7:0] next_C_hundred = 8'd48 + (LCD_cnt / 100);
wire [7:0] next_C_ten     = 8'd48 + ((LCD_cnt % 100) / 10);
wire [7:0] next_C_one     = 8'd48 + (LCD_cnt % 10);

wire [7:0] next_L_ten     = 8'd48 + ((LCD_cnt / 30) / 10);
wire [7:0] next_L_one     = 8'd48 + ((LCD_cnt / 30) % 10);

// 畫面顯示專用的動態暫存器（全部收歸主時脈 clk 統一管理）
reg [7:0] C_hundred, C_ten, C_one;
reg [7:0] L_ten, L_one;

// 1. 產生邊緣偵測訊號：捕捉 clk_cnt[25] 從 0 變 1 的那一瞬間
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		clk_cnt_d1 <= 1'b0;
	end else begin
		clk_cnt_d1 <= clk_cnt[22];
	end
end
// 當前是 1 但前一刻是 0，代表剛好是變高電平的那 1 個時脈週期
assign count_pulse = clk_cnt[22] && !clk_cnt_d1; 

// 2. 計數器核心控制（由主時脈同步控制）
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		clk_cnt <= 0;
		LCD_cnt <= 0;
	end else begin
		clk_cnt <= clk_cnt + 1;
		
		// 核心修正：使用 count_pulse，確保符合時脈觸發且「只被加一次」！
		if(count_pulse) begin
			if (LCD_cnt < 999) LCD_cnt <= LCD_cnt + 1;
			else LCD_cnt <= 0;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		C_hundred <= 8'd48;
		C_ten     <= 8'd48;
		C_one     <= 8'd48;
		L_ten     <= 8'd48;
		L_one     <= 8'd48;
	end else begin
		C_hundred <= next_C_hundred;
		C_ten     <= next_C_ten;
		C_one     <= next_C_one;
		L_ten     <= next_L_ten;
		L_one     <= next_L_one;
	end
end

// =========================================================================
// 可調參數配置
// =========================================================================
wire [3:0] SCALE = (display_mode == 2'd2) ? 4'd2 : 
                   (display_mode == 2'd1) ? 4'd3 : 4'd1; // 放大倍率 (1 = 8x16, 2 = 16x32, 4 = 32x64)
parameter FONT_W = 8;  // 原始字寬
parameter FONT_H = 16; // 原始字高

// 顏色配置 (RGB565)
reg [15:0] TEXT_COLOR; //文字顏色
reg [15:0] BG_COLOR = 16'h00E0; //背景顏色

// 自動計算縮放後的寬高
wire [7:0] REAL_W = FONT_W * SCALE;
wire [7:0] REAL_H = FONT_H * SCALE;

// =========================================================================
// 網格化與動態文字定址邏輯
// =========================================================================
wire [7:0] grid_row = y_cnt / REAL_H;
wire [7:0] grid_col = x_cnt / REAL_W;

wire [3:0] lx = (x_cnt % REAL_W) / SCALE;
wire [3:0] ly = (y_cnt % REAL_H) / SCALE;

reg [1:0] display_mode;
reg [9:1] clear_mask;
reg [1:0] color_select;

// 捕捉按鍵的「一瞬間」並永久記憶，直到重置或切換模式
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		display_mode <= 2'd0;  // 剛開機或重置時，先清除畫面
		clear_mask <= 9'b0;    // 預設數字都沒有消失
		color_select <= 2'd1;
	end else begin
			if(color_select == 2'd0) begin
				TEXT_COLOR <= 16'h0000;
			end if(color_select == 2'd1) begin
				TEXT_COLOR <= 16'h001F;
			end else if(color_select == 2'd2)begin
				TEXT_COLOR <= 16'hF800;
			end

			color_select <= 2'd1;
			display_mode <= 2'd1;
	end
end

// 8-bit ASCII
reg [7:0] current_ascii;
always@(*) begin
	current_ascii = 8'd32; 
	if (rst_n == 1) begin
		case (grid_row)
			8'd0: begin // 第一列
				case (grid_col)
					8'd0: begin
						if(mode_select == 4'd0) begin
							current_ascii = 8'd49; // '1'
						end
					end
					8'd2: begin
						if(mode_select == 4'd1) begin
							current_ascii = 8'd50; // '2'
						end
					end
					8'd4: begin
						if(mode_select == 4'd2) begin
							current_ascii = 8'd51; // '3'
						end
					end
					default:current_ascii = 8'd32;
				endcase
			end
			
			8'd1: begin // 第二列
				case (grid_col)
					8'd0: begin
						if(mode_select == 4'd3) begin
							current_ascii = 8'd52; // '4'
						end
					end
					8'd2: begin
						if(mode_select == 4'd4) begin
							current_ascii = 8'd53; // '5'
						end
					end
					8'd4: begin
						if(mode_select == 4'd5) begin
							current_ascii = 8'd54; // '6'
						end
					end
					default:current_ascii = 8'd32;
				endcase
			end
			
			8'd2: begin // 第三列
				case (grid_col)
					8'd0: begin
						if(mode_select == 4'd6) begin
							current_ascii = 8'd55; // '7'
						end
					end
					8'd2: begin
						if(mode_select == 4'd7) begin
							current_ascii = 8'd56; // '8'
						end
					end
					8'd4: begin
						if(mode_select == 4'd8) begin
							current_ascii = 8'd57; // '9'
						end
					end
					default: current_ascii = 8'd32;
				endcase
			end
			
			8'd4: begin // 第五列顯示
				case (grid_col)
					default: current_ascii = 8'd32;
				endcase
			end
			default: current_ascii = 8'd32;
		endcase
	end
end

// --- ROM 定址與點陣遮罩提取 ---
wire [7:0] char_idx = (current_ascii >= 8'd32 && current_ascii <= 8'h7E) ? (current_ascii - 8'd32) : 8'd0;

// 每個字元佔 16 bytes (<< 4)，加上當前列數 ly 得到記憶體位址
wire [15:0] addr = (char_idx << 4) + ly;
wire [7:0]  bits = font_rom[addr];

// 根據點陣圖的 bit 決定輸出文字色或背景色
always@(*) begin
	if (bits[4'd7 - lx]) begin
		pixel_color = TEXT_COLOR;
	end else begin
		pixel_color = BG_COLOR;
	end
end

// 控制與計數器
reg [3:0]  clk_div;
reg [31:0] delay_cnt;
reg [5:0]  state;
reg [7:0]  cmd_idx, x_cnt, y_cnt;
reg [7:0]  spi_data;
reg [3:0]  bit_cnt;
reg [15:0] pixel_color;
reg        p_idx;

// =========================================================================
// SPI 與主控狀態機
// =========================================================================

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
				0: begin RES <= 0; delay_cnt <= 1000000; state <= 1; end
				1: begin RES <= 1; delay_cnt <= 1000000; state <= 2; cmd_idx <= 0; end
				2: begin 
					case (cmd_idx)
						0: begin spi_data <= 8'h01; DC <= 0; bit_cnt <= 8; cmd_idx <= 1; end 
						1: begin spi_data <= 8'h11; DC <= 0; bit_cnt <= 8; cmd_idx <= 2; delay_cnt <= 500000; end
						2: begin spi_data <= 8'h3A; DC <= 0; bit_cnt <= 8; cmd_idx <= 3; end 
						3: begin spi_data <= 8'h05; DC <= 1; bit_cnt <= 8; cmd_idx <= 4; end 
						4: begin spi_data <= 8'h36; DC <= 0; bit_cnt <= 8; cmd_idx <= 5; end 
						5: begin spi_data <= 8'hC0; DC <= 1; bit_cnt <= 8; cmd_idx <= 6; end 
						6: begin spi_data <= 8'h29; DC <= 0; bit_cnt <= 8; cmd_idx <= 7; end 
						default: state <= 3;
					endcase
				end
				3: begin 
					case (cmd_idx)
						7:  begin spi_data <= 8'h2A; DC <= 0; bit_cnt <= 8; cmd_idx <= 8;  end
						8:  begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 9;  end
						9:  begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= 8'h7F; DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= 8'h2B; DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00; DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= 8'h9F; DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin spi_data <= 8'h2C; DC <= 0; bit_cnt <= 8; state <= 4; x_cnt <= 0; y_cnt <= 0; p_idx <= 0; end
					endcase
				end
				4: begin // 全螢幕動態像素掃描更新
							// 先送高位組 [15:8]，後送低位組 [7:0]，確保 RGB565 背景與字體正確
					spi_data <= p_idx ? pixel_color[7:0] : pixel_color[15:8];
					DC <= 1; bit_cnt <= 8;
					if (p_idx) begin
						if (x_cnt < 127) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < 159) y_cnt <= y_cnt + 1;
							else begin
								state <= 3; 
								cmd_idx <= 17; // 重新發送 2Ch 進行下一幀刷新
							end
						end
					end
					p_idx <= ~p_idx;
				end
				default: state <= 0;
			endcase
		end
	end
end


// --- ROM 宣告：95個字元 (ASCII 32~126) * 16 bytes = 1520 bytes ---
reg [7:0] font_rom [0:1519];
initial begin
	$readmemh("ASCII_32to126.txt", font_rom);
end

endmodule