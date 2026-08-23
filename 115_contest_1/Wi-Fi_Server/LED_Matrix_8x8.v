module LED_Matrix_8x8 (
	input  wire        clk,         // 50 MHz
	input  wire        rst_n,
	input  wire [7:0]  switch_8bit, // 指撥開關
	input  wire [3:0]  PB,          // 按鈕
	input  wire [15:0] x_axis,      // ADS1115 X軸
	input  wire [15:0] y_axis,      // ADS1115 Y軸
	input  wire        stop,        // 搖桿 Z 軸按下 (Active High)
	output wire [2:0]  LED_row,
	output wire [2:0]  LED_col,
	output reg         DIN          // WS2812B 資料輸出
);

// =========================================================================
// 參數定義
// =========================================================================
localparam FREQ_HZ        = 50_000_000;
localparam CNT_ANIM_0_3S  = (FREQ_HZ * 3 / 10) - 1; // 0.3 秒週期
localparam CNT_JOY_0_2S   = (FREQ_HZ * 2 / 10) - 1; // 0.2 秒週期

// WS2812B 時序參數 (50MHz clk)
localparam T0H_CYCLES     = 17;
localparam BIT_CYCLES     = 62;
localparam T1H_CYCLES     = 45;
localparam RESET_CYCLES   = 5000;

// 系統模式定義
localparam MODE_CLEAR     = 2'd0;
localparam MODE_ANIMATION = 2'd1;
localparam MODE_CONTROL   = 2'd2;
localparam MODE_SETTING   = 2'd3; // 新增：座標設定模式 (switch == 2'b11)

// 顏色定義 (24-bit: G-R-B)
localparam COLOR_OFF   = 24'h00_00_00;
localparam COLOR_RED   = 24'h00_FF_00;
localparam COLOR_GREEN = 24'hFF_00_00;
localparam COLOR_BLUE  = 24'h00_00_FF;

// =========================================================================
// 搖桿 Z 軸 (stop) 邊緣偵測 (Posedge Pulse)
// =========================================================================
reg stop_r1, stop_r2;
wire z_push_pulse = (stop_r1 && !stop_r2); // 抓取按下的瞬間脈衝

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		stop_r1 <= 1'b0;
		stop_r2 <= 1'b0;
	end else begin
		stop_r1 <= stop;
		stop_r2 <= stop_r1;
	end
end

