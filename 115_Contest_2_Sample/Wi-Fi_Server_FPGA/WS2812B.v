module WS2812B #(
	parameter CLK_FREQ = 50_000_000 // 50MHz 時脈
)(
	input  wire        clk,
	input  wire        rst_n,
	
	// 控制介面 (直接接收狀態與座標)
	input  wire [3:0]  current_system_state, // 系統狀態
	input  wire [31:0] system_timer,
	
	input  wire [2:0] coordinate_x, coordinate_y,
	input  wire [1:0] coordinate_state,
	
	// 硬體腳位
	output reg         WS2812B_8x8_DIN,    // DIN 資料輸出腳位
	input  wire        WS2812B_8x8_DOUT    // 溢位資料腳位
);

// -------------------------------------------------------------
// 時序參數定義 (50MHz 下: 1 cycle = 20ns)
// -------------------------------------------------------------
localparam T0H_CYCLES = 17;   // 0.34us
localparam T1H_CYCLES = 35;   // 0.70us
localparam BIT_CYCLES = 62;   // 1.24us
localparam RST_CYCLES = 3000; // 60us Reset (Frame 刷新間隔)

parameter SYS_RESET        = 4'd0,
			 SYS_INITIAL      = 4'd1,
			 SYS_INIT_DONE    = 4'd2,
			 SYS_WiFi_CONNECT = 4'd3,
			 SYS_EDIT_ORDER_1 = 4'd4,
			 SYS_EDIT_ORDER_2 = 4'd5;



// WS2812B 顏色定義
localparam COLOR_OFF      = 24'h00_00_00;
localparam COLOR_WS_RED   = 24'h00_1F_00;
localparam COLOR_WS_GREEN = 24'h1F_00_00;
localparam COLOR_WS_BLUE  = 24'h00_00_1F;

// -------------------------------------------------------------
// 動畫與內部控制邏輯
// -------------------------------------------------------------
reg [5:0]  anim_head_idx;
reg [23:0] anim_timer;
reg        animation_done;
parameter  ANIM_SPEED = (CLK_FREQ / 10 * 3); // 約 300ms 移動一格

// 主控制狀態機
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		anim_head_idx  <= 6'd2;
		anim_timer     <= 24'd0;
		animation_done <= 1'b0;
	end else begin
		if (current_system_state == SYS_INITIAL) begin
			if (!animation_done) begin
				if (anim_timer < ANIM_SPEED) begin
					anim_timer <=  anim_timer + 24'd1;
				end else begin
					anim_timer <= 24'd0;
					if (anim_head_idx >= 6'd63) begin
						animation_done <= 1'b1;
					end else begin
						if ((anim_head_idx % 8) < 3'd7) begin
							anim_head_idx <= anim_head_idx + 6'd1;
						end else begin
							anim_head_idx <= anim_head_idx + 6'd3;
						end
					end
				end
			end
		end
	end
end

// -------------------------------------------------------------
// WS2812B 狀態機與 On-the-fly 繪製 logic
// -------------------------------------------------------------
reg [5:0]  led_cnt;     // 當前發送第幾顆 LED (0~63)
reg [4:0]  bit_cnt;     // 當前發送第幾個 bit (0~23)
reg [12:0] clk_cnt;     // pulse timing counter
reg [23:0] current_grb; // 當前正在發送的 LED 顏色
reg [1:0]  state;

localparam ST_IDLE  = 2'd0,
           ST_SEND  = 2'd1,
           ST_RESET = 2'd2;

// 計算目前 LED (led_cnt) 在 8x8 矩陣中的 (x, y) 座標
wire [2:0] pixel_x = led_cnt[2:0];
wire [2:0] pixel_y = led_cnt[5:3];

// 實時顏色決定器 (On-the-fly Color Generator)
always @(*) begin
	current_grb = COLOR_OFF;
	
	if (current_system_state == SYS_INITIAL) begin
		if (system_timer < CLK_FREQ) begin
			current_grb = COLOR_WS_RED;
		end else if (system_timer < CLK_FREQ * 2) begin
			current_grb = COLOR_WS_GREEN;
		end else begin
			current_grb = COLOR_WS_BLUE;
		end
	end else if (current_system_state == SYS_INIT_DONE) begin
		current_grb = COLOR_OFF;
	end else if (current_system_state == SYS_EDIT_ORDER_1) begin
		if (!animation_done) begin
			if (led_cnt == anim_head_idx)
				current_grb = COLOR_WS_RED;
			else if (anim_head_idx >= 1 && led_cnt == (anim_head_idx - 1))
				current_grb = COLOR_WS_GREEN;
			else if (anim_head_idx >= 2 && led_cnt == (anim_head_idx - 2))
				current_grb = COLOR_WS_BLUE;
		end else begin
			if (coordinate_state == 2'd0) begin
				if ((pixel_x <= 4) && (pixel_x >= 3) &&
				(pixel_y <= 4) && (pixel_y >= 3)) begin
					current_grb = COLOR_WS_RED;
				end
			end else begin
				if ((pixel_x <= coordinate_x + 1) && (pixel_x >= coordinate_x) &&
				(pixel_y <= coordinate_y + 1) && (pixel_y >= coordinate_y)) begin
					current_grb = COLOR_WS_RED;
				end
			end
		end
	end else if (current_system_state == SYS_EDIT_ORDER_1) begin
		if (coordinate_state == 2'd0) begin
			if ((pixel_x <= 1) && (pixel_x >= 0) &&
			(pixel_y <= 1) && (pixel_y >= 0)) begin
				current_grb = COLOR_WS_RED;
			end
		end else begin
			if ((pixel_x <= coordinate_x + 1) && (pixel_x >= coordinate_x) &&
			(pixel_y <= coordinate_y + 1) && (pixel_y >= coordinate_y)) begin
				current_grb = COLOR_WS_RED;
			end
		end
	end
end





// 發送波形控制
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state           <= ST_IDLE;
		WS2812B_8x8_DIN <= 1'b0;
		clk_cnt         <= 13'd0;
		bit_cnt         <= 5'd0;
		led_cnt         <= 6'd0;
	end else begin
		case (state)
			ST_IDLE: begin
				WS2812B_8x8_DIN <= 1'b0;
				clk_cnt         <= 13'd0;
				bit_cnt         <= 5'd0;
				led_cnt         <= 6'd0;
				state           <= ST_SEND;
			end

			ST_SEND: begin
				// 根據目前 bit (MSB first) 輸出波形
				if (current_grb[23 - bit_cnt]) begin
					WS2812B_8x8_DIN <= (clk_cnt < T1H_CYCLES);
				end else begin
					WS2812B_8x8_DIN <= (clk_cnt < T0H_CYCLES);
				end

				if (clk_cnt < BIT_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					clk_cnt <= 13'd0;
					if (bit_cnt < 23) begin
						bit_cnt <= bit_cnt + 1'b1;
					end else begin
						bit_cnt <= 5'd0;
						if (led_cnt < 63) begin
							led_cnt <= led_cnt + 1'b1;
						end else begin
							state <= ST_RESET;
						end
					end
				end
			end

			ST_RESET: begin
				WS2812B_8x8_DIN <= 1'b0;
				if (clk_cnt < 2*RST_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					state <= ST_IDLE; // 自動循環刷新
				end
			end

			default: state <= ST_IDLE;
		endcase
	end
end

endmodule