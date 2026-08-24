module LED_Matrix_8x8 (
	input  wire        clk,         // 50 MHz
	input  wire        rst_n,
	input  wire [7:0]  switch_8bit, // 指撥開關
	input  wire [3:0]  KEY,         // 按鈕
	output reg         DIN          // WS2812B 資料輸出
);

// =========================================================================
// 參數定義
// =========================================================================
localparam FREQ_HZ        = 50_000_000;
localparam CNT_INIT_10US  = (FREQ_HZ / 100000) - 1; // 10 微秒週期
//localparam CNT_ANIM_0_3S  = (FREQ_HZ * 3 / 10) - 1; // 0.3 秒週期
//localparam CNT_JOY_0_2S   = (FREQ_HZ * 2 / 10) - 1; // 0.2 秒週期

// WS2812B 時序參數 (50MHz clk)
localparam T0H_CYCLES     = 17;
localparam BIT_CYCLES     = 62;
localparam T1H_CYCLES     = 45;
localparam RESET_CYCLES   = 5000;

// 系統模式定義
localparam MODE_CLEAR    = 2'd0;
localparam MODE_INITIAL = 2'd1;
localparam MODE_CONTROL  = 2'd2;
localparam MODE_SETTING  = 2'd3; // 新增：座標設定模式 (switch == 2'b11)

// 顏色定義 (24-bit: G-R-B)
localparam COLOR_WHITE = 24'hFF_FF_FF;
localparam COLOR_RED   = 24'h00_FF_00;
localparam COLOR_GREEN = 24'hFF_00_00;
localparam COLOR_BLUE  = 24'h00_00_FF;
localparam COLOR_BLACK = 24'h00_00_00;

// =========================================================================
// 主控模式狀態機與座標計算
// =========================================================================
reg [1:0]  sys_mode;
reg [31:0] anim_timer;
reg [2:0]  anim_row, anim_col;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sys_mode   <= MODE_CLEAR;
	end else begin
		if (switch_8bit == 8'b0) begin
			sys_mode <= MODE_INITIAL;
		end else begin
			sys_mode <= MODE_CLEAR;
		end

	end
end



// =========================================================================
// 畫面渲染電路
// =========================================================================
reg  [23:0] current_color;
wire [2:0]  pixel_row = led_idx[5:3];
wire [2:0]  pixel_col = led_idx[2:0];
reg  [8:0]  refresh_timer;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		anim_timer <= 0;
	end else begin
		case (draw_mode)
			MODE_CLEAR: begin
				current_color = COLOR_BLACK;
			end
			MODE_INITIAL: begin
				if (anim_timer <= FREQ_HZ) begin
					current_color = COLOR_RED;
					anim_timer <= anim_timer + 1;
				end else if (anim_timer <= FREQ_HZ*2) begin
					current_color = COLOR_GREEN;
					anim_timer <= anim_timer + 1;
				end else if (anim_timer <= FREQ_HZ*3) begin
					current_color = COLOR_BLUE;
					anim_timer <= anim_timer + 1;
				end else begin
					if (pixel_row == draw_row) begin
						if (pixel_col == draw_col) begin
							current_color = COLOR_WHITE;
						end else begin
							current_color = COLOR_BLACK;
						end
					end else begin
						current_color = COLOR_BLACK;
					end
				end
				/*if (pixel_row == draw_row) begin
					if (pixel_col == draw_col) begin
						current_color = COLOR_WHITE;
					end else begin
						current_color = COLOR_WHITE;
					end
				end else begin
					current_color = COLOR_RED;
				end*/
			end

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
reg [1:0]  draw_mode;
reg [2:0]  draw_row, draw_col;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state     <= STATE_IDLE;
		clk_cnt   <= 0;
		led_idx   <= 0;
		bit_idx   <= 23;
		draw_mode <= MODE_CLEAR;
		draw_row  <= 0;
		draw_col  <= 0;
		DIN       <= 1'b0;
	end else begin
		case (state)
			STATE_IDLE: begin
				DIN     <= 1'b0;
				clk_cnt <= 0;
				draw_mode <= sys_mode;
				// 根據不同模式選擇鎖存座標來源
				/*case (sys_mode)
					MODE_INITIAL: begin draw_row <= anim_row; draw_col <= anim_col; end
					MODE_CONTROL:   begin draw_row <= ctrl_row; draw_col <= ctrl_col; end
					MODE_SETTING:   begin draw_row <= set_row;  draw_col <= set_col;  end
					default:        begin draw_row <= 3'd0;     draw_col <= 3'd0;     end
				endcase*/
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
				if (refresh_timer >= CNT_INIT_10US) begin
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