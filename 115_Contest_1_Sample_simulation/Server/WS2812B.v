module WS2812B #(
	parameter CLK_FREQ = 50_000_000 // 50MHz 時脈
)(
	input  wire        clk,
	input  wire        rst_n,
	
	// 系統狀態
	input  wire [3:0] previous_system_state, current_system_state, next_system_state,
	
	input  wire [2:0] coordinate_x, coordinate_y,
	input  wire [2:0] coordinate_state,
	
	input  wire [7:0] brightness,
	
	input  wire [7:0] detected_num,
	
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
			 SYS_IDLE         = 4'd2,
			 SYS_TFT_LCD      = 4'd3,
			 SYS_WiFi_CONNECT = 4'd4,
			 SYS_JOYSTICK     = 4'd5,
			 SYS_INTEGRATION  = 4'd6;



// WS2812B 顏色定義
localparam COLOR_OFF    = 24'h00_00_00;
localparam COLOR_RED    = 24'h00_1F_00;
localparam COLOR_GREEN  = 24'h1F_00_00;
localparam COLOR_BLUE   = 24'h00_00_1F;
localparam COLOR_YELLOW = 24'h1F_1F_00;

// -------------------------------------------------------------
// 動畫與內部控制邏輯
// -------------------------------------------------------------
reg [3:0]  anim_frame;
reg [31:0] anim_timer;
reg        animation_done;
parameter  ANIM_SPEED = CLK_FREQ; // 約 1s 移動一格

// 主控制邏輯
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		anim_frame     <= 6'd0;
		anim_timer     <= 32'd0;
		animation_done <= 1'b0;
	end else begin
		if (next_system_state != current_system_state) begin
			anim_frame     <= 6'd0;
			anim_timer     <= 32'd0;
			animation_done <= 1'b0;
		end else begin
			if (current_system_state == SYS_JOYSTICK) begin
				if (!animation_done) begin
					if (anim_timer < ANIM_SPEED) begin
						anim_timer <=  anim_timer + 32'd1;
					end else begin
						anim_timer <= 32'd0;
						if (anim_frame >= 4'd7) begin
							animation_done <= 1'b1;
						end else begin
							anim_frame <= anim_frame + 4'd1;
						end
					end
				end
			end else if (current_system_state == SYS_INTEGRATION) begin
				if (!animation_done) begin
					if (anim_timer < ANIM_SPEED) begin
						anim_timer <=  anim_timer + 32'd1;
					end else begin
						anim_timer <= 32'd0;
						if (anim_frame >= 4'd4) begin
							animation_done <= 1'b1;
						end else begin
							anim_frame <= anim_frame + 4'd1;
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
reg [5:0]  led_cnt;       // 當前發送第幾顆 LED (0~63)
reg [4:0]  bit_cnt;       // 當前發送第幾個 bit (0~23)
reg [12:0] clk_cnt;       // pulse timing counter
reg [23:0] current_color; // 當前正在發送的 LED 顏色
reg [1:0]  state;

localparam ST_IDLE  = 2'd0,
           ST_SEND  = 2'd1,
           ST_RESET = 2'd2;

// 計算目前 LED (led_cnt) 在 8x8 矩陣中的 (x, y) 座標
wire [2:0] pixel_x = led_cnt[2:0];
wire [2:0] pixel_y = led_cnt[5:3];

// 實時顏色決定器 (On-the-fly Color Generator)
always @(*) begin
	current_color = COLOR_OFF;
	
	if (current_system_state == SYS_JOYSTICK) begin
		if (!animation_done) begin
			case(anim_frame)
				0: begin
					current_color = COLOR_OFF;
				end
				1: begin
					if ((pixel_x == 4) && (pixel_y == 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 3) && (pixel_y == 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 4) && (pixel_y == 3)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 3) && (pixel_y == 3)) begin
						current_color = COLOR_YELLOW;
					end
				end
				2: begin
					if ((pixel_x <= 5) && (pixel_x >= 4) && (pixel_y <= 5) && (pixel_y >= 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x <= 3) && (pixel_x >= 2) && (pixel_y <= 5) && (pixel_y >= 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x <= 5) && (pixel_x >= 4) && (pixel_y <= 3) && (pixel_y >= 2)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x <= 3) && (pixel_x >= 2) && (pixel_y <= 3) && (pixel_y >= 2)) begin
						current_color = COLOR_YELLOW;
					end
				end
				3: begin
					if ((pixel_x <= 6) && (pixel_x >= 4) && (pixel_y <= 6) && (pixel_y >= 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x <= 3) && (pixel_x >= 1) && (pixel_y <= 6) && (pixel_y >= 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x <= 6) && (pixel_x >= 4) && (pixel_y <= 3) && (pixel_y >= 1)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x <= 3) && (pixel_x >= 1) && (pixel_y <= 3) && (pixel_y >= 1)) begin
						current_color = COLOR_YELLOW;
					end
				end
				4: begin
					if ((pixel_x <= 7) && (pixel_x >= 4) && (pixel_y <= 7) && (pixel_y >= 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x <= 3) && (pixel_x >= 0) && (pixel_y <= 7) && (pixel_y >= 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x <= 7) && (pixel_x >= 4) && (pixel_y <= 3) && (pixel_y >= 0)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x <= 3) && (pixel_x >= 0) && (pixel_y <= 3) && (pixel_y >= 0)) begin
						current_color = COLOR_YELLOW;
					end
				end
				5: begin
					if ((pixel_x <= 6) && (pixel_x >= 4) && (pixel_y <= 6) && (pixel_y >= 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x <= 3) && (pixel_x >= 1) && (pixel_y <= 6) && (pixel_y >= 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x <= 6) && (pixel_x >= 4) && (pixel_y <= 3) && (pixel_y >= 1)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x <= 3) && (pixel_x >= 1) && (pixel_y <= 3) && (pixel_y >= 1)) begin
						current_color = COLOR_YELLOW;
					end
				end
				6: begin
					if ((pixel_x <= 5) && (pixel_x >= 4) && (pixel_y <= 5) && (pixel_y >= 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x <= 3) && (pixel_x >= 2) && (pixel_y <= 5) && (pixel_y >= 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x <= 5) && (pixel_x >= 4) && (pixel_y <= 3) && (pixel_y >= 2)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x <= 3) && (pixel_x >= 2) && (pixel_y <= 3) && (pixel_y >= 2)) begin
						current_color = COLOR_YELLOW;
					end
				end
				7: begin
					if ((pixel_x == 4) && (pixel_y == 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 3) && (pixel_y == 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 4) && (pixel_y == 3)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 3) && (pixel_y == 3)) begin
						current_color = COLOR_YELLOW;
					end
				end
			endcase
		end else begin
			if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
				current_color = COLOR_RED;
			end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
				current_color = COLOR_GREEN;
			end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
				current_color = COLOR_BLUE;
			end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
				current_color = COLOR_YELLOW;
			end
		end
	end else if (current_system_state == SYS_INTEGRATION) begin
		if (!animation_done) begin
			case(anim_frame)
				0: begin
					current_color = COLOR_OFF;
				end
				1: begin
					if ((pixel_x == 4) && (pixel_y == 4)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 3) && (pixel_y == 4)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 4) && (pixel_y == 3)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 3) && (pixel_y == 3)) begin
						current_color = COLOR_YELLOW;
					end
				end
				2: begin
					if ((pixel_x == 5) && (pixel_y == 5)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 2) && (pixel_y == 5)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 5) && (pixel_y == 2)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 2) && (pixel_y == 2)) begin
						current_color = COLOR_YELLOW;
					end
				end
				3: begin
					if ((pixel_x == 6) && (pixel_y == 6)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 1) && (pixel_y == 6)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 6) && (pixel_y == 1)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 1) && (pixel_y == 1)) begin
						current_color = COLOR_YELLOW;
					end
				end
				4: begin
					if ((pixel_x == 7) && (pixel_y == 7)) begin
						current_color = COLOR_RED;
					end else if ((pixel_x == 0) && (pixel_y == 7)) begin
						current_color = COLOR_GREEN;
					end else if ((pixel_x == 7) && (pixel_y == 0)) begin
						current_color = COLOR_BLUE;
					end else if ((pixel_x == 0) && (pixel_y == 0)) begin
						current_color = COLOR_YELLOW;
					end
				end
			endcase
		end else begin
			if (coordinate_state == 3'd0) begin
				if ((pixel_x == 7) && (pixel_y == 7)) begin
					current_color = COLOR_RED;
				end else if ((pixel_x == 0) && (pixel_y == 7)) begin
					current_color = COLOR_GREEN;
				end else if ((pixel_x == 7) && (pixel_y == 0)) begin
					current_color = COLOR_BLUE;
				end else if ((pixel_x == 0) && (pixel_y == 0)) begin
					current_color = COLOR_YELLOW;
				end
			end else if (coordinate_state == 3'd1) begin
				if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {{8'd0}, brightness, {8'd0}};
				end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {brightness, {8'd0}, {8'd0}};
				end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {{8'd0}, {8'd0}, brightness};
				end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {brightness, brightness, {8'd0}};
				end
			end else if (coordinate_state == 3'd2) begin
				if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {{8'd0}, 8'd255, {8'd0}};
				end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {8'd255, {8'd0}, {8'd0}};
				end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {{8'd0}, {8'd0}, 8'd255};
				end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {8'd255, 8'd255, {8'd0}};
				end
			end else if (coordinate_state == 3'd3) begin
				case(detected_num)
					"0": begin
						if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
							current_color = {8'd0, 8'd255, 8'd0};
						end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_GREEN;
						end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_BLUE;
						end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_YELLOW;
						end
					end
					"1": begin
						if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_RED;
						end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
							current_color = {8'd255, 8'd0, 8'd0};
						end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_BLUE;
						end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_YELLOW;
						end
					end
					"2": begin
						if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_RED;
						end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_GREEN;
						end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = {8'd0, 8'd0, 8'd255};
						end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_YELLOW;
						end
					end
					"3": begin
						if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_RED;
						end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
							current_color = COLOR_GREEN;
						end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = COLOR_BLUE;
						end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
							current_color = {8'd255, 8'd255, 8'd0};
						end
					end
				endcase
			end else if (coordinate_state == 3'd4) begin
				if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {8'd0, 8'd255, 8'd0};
				end else if ((pixel_x == 7 - (coordinate_x + 1)) && (pixel_y == 7 - coordinate_y)) begin
					current_color = {8'd255, 8'd0, 8'd0};
				end else if ((pixel_x == 7 - coordinate_x) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {8'd0, 8'd0, 8'd255};
				end else if ((pixel_x == 7 - (coordinate_x + 1 )) && (pixel_y == 7 - (coordinate_y + 1))) begin
					current_color = {8'd255, 8'd255, 8'd0};
				end
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
				if (current_color[23 - bit_cnt]) begin
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