// =========================================================================
// 搖桿方向判定與 Auto-repeat 觸發脈衝
// =========================================================================
wire joy_up    = (y_axis < 16'd100);
wire joy_down  = (y_axis > 16'd13900);
wire joy_left  = (x_axis < 16'd100);
wire joy_right = (x_axis > 16'd13000);
wire joy_active = joy_up || joy_down || joy_left || joy_right;

reg [23:0] move_timer;
reg        move_pulse;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		move_timer <= 0;
		move_pulse <= 1'b0;
	end else begin
		move_pulse <= 1'b0;
		if (joy_active) begin
			if (move_timer == 0) begin
				move_pulse <= 1'b1;
				move_timer <= CNT_JOY_0_2S;
			end else begin
				move_timer <= move_timer - 1'b1;
			end
		end else begin
			move_timer <= 0;
		end
	end
end

// =========================================================================
// MODE_CONTROL 下的鎖定邏輯 (PB[1] 可解鎖)
// =========================================================================
reg stop_lock;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		stop_lock <= 1'b0;
	end else begin
		if (stop) begin
			stop_lock <= 1'b1;     // 按下搖桿 X 軸鎖定移動
		end else if (PB[1]) begin
			stop_lock <= 1'b0;     // PB[1] 解除鎖定
		end
	end
end

// =========================================================================
// 主控模式狀態機與座標計算
// =========================================================================
reg [1:0]  sys_mode;
reg [23:0] anim_timer;
reg [2:0]  anim_row, anim_col;
reg [2:0]  ctrl_row, ctrl_col;
reg [2:0]  set_row, set_col;       // MODE_SETTING 的座標
reg        set_lock;               // MODE_SETTING 的固定鎖定狀態
reg        update_req;

assign LED_row = set_row + ((sys_mode == MODE_CLEAR) ? 1'b0 : 1'b1);
assign LED_col = set_col + ((sys_mode == MODE_CLEAR) ? 1'b0 : 1'b1);
	 
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sys_mode   <= MODE_CLEAR;
		anim_timer <= 0;
		anim_row   <= 3'd0;
		anim_col   <= 3'd2;
		ctrl_row   <= 3'd3;
		ctrl_col   <= 3'd3;
		set_row    <= 3'd0;
		set_col    <= 3'd0;
		set_lock   <= 1'b0;
		update_req <= 1'b1;
	end else begin
		// ----- 開關狀態重置關卡 -----
		if (switch_8bit[1:0] == 2'b00 || switch_8bit[1:0] == 2'b01) begin
			sys_mode   <= MODE_CLEAR;
			anim_timer <= 0;
			anim_row   <= 3'd0;
			anim_col   <= 3'd2;
			ctrl_row   <= 3'd3;
			ctrl_col   <= 3'd3;
			set_row    <= 3'd0;
			set_col    <= 3'd0;
			set_lock   <= 1'b0;
		end 
		// ----- 開關 10：啟動跑馬燈 -----
		else if (switch_8bit[1:0] == 2'b10 && sys_mode == MODE_CLEAR) begin
			sys_mode   <= MODE_ANIMATION;
			anim_row   <= 3'd0;
			anim_col   <= 3'd2;
			update_req <= 1'b1;
		end
		// ----- 開關 11：進 Clear 模式，按 Z 軸切換到座標設定模式 -----
		else if (switch_8bit[1:0] == 2'b11) begin
			if (sys_mode != MODE_SETTING && sys_mode != MODE_CLEAR) begin
				sys_mode <= MODE_CLEAR;
			end
                
			// 在 CLEAR 模式下按下 Z 軸，切到 MODE_SETTING 並預設在右下角 (0,0)
			if (sys_mode == MODE_CLEAR && z_push_pulse) begin
				sys_mode   <= MODE_SETTING;
				set_row    <= 3'd0; // 右下角 Row 0
				set_col    <= 3'd0; // 右下角 Col 0
				set_lock   <= 1'b0; // 預設未鎖定
				update_req <= 1'b1;
			end
		end

		// ----- 模式 1: RGB 跑馬燈邏輯 -----
		if (sys_mode == MODE_ANIMATION) begin
			if (anim_timer < CNT_ANIM_0_3S) begin
				anim_timer <= anim_timer + 1'b1;
			end else begin
				anim_timer <= 0;
				update_req <= 1'b1;
				if (anim_col < 3'd7) begin
					anim_col <= anim_col + 1'b1;
				end else begin
					anim_col <= 3'd2;
					if (anim_row < 3'd7) begin
						anim_row <= anim_row + 1'b1;
					end else begin
						sys_mode <= MODE_CONTROL;
						ctrl_row <= 3'd3;
						ctrl_col <= 3'd3;
					end
				end
			end
		end

		// ----- 模式 2: 手動控制 2x2 方塊邏輯 -----
		else if (sys_mode == MODE_CONTROL) begin
			if (!stop_lock && move_pulse) begin
				update_req <= 1'b1;
				if (joy_up    && (ctrl_row < 3'd6)) ctrl_row <= ctrl_row + 1'b1;
				if (joy_down  && (ctrl_row > 3'd0)) ctrl_row <= ctrl_row - 1'b1;
				if (joy_left  && (ctrl_col < 3'd6)) ctrl_col <= ctrl_col + 1'b1;
				if (joy_right && (ctrl_col > 3'd0)) ctrl_col <= ctrl_col - 1'b1;
			end
		end

		// ----- 模式 3: 座標設定模式 (switch[1:0] == 2'b11) -----
		else if (sys_mode == MODE_SETTING) begin
			// Z 軸再次按下：開關(Toggle) 鎖定狀態
			if (z_push_pulse) begin
				set_lock <= ~set_lock;
			end

			// 未鎖定時，允許搖桿移動 2x2 方塊
			if (!set_lock && move_pulse) begin
				update_req <= 1'b1;
				if (joy_up    && (set_row < 3'd6)) set_row <= set_row + 1'b1;
				if (joy_down  && (set_row > 3'd0)) set_row <= set_row - 1'b1;
				if (joy_left  && (set_col < 3'd6)) set_col <= set_col + 1'b1;
				if (joy_right && (set_col > 3'd0)) set_col <= set_col - 1'b1;
			end
		end

		if (state == STATE_IDLE && update_req) begin
			update_req <= 1'b0;
		end
	end
end

// =========================================================================
// 畫面渲染電路
// =========================================================================
reg  [23:0] current_color;
wire [2:0]  pixel_row = led_idx[5:3];
wire [2:0]  pixel_col = led_idx[2:0];

always @(*) begin
	case (draw_mode)
		MODE_ANIMATION: begin
			if (pixel_row == draw_row) begin
				if      (pixel_col == draw_col)        current_color = COLOR_RED;
				else if (pixel_col == draw_col - 1'b1) current_color = COLOR_GREEN;
				else if (pixel_col == draw_col - 2'd2) current_color = COLOR_BLUE;
				else                                   current_color = COLOR_OFF;
			end else begin
				current_color = COLOR_OFF;
			end
		end

		MODE_CONTROL, MODE_SETTING: begin
			// 渲染 2x2 方塊 (畫面上包含 (draw_row, draw_col) 到 (draw_row+1, draw_col+1))
			if ((pixel_row == draw_row || pixel_row == draw_row + 1'b1) && (pixel_col == draw_col || pixel_col == draw_col + 1'b1)) begin
				current_color = COLOR_RED;
			end else begin
				current_color = COLOR_OFF;
			end
		end

		default: current_color = COLOR_OFF; // MODE_CLEAR
	endcase
end

// =========================================================================
// WS2812B 狀態機驅動
// =========================================================================
localparam STATE_IDLE  = 2'd0;
localparam STATE_RESET = 2'd1;
localparam STATE_SEND  = 2'd2;

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
				if (update_req) begin
					draw_mode <= sys_mode;
					// 根據不同模式選擇鎖存座標來源
					case (sys_mode)
						MODE_ANIMATION: begin draw_row <= anim_row; draw_col <= anim_col; end
						MODE_CONTROL:   begin draw_row <= ctrl_row; draw_col <= ctrl_col; end
						MODE_SETTING:   begin draw_row <= set_row;  draw_col <= set_col;  end
						default:        begin draw_row <= 3'd0;     draw_col <= 3'd0;     end
					endcase
					state <= STATE_RESET;
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