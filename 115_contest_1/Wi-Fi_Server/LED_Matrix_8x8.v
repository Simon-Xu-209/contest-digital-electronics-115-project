module LED_Matrix_8x8 (
	input wire clk, // 50 MHz
	input wire rst_n,
	input wire [7:0] switch_8bit,
	input wire [3:0] PB,
	input	[15:0] x_axis,   // ADS1115 X軸
	input [15:0] y_axis,   // ADS1115 Y軸
	input wire stop,
	output reg DIN         // J6_DIN
);

reg [3:0] PB_buffer;   // 2x2
always@(posedge clk) begin
	if(!rst_n) begin
		PB_buffer <= 4'b0;
	end else begin
		if (PB[0]) begin
			PB_buffer[0] <= 1'b1;
		end else if (PB[1]) begin
			PB_buffer[0] <= 1'b0;
		end
	end
end

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
localparam MODE_CONTROL   = 2'd2; // 模式 2: 手動控制 2x2 方塊

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
// 搖桿門檻判定與邊緣偵測
// -------------------------------------------------------------------------
// 門檻設定
wire joy_up_level    = (y_axis < 16'd100);
wire joy_down_level  = (y_axis > 16'd13900);
wire joy_left_level  = (x_axis < 16'd100);
wire joy_right_level = (x_axis > 16'd13700);

wire any_joy_active  = (joy_up_level || joy_down_level || joy_left_level || joy_right_level);

// -------------------------------------------------------------------------
// 2. 自動重覆 (Auto-repeat) 計時器：每 200ms (10,000,000 cycles) 移動一次
// -------------------------------------------------------------------------
reg [23:0] move_timer;
reg        move_pulse;

always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            move_timer <= 0;
            move_pulse <= 1'b0;
        end else begin
            move_pulse <= 1'b0; // 預設拉低，只維持 1 個脈衝週期
            if (any_joy_active) begin
                if (move_timer == 0) begin
                    move_pulse <= 1'b1;                   // 觸發移動
                    move_timer <= 24'd10_000_000 - 1;      // 設定 200ms 倒數 (50MHz)
                end else begin
                    move_timer <= move_timer - 1'b1;
                end
            end else begin
                move_timer <= 0; // 沒推搖桿時清零，確保按下瞬間「第一時間立刻移動」
            end
        end
end

reg stop_reg;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		stop_reg       <= 0;
	end else begin
		if (stop) begin
			stop_reg <= 1'b1;
		end else if(PB[1]) begin
			stop_reg <= 1'b0;
		end
	end
end

// -------------------------------------------------------------------------
// 同步行/列計數器、手動座標與模式切換邏輯
// -------------------------------------------------------------------------
reg [23:0] timer_cnt = 0;      // 0.3 秒計時器 (用於模式0)
reg [2:0]  row = 0;            // 模式1: R 的行座標
reg [2:0]  col = 3'd2;         // 模式1: R 的列座標

reg [2:0]  ctrl_row = 3'd3;    // 模式2: 2x2方塊左下角行座標 (起點中央)
reg [2:0]  ctrl_col = 3'd3;    // 模式2: 2x2方塊左下角列座標 (起點中央)

// 影格同步暫存器 (供狀態機鎖存使用)
reg [1:0]  draw_mode = MODE_CLEAR;
reg [2:0]  draw_row = 0;
reg [2:0]  draw_col = 0;
reg        update_req = 0; // 畫面刷新旗標

reg [1:0]  sys_mode_delay = MODE_CLEAR;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		timer_cnt  <= 0;
		row        <= 0;
		col        <= 3'd2;
		ctrl_row   <= 3'd3;
		ctrl_col   <= 3'd3;
		sys_mode   <= MODE_CLEAR;
		update_req <= 1'b1;
	end else begin
		sys_mode_delay <= sys_mode;
		if (switch_8bit[1:0] != 2'b10 || switch_8bit[1:0] != 2'b11) begin
			timer_cnt  <= 0;
			row        <= 0;
			col        <= 3'd2;
			ctrl_row   <= 3'd3;
			ctrl_col   <= 3'd3;
			sys_mode   <= MODE_CLEAR;
		end else begin
			if (sys_mode == MODE_CLEAR && switch_8bit[1:0] == 2'b10/* && PB_buffer[0]*/) begin
				sys_mode <= MODE_ANIMATION;
				row      <= 0;
            col      <= 3'd2;
			end else if (sys_mode == MODE_CLEAR && switch_8bit[1:0] == 2'b11) begin
				sys_mode <= MODE_CONTROL;
				row      <= 0;
            col      <= 3'd2;
			end
		end
		// ----------------- 模式 1: RGB 跑馬燈 -----------------
		if (sys_mode == MODE_ANIMATION) begin
			if (timer_cnt < 24'd15_000_000 - 1) begin
				timer_cnt <= timer_cnt + 1'b1;
			end else begin
				timer_cnt  <= 0;
				update_req <= 1'b1;
				if (col < 3'd7) begin
					col <= col + 1'b1;
				end else begin
					col <= 3'd2;
					if (row < 3'd7) begin
						row <= row + 1'b1;
					end else begin
						// R 碰到了左上角 (row=7, col=7) 滿檔，切換到手動控制模式
						row      <= 0;
						col      <= 3'd2;
						sys_mode <= MODE_CONTROL; // 模式切換
						// 重置手動方塊的位置到中央
						if(switch_8bit[1:0] == 2'b10)begin
							ctrl_row <= 3'd3;
							ctrl_col <= 3'd3;
						end else begin
							ctrl_row <= 3'd0;
							ctrl_col <= 3'd0;
						end
					end
				end
			end
		end
		// ----------------- 模式 2: 手動控制 2x2 方塊 -----------------
		else if (sys_mode == MODE_CONTROL)begin
			if (!stop_reg && move_pulse) begin
				update_req <= 1'b1;
				// 上移控制 (Row + 1)，上限為 6 (因為方塊是 2x2)
				if (joy_up_level && (ctrl_row < 3'd6)) begin
					ctrl_row <= ctrl_row + 1'b1;
				end
				// 下移控制 (Row - 1)，下限為 0
				if (joy_down_level && (ctrl_row > 3'd0)) begin
					ctrl_row <= ctrl_row - 1'b1;
				end
				// 左移控制 (Col + 1)，上限為 6
				if (joy_left_level && (ctrl_col < 3'd6)) begin
					ctrl_col <= ctrl_col + 1'b1;
				end
				// 右移控制 (Col - 1)，下限為 0
				if (joy_right_level && (ctrl_col > 3'd0)) begin
					ctrl_col <= ctrl_col - 1'b1;
				end
			end
		end
		if (sys_mode != sys_mode_delay) begin
			update_req <= 1'b1;
			if (sys_mode == MODE_CONTROL) begin
				ctrl_row <= 3'd3; // 強制重置回到正中央
				ctrl_col <= 3'd3;
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
				current_color = COLOR_RED;
			end else if (current_led_col == draw_col - 1'b1) begin
				current_color = COLOR_GREEN;
			end else if (current_led_col == draw_col - 2'd2) begin
				current_color = COLOR_BLUE;
			end else begin
				current_color = COLOR_BLOCK;
			end
		end else begin
			current_color = COLOR_BLOCK;
		end
	end
	else if (draw_mode == MODE_CONTROL) begin
		// 渲染 2x2 手動紅色方塊 (檢查目前點是否落在 2x2 範圍內)
		if ((current_led_row == draw_row || current_led_row == draw_row + 1'b1) &&
			(current_led_col == draw_col || current_led_col == draw_col + 1'b1)) begin
			current_color = COLOR_RED; // 2x2 方塊亮紅色
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
		draw_row  <= 0;
		draw_col  <= 0;
		DIN       <= 1'b0;
	end else begin
		case (state)
			STATE_IDLE: begin
				DIN     <= 1'b0;
				clk_cnt <= 0;
				if (update_req) begin
					draw_mode <= sys_mode; // 鎖存當前模式
					// 根據模式鎖存不同的座標來源
					draw_row  <= (sys_mode == MODE_ANIMATION) ? row : ctrl_row;
					draw_col  <= (sys_mode == MODE_ANIMATION) ? col : ctrl_col;
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