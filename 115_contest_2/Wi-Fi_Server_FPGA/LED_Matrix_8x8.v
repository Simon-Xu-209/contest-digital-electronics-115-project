module LED_Matrix_8x8 (
	input  wire       clk,         // 50 MHz
	input  wire       rst_n,
	input  wire [7:0] switch_8bit, // 指撥開關
	input  wire [3:0] KEY,         // 按鈕
	input  wire       Pressed,
	output reg        DIN,         // WS2812B 資料輸出

	input [31:0] orderID,       // 訂單 ID
	input [15:0] orderQuantity, // 訂購數量
	input [15:0] bidAmount,     // 出價金額
	input [15:0] productQuota,  // 商品配額
	input [15:0] grandTotal     // 付款總額
);

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

// 鎖存按下期間獲得的 KEY
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

// -------------------------------------------------------------
// 1 Clock 單週期 KEY 鎖存暫存器
// -------------------------------------------------------------
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

// =========================================================================
// 參數定義
// =========================================================================
localparam FREQ_HZ         = 50_000_000;
localparam CNT_INIT_100US  = (FREQ_HZ / 10000) - 1; // 100 微秒週期
//	localparam CNT_ANIM_0_3S = (FREQ_HZ * 3 / 10) - 1; // 0.3 秒週期
//	localparam CNT_JOY_0_2S  = (FREQ_HZ * 2 / 10) - 1; // 0.2 秒週期

// WS2812B 時序參數 (50MHz clk)
localparam T0H_CYCLES     = 17;
localparam BIT_CYCLES     = 62;
localparam T1H_CYCLES     = 45;
localparam RESET_CYCLES   = 5000;

// 顏色定義 (24-bit: G-R-B)
localparam COLOR_WHITE = 24'hFF_FF_FF;
localparam COLOR_RED   = 24'h00_FF_00;
localparam COLOR_GREEN = 24'hFF_00_00;
localparam COLOR_BLUE  = 24'h00_00_FF;
localparam COLOR_BLACK = 24'h00_00_00;

// 系統模式定義
localparam SYS_INITIAL    = 3'd0;
localparam SYS_IDLE       = 3'd1;
localparam SYS_CONNECT    = 3'd2;
localparam SYS_EDIT_ORDER = 3'd3;
localparam SYS_EDIT_DONE  = 3'd4;

// 繪製模式定義
localparam MODE_CLEAR        = 3'd0;
localparam MODE_INITIAL      = 3'd1;
localparam MODE_IDLE         = 3'd2;
localparam MODE_CONNECT_TEST = 3'd3;
localparam MODE_EDIT         = 3'd4;



// =========================================================================
// 主控模式狀態機與座標計算
// =========================================================================
reg [2:0]  sys_mode;
reg [31:0] sys_timer;
reg [2:0]  draw_mode;
reg [31:0] anim_timer;
reg [2:0]  anim_row, anim_col;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sys_mode   <= SYS_IDLE;
		sys_timer <= 32'd0;
	end else begin
		if ((switch_8bit == 8'b0) && (key_pulse == 6)) begin
			sys_mode <= SYS_INITIAL;
		end else if ((switch_8bit[7:4] == 4'b0001) && key_pulse == 8) begin
			sys_mode <= SYS_CONNECT;
		end else if (switch_8bit[7:4] == 4'b0100) begin
			if (key_pulse == 6) begin
				sys_mode <= SYS_EDIT_ORDER;
			end else if (key_pulse == 8) begin
				sys_mode <= SYS_EDIT_DONE;
			end
		end
	end
end

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		draw_mode <= MODE_CLEAR;
		anim_timer <= 32'd0;
	end else begin
		case(sys_mode)
		
			SYS_IDLE: begin
				draw_mode <= MODE_IDLE;
				anim_timer <= 32'd0;
			end
			
			SYS_INITIAL: begin
				if (anim_timer < FREQ_HZ*4) begin
					draw_mode <= MODE_INITIAL;
					anim_timer <= anim_timer + 1'b1;
				end else begin
					draw_mode <= MODE_IDLE;
				end
			end
			
			SYS_CONNECT: begin
				draw_mode <= MODE_IDLE;
				anim_timer <= 32'd0;
			end
			
			SYS_EDIT_ORDER: begin
				draw_mode <= MODE_EDIT;
			end
			
			SYS_EDIT_DONE: begin
				draw_mode <= MODE_EDIT;
			end
			
			default:;
		endcase
	end
end

// =========================================================================
// 畫面渲染電路
// =========================================================================
reg  [23:0] current_color;
wire [2:0]  pixel_row = led_idx[5:3];
wire [2:0]  pixel_col = led_idx[2:0];
reg  [31:0] refresh_timer;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_color <= 0;
	end else begin
		case (draw_mode)
		
			MODE_CLEAR: begin
				current_color = COLOR_BLACK;
			end
			
			MODE_INITIAL: begin
				if (anim_timer < FREQ_HZ) begin
					current_color = COLOR_RED;
				end else if (anim_timer < FREQ_HZ*2) begin
					current_color = COLOR_GREEN;
				end else if (anim_timer < FREQ_HZ*3) begin
					current_color = COLOR_BLUE;
				end else if (anim_timer < FREQ_HZ*4) begin
					current_color = COLOR_BLACK;
				end
			end
			
			MODE_IDLE: begin
				if (pixel_col == 3'd7) begin
					if (pixel_row < (orderQuantity[15:8] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (orderQuantity[15:8] / 10) && ((orderQuantity[15:8] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end else if (pixel_col == 3'd4) begin
					if (pixel_row < (orderQuantity[7:0] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (orderQuantity[7:0] / 10) && ((orderQuantity[7:0] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end else begin
					current_color = COLOR_BLACK;
				end
			end
			
			MODE_EDIT: begin
				// --- 第七列 (col 7): 顯示 訂單01 的 訂購數量 ---
				if (pixel_col == 3'd7) begin
					if (pixel_row < (orderQuantity[15:8] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (orderQuantity[15:8] / 10) && ((orderQuantity[15:8] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end 
				// --- 第六列 (col 6): 顯示 訂單01 的 配額數量 ---
				else if (pixel_col == 3'd6) begin
					if (pixel_row < (productQuota[15:8] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (productQuota[15:8] / 10) && ((productQuota[15:8] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end 
				// --- 第四列 (col 4): 顯示 訂單02 的 訂購數量 ---
				else if (pixel_col == 3'd4) begin
					if (pixel_row < (orderQuantity[7:0] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (orderQuantity[7:0] / 10) && ((orderQuantity[7:0] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end 
				// --- 第三列 (col 3): 顯示 訂單02 的 配額數量 ---
				else if (pixel_col == 3'd3) begin
					if (pixel_row < (productQuota[7:0] / 10)) begin
						current_color = COLOR_RED;
					end
					if (pixel_row == (productQuota[7:0] / 10) && ((productQuota[7:0] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end 
				// --- 其餘點陣關閉 ---
				else begin
					current_color = COLOR_BLACK;
				end
			end
						
			MODE_CONNECT_TEST: begin end

			default: current_color = COLOR_BLACK; // MODE_CLEAR
		endcase
	end
end

// =========================================================================
// WS2812B 狀態機驅動
// =========================================================================
localparam STATE_IDLE  = 2'd0;
localparam STATE_RESET = 2'd1;
localparam STATE_SEND  = 2'd2;
localparam STATE_DELAY = 2'd3;

reg [1:0]  state;
reg [15:0] clk_cnt;
reg [5:0]  led_idx;
reg [4:0]  bit_idx;
reg [2:0]  draw_row, draw_col;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state     <= STATE_IDLE;
		clk_cnt   <= 0;
		led_idx   <= 0;
		bit_idx   <= 23;
		draw_row  <= 0;
		draw_col  <= 0;
		DIN       <= 1'b0;
	end else begin
		case (state)
			STATE_IDLE: begin
				DIN     <= 1'b0;
				clk_cnt <= 0;
				state <= STATE_RESET;
			end

			STATE_RESET: begin
				DIN <= 1'b0;
				if (clk_cnt < RESET_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					clk_cnt <= 0;
					led_idx <= 0;
					bit_idx <= 23;
					state   <= STATE_SEND;
				end
			end

			STATE_SEND: begin
				DIN <= current_color[bit_idx] ? (clk_cnt < T1H_CYCLES) : (clk_cnt < T0H_CYCLES);
				if (clk_cnt < BIT_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					clk_cnt <= 0;
					if (bit_idx > 0) begin
						bit_idx <= bit_idx - 1'b1;
					end else begin
						bit_idx <= 23;
						if (led_idx < 63) begin
							led_idx <= led_idx + 1'b1;
						end else begin
							led_idx <= 0;
							state   <= STATE_DELAY;
						end
					end
				end
			end
			STATE_DELAY: begin
				if (refresh_timer >= CNT_INIT_100US) begin
					refresh_timer <= 0;
					state <= STATE_IDLE;
				end else begin
					refresh_timer <= refresh_timer + 1'b1;
				end
			end

			default: state <= STATE_IDLE;
		endcase
	end
end

endmodule