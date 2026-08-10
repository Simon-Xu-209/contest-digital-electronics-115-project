module TFT_LCD (
	input wire clk,
	input wire rst_n,
	input wire [7:0] switch_8bit,
	input wire [15:0] S,
	input [4:0] mode_select,
	output reg  SCL, SDA, RES, DC, CS, BLK
);




// =========================================================================
// 核心修正：同步邊緣偵測計數器 與 影格空白期數值更新邏輯
// =========================================================================
reg [25:0] clk_cnt;
reg        clk_cnt_d1;
// 用於延遲一週期以捕捉上升緣
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

// 1. 產生邊緣偵測訊號：捕捉 clk_cnt[22] 從 0 變 1 的那一瞬間
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
		if(S[15] == 1 && count_pulse) begin
			if (LCD_cnt < 999) LCD_cnt <= LCD_cnt + 1;
			else LCD_cnt <= 0;
		end else if(switch_8bit[5:3] != 3'b001) begin
			LCD_cnt <= 0;
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
wire [3:0] SCALE = (switch_8bit[2:0] == 3'b1_00 && display_mode == 2'd2 || switch_8bit[2:0] == 3'b1_10) ? 4'd2 : 
                   (switch_8bit[2:0] == 3'b1_00 && display_mode == 2'd1) ? 4'd3 : 4'd1; // 放大倍率 (1 = 8x16, 2 = 16x32, 4 = 32x64)
parameter FONT_W = 4'd8;  // 原始字寬
parameter FONT_H = 5'd16; // 原始字高

// 顏色配置 (RGB565)
reg [15:0] TEXT_COLOR; //文字顏色
reg [15:0] BG_COLOR = 16'h0000; //背景顏色

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

 

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		display_mode <= 2'd0;
		clear_mask <= 9'b0;
		TEXT_COLOR <= 16'h001F;
	end else begin
		
	
		if(switch_8bit[2:0] == 3'b1_00) begin
			if(S[15] == 1'b0 && S[14] == 1'b1 && S[13:0] == 14'b0) begin
				TEXT_COLOR <= 16'hF800;
			end
			if (S[15:13] == 3'b0 && S[12] == 1'b1 && S[11:0] == 12'b0) begin
				display_mode <= 2'd2;
				clear_mask <= 9'b0;
			end
			else if (S == 15'b0 ) begin
				display_mode <= 2'd1;
				clear_mask <= 9'b0;
			end
			else if (display_mode == 2'd1) begin
				if (S[1]) clear_mask[1] <= 1'b1;
				if (S[2]) clear_mask[2] <= 1'b1;
				if (S[3]) clear_mask[3] <= 1'b1;
				if (S[4]) clear_mask[4] <= 1'b1;
				if (S[5]) clear_mask[5] <= 1'b1;
				if (S[6]) clear_mask[6] <= 1'b1;
				if (S[7]) clear_mask[7] <= 1'b1;
				if (S[8]) clear_mask[8] <= 1'b1;
				if (S[9]) clear_mask[9] <= 1'b1;
			end
			if(switch_8bit[2:0] == 3'b1_10) begin
				if(switch_8bit[5:3] != 3'b001) begin
					display_mode <= 2'd1;
				end else begin
					display_mode <= 2'd2;
				end
			end
		end
		if(display_mode == 2'd0) begin
			TEXT_COLOR <= 16'h001F;
		end
	end
end

reg [7:0] current_ascii;
always@(*) begin
	current_ascii = " ";
	case (grid_row)
		8'd0: begin // 第一列
			case (grid_col)
				8'd0: begin
					if(display_mode == 2'd0) current_ascii = "I";
					else begin
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2) current_ascii = "C";
							else if(clear_mask[1] == 1'b1) current_ascii = " ";
							else if(display_mode == 2'd1) current_ascii = "1";
						end else if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = "M";
						end
					end
				end
				8'd1: begin
					if(display_mode == 2'd0) current_ascii = "d";
					else begin
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2)       current_ascii = "P";
						end else if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = "O";
						end
					end
				end
				8'd2: begin
					if(display_mode == 2'd0) current_ascii = "l";
					else begin
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2)       current_ascii = "L";
							else if(clear_mask[2] == 1'b1) current_ascii = " ";
							else if(display_mode == 2'd1)  current_ascii = "2";
						end else if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = "D";
						end
					end
				end
				8'd3: begin
					if(display_mode == 2'd0) current_ascii = "e";
					else begin
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2)       current_ascii = "D";
						end else if (switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = "E";
						end
					end
				end
				8'd4: begin
					if(display_mode == 2'd0 && clk_cnt[25:24] >= 2'b01) current_ascii = ".";
					else begin
						current_ascii = " ";
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2)       current_ascii = "I";
							else if(clear_mask[3] == 1'b1) current_ascii = " ";
							else if(display_mode == 2'd1)  current_ascii = "3";
						end else if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = ":";
						end
					end
				end
				8'd5: begin
					if(display_mode == 2'd0 && clk_cnt[25:24] >= 2'b10) current_ascii = ".";
					else begin
						current_ascii = " ";
						if(switch_8bit[2:0] == 3'b1_00) begin
							if(display_mode == 2'd2)       current_ascii = "D";
						end else if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = (switch_8bit[5:3] != 3'b001) ? " " : "X";
						end
					end
				end
				8'd6: begin
					current_ascii = " ";
					if(display_mode == 2'd0 && clk_cnt[25:24] >= 2'b11) current_ascii = ".";
					else begin
						if(switch_8bit[2:0] == 3'b1_10) begin
							current_ascii = (switch_8bit[5:3] != 3'b001) ? " " : "X";
						end
					end
				end
				default: current_ascii = " ";
			endcase
		end
		
		8'd1: begin // 第二列
			case (grid_col)
				8'd0: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(clear_mask[4] == 1'b1)      current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "4";
					end else if (switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd2: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(clear_mask[5] == 1'b1)      current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "5";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd4: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(clear_mask[6] == 1'b1)      current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "6";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				default: current_ascii = " ";
			endcase
		end
		
		8'd2: begin // 第三列
			case (grid_col)
				8'd0: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(display_mode == 2'd2)       current_ascii = "M";
						else if(clear_mask[7] == 1'b1) current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "7";
					end else if (switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = "C";
					end
				end
				8'd1: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(display_mode == 2'd2)       current_ascii = "O";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd2: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(display_mode == 2'd2)       current_ascii = "D";
						else if(clear_mask[8] == 1'b1) current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "8";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd3: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(display_mode == 2'd2)       current_ascii = "E";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd4: begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						if(clear_mask[9] == 1'b1)      current_ascii = " ";
						else if(display_mode == 2'd1)  current_ascii = "9";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = ":";
					end
				end
				8'd5: begin
					if (switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = C_hundred;
					end
				end
				8'd6: begin
					if (switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = C_ten;
					end
				end
				8'd7: begin
					if (switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = C_one;
					end
				end
				default: current_ascii = " ";
			endcase
		end
		
		8'd4: begin // 第五列顯示
			case (grid_col)
				8'd0:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "t" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = "L";
					end
				end
				8'd1:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "r" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd2:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "i" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd3:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "e" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = " ";
					end
				end
				8'd4:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "s" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = ":";
					end
				end
				8'd5:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? "o" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = 8'd32; // ' '
					end
				end
				8'd6:begin
					if(switch_8bit[2:0] == 3'b1_00) begin
						current_ascii = (display_mode == 2'd2) ? ":" : " ";
					end else if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = L_ten;
					end
				end
				8'd7:begin
					if(switch_8bit[2:0] == 3'b1_10) begin
						current_ascii = L_one;
					end
				end
				default: current_ascii = " ";
			endcase
		end
		default: current_ascii = " ";
	endcase
end

// --- ROM 定址與點陣遮罩提取 ---
wire [7:0] char_idx = (current_ascii >= " " && current_ascii <= "~") ? (current_ascii - " ") : 8'd0;

// 每個字元佔 16 bytes (<< 4)，加上當前列數 ly 得到記憶體位址
wire [15:0] addr = (char_idx << 4) + ly;
wire [7:0]  bits = font_rom[addr];

reg [15:0] pixel_color;
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
reg        p_idx;

// =========================================================================
// SPI 與主控狀態機
// =========================================================================

localparam STATE_HW_RESET  = 3'd0; // 硬體重置階段
localparam STATE_INIT_CMD  = 3'd1; // 結束重置，準備初始化
localparam STATE_SEND_INIT = 3'd2; // 發送初始化設定序列 (SWRESET, SLPOUT 等)
localparam STATE_SET_AXIS  = 3'd3; // 設定顯示視窗邊界範圍 (CASET, RASET)
localparam STATE_SCAN_DRAW = 3'd4; // 全螢幕動態像素掃描與繪製 (RAMWR)

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
						7:  begin spi_data <= CMD_CASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 8;  end
						8:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 9;  end
						9:  begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= CMD_RASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin spi_data <= CMD_RAMWR;   DC <= 0; bit_cnt <= 8; state <= STATE_SCAN_DRAW; x_cnt <= 0; y_cnt <= 0; p_idx <= 0; end
					endcase
				end
				STATE_SCAN_DRAW: begin // 全螢幕動態像素掃描更新
					// 先送高位組 [15:8]，後送低位組 [7:0]，確保 RGB565 背景與字體正確
					spi_data <= p_idx ? pixel_color[7:0] : pixel_color[15:8];
					DC <= 1; bit_cnt <= 8;
					if (p_idx) begin
						if (x_cnt < ARG_X_END) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < ARG_Y_END) y_cnt <= y_cnt + 1;
							else begin
								state <= STATE_SET_AXIS;
								cmd_idx <= 17; // 重新發送 RAMWR 進行下一幀刷新
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
// ST7735S 128x160 LCD 指令與參數常數宣告 (移至最上方以供狀態機使用)
// =============================================================================

// --- 系統功能指令 (System Function Commands) ---
parameter CMD_NOP       = 8'h00; // 空操作
parameter CMD_SWRESET   = 8'h01; // 軟體復位 (Software Reset)，需延時 120ms
parameter CMD_RDDID     = 8'h04; // 讀取晶片 ID
parameter CMD_RDDST     = 8'h09; // 讀取顯示狀態
parameter CMD_SLPIN     = 8'h10; // 進入睡眠模式
parameter CMD_SLPOUT    = 8'h11; // 退出睡眠模式，需延時 120ms
parameter CMD_PTLON     = 8'h12; // 開啟局部顯示模式
parameter CMD_NORON     = 8'h13; // 開啟正常顯示模式
parameter CMD_INVOFF    = 8'h20; // 關閉反相顯示
parameter CMD_INVON     = 8'h21; // 開啟反相顯示
parameter CMD_GAMSET    = 8'h26; // 伽馬曲線選擇
parameter CMD_DISOFF    = 8'h28; // 關閉顯示
parameter CMD_DISPON    = 8'h29; // 開啟顯示
parameter CMD_CASET     = 8'h2A; // 設定行地址 (X軸範圍)
parameter CMD_RASET     = 8'h2B; // 設定列地址 (Y軸範圍)
parameter CMD_RAMWR     = 8'h2C; // 寫入顯存 (開啟像素色彩連續寫入)
parameter CMD_PTLAR     = 8'h30; // 設定局部顯示區域
parameter CMD_TEOFF     = 8'h34; // 關閉撕裂消除輸出
parameter CMD_TEON      = 8'h35; // 開啟撕裂消除輸出
parameter CMD_MADCTL    = 8'h36; // 記憶體存取控制 (控制螢幕旋轉、RGB/BGR順序)
parameter CMD_COLMOD    = 8'h3A; // 介面像素格式

// --- 面板控制與初始化進階指令 ---
parameter CMD_FRMCTR1   = 8'hB1; // 正常模式下的刷新率控制
parameter CMD_FRMCTR2   = 8'hB2; // 空閒模式下的刷新率控制
parameter CMD_FRMCTR3   = 8'hB3; // 局部模式下的刷新率控制
parameter CMD_INVCTR    = 8'hB4; // 顯示反相控制
parameter CMD_PWCTR1    = 8'hC0; // 電源控制 1 (設定 GVDD 電壓)
parameter CMD_PWCTR2    = 8'hC1; // 電源控制 2 (設定 VGH/VGL 電壓)
parameter CMD_PWCTR3    = 8'hC2; // 電源控制 3 (正常模式操作電流)
parameter CMD_PWCTR4    = 8'hC3; // 電源控制 4 (空閒模式操作電流)
parameter CMD_PWCTR5    = 8'hC4; // 電源控制 5 (局部模式操作電流)
parameter CMD_VMCTR1    = 8'hC5; // VCOM 電壓控制 1
parameter CMD_VMOFCTR   = 8'hC7; // VCOM 偏移電壓控制
parameter CMD_WRID2     = 8'hD1; // 寫入 ID2
parameter CMD_WRID3     = 8'hD2; // 寫入 ID3
parameter CMD_NVFCTRL   = 8'hD9; // NVM 控制
parameter CMD_GMCTRP1   = 8'hE0; // 正極性伽馬校正
parameter CMD_GMCTRN1   = 8'hE1; // 負極性伽馬校正
parameter CMD_EXTCTRL   = 8'hF0; // 擴充指令控制
parameter CMD_GCTRL     = 8'hF6; // 閘極控制

// --- 常用初始化參數定義 (Arguments) ---
parameter ARG_COLMOD_16BIT = 8'h05;  // 16-bit RGB565 格式
parameter ARG_MADCTL_MX_MY = 8'hC0;  // 鏡像/旋轉控制參數
parameter ARG_X_START      = 8'd0;   // 視窗起點 X = 0
parameter ARG_X_END        = 8'd127; // 視窗終點 X = 127
parameter ARG_Y_START      = 8'd0;   // 視窗起點 Y = 0
parameter ARG_Y_END        = 8'd159; // 視窗終點 Y = 159



// --- ROM 宣告：95個字元 (ASCII 32~126) * 16 bytes = 1520 bytes ---
reg [7:0] font_rom [0:1519];
initial begin
	$readmemh("ASCII_32to126.txt", font_rom);
end

endmodule