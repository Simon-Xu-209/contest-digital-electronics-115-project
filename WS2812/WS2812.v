 module WS2812 (
	input wire clk,   // 50 MHz
	input wire rst_n, // Reset
	output reg DIN    // J6_DIN
);


// 時序參數設定
localparam T0H_CYCLES   = 17;
localparam BIT_CYCLES   = 62;
localparam T1H_CYCLES   = 45;
localparam RESET_CYCLES = 5000; // 100 us RESET

// 狀態機 (WS2812B 驅動)
localparam STATE_IDLE  = 2'd0;
localparam STATE_RESET = 2'd1;
localparam STATE_SEND  = 2'd2;

// 模式定義
localparam MODE_CLEAR     = 2'd0;
localparam MODE_ANIMATION = 2'd1; // 模式 1: RGB 跑馬燈

reg [1:0]  sys_mode = MODE_ANIMATION;
reg [1:0]  state = STATE_IDLE;
reg [15:0] clk_cnt = 0;
reg [5:0]  led_idx = 0;        // 0 ~ 63 (共 64 顆 LED)
reg [4:0]  bit_idx = 23;       // 0 ~ 23
reg [23:0] current_color;

// 顏色定義
localparam COLOR_BLOCK = 24'h00_00_00;
localparam COLOR_RED   = 24'h00_FF_00;
localparam COLOR_GREEN = 24'hFF_00_00;
localparam COLOR_BLUE  = 24'h00_00_FF;
localparam COLOR_WHITE = 24'hFF_FF_FF;


// -------------------------------------------------------------------------
// 同步行/列計數器、手動座標與模式切換邏輯
// -------------------------------------------------------------------------

reg [23:0] timer_cnt = 0;      // 0.3 秒計時器 (用於模式0)


// 影格同步暫存器 (供狀態機鎖存使用)
reg [1:0]  draw_mode = MODE_CLEAR;
reg [2:0]  draw_row = 0;
reg [2:0]  draw_col = 0;
reg        update_req = 0; // 畫面刷新旗標
reg [1:0]  sys_mode_delay = MODE_CLEAR;

reg reversal; // 反轉跑馬燈方向

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		timer_cnt  <= 0;
		draw_row   <= 0;
		draw_col   <= 3'd2;
		sys_mode   <= MODE_CLEAR;
		update_req <= 1'b1;
		reversal   <= 1'b0;
	end else begin
		sys_mode <= MODE_ANIMATION;
		// ----------------- RGB 跑馬燈 -----------------
		if (sys_mode == MODE_ANIMATION) begin
			if (timer_cnt < 24'd15_000_000 - 1) begin
				timer_cnt <= timer_cnt + 1'b1;
			end else begin
				timer_cnt  <= 0;
				update_req <= 1'b1;
				
				if (reversal ==  1'b0) begin // 由右下往左上
					if (draw_row < 3'd7) begin
						if (draw_row[0] == 0) begin
							if (draw_col < 3'd7) begin
								draw_col <= draw_col + 1'b1;
							end else begin
								draw_row <= draw_row + 1'b1;
							end
						end else if (draw_row[0] == 1) begin
							if (draw_col > 3'd0) begin
								draw_col <= draw_col - 1'b1;
							end else begin
								draw_row <= draw_row + 1'b1;
							end
						end
					end else if (draw_col > 3'd0) begin
						draw_col <= draw_col - 1'b1;
					end else begin
						reversal <= 1'b1;
						draw_col <= 3'd7;
						draw_row <= 3'd7;
					end
				end if (reversal ==  1'b1) begin // 由左上往右下
					if (draw_row > 3'd0) begin
						if (draw_row[0] == 1) begin
							if (draw_col > 3'd0) begin
								draw_col <= draw_col - 1'b1;
							end else begin
								draw_row <= draw_row - 1'b1;
							end
						end else if (draw_row[0] == 0) begin
							if (draw_col < 3'd7) begin
								draw_col <= draw_col + 1'b1;
							end else begin
								draw_row <= draw_row - 1'b1;
							end
						end
					end  else if (draw_col < 3'd7) begin
						draw_col <= draw_col + 1'b1;
					end else begin
						reversal <= 1'b0;
						draw_col <= 3'd0;
						draw_row <= 3'd0;
					end
				end
			end
		end
		if (state == STATE_IDLE && update_req) begin
			update_req <= 1'b0;
		end
	end
end


// -------------------------------------------------------------------------
// 顏色組合電路 (根據 draw_mode 渲染不同畫面)
// -------------------------------------------------------------------------
wire [2:0] current_led_row = led_idx[5:3];
wire [2:0] current_led_col = led_idx[2:0];

always @(*) begin
	if (draw_mode == MODE_ANIMATION) begin
		// 渲染跑馬燈畫面
		if (current_led_row == draw_row) begin
			if (current_led_col == draw_col) begin
				if (reversal == 1'b0) begin
					current_color = COLOR_RED;
				end else begin
					current_color = COLOR_BLUE;
				end
			end else begin
				current_color = COLOR_BLOCK;
			end
		end else begin
			current_color = COLOR_BLOCK;
		end
	end
	else begin
		current_color = COLOR_BLOCK;
	end
end


// -------------------------------------------------------------------------
// 主控制狀態機 (在 IDLE 時一併鎖存模式與座標)
// -------------------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state     <= STATE_IDLE;
		clk_cnt   <= 0;
		led_idx   <= 0;
		bit_idx   <= 23;
		draw_mode <= MODE_CLEAR;
		DIN       <= 1'b0;
	end else begin
		case (state)
			STATE_IDLE: begin
				DIN     <= 1'b0;
				clk_cnt <= 0;
				if (update_req) begin
					draw_mode <= sys_mode; // 鎖存當前模式
					state     <= STATE_RESET;
				end
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
				if (current_color[bit_idx]) begin
					DIN <= (clk_cnt < T1H_CYCLES) ? 1'b1 : 1'b0;
				end else begin
					DIN <= (clk_cnt < T0H_CYCLES) ? 1'b1 : 1'b0;
				end

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
							state   <= STATE_IDLE;
						end
					end
				end
			end

			default: state <= STATE_IDLE;
		endcase
	end
end

endmodule 