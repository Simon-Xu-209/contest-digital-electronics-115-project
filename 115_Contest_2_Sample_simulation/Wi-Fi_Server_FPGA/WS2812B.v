module WS2812B #(
	parameter CLK_FREQ = 50_000_000 // 50MHz 時脈
)(
	input  wire        clk,
	input  wire        rst_n,
	
	input  wire [3:0]  previous_system_state,
	input  wire [3:0]  current_system_state, // 系統狀態
	input  wire [3:0]  next_system_state,
	input  wire [31:0] system_timer,
	
	input  wire [2:0]  coordinate_x, coordinate_y,
	input  wire [1:0]  coordinate_state,
	
	input [23:0] orderQuantity, // 訂購數量
	input [23:0] bidAmount,     // 出價金額
	input [23:0] productQuota,  // 商品配額
	input [47:0] grandTotal,    // 付款總額
	
	// 硬體腳位
	output reg         WS2812B_8x8_DIN,    // DIN 資料輸出腳位
	input  wire        WS2812B_8x8_DOUT    // 溢位資料腳位
);

// -------------------------------------------------------------
// 時序參數定義 (基準時脈 50MHz -> 1 clock cycle = 20ns)
// -------------------------------------------------------------
localparam T0H_CYCLES = 17;    // 邏輯 '0' 高電位寬度: 17 * 20ns = 0.34us (規格: 0.35us ±150ns)
localparam T1H_CYCLES = 35;    // 邏輯 '1' 高電位寬度: 35 * 20ns = 0.70us (規格: 0.70us ±150ns)
localparam BIT_CYCLES = 62;    // 單一 Bit 完整週期:   62 * 20ns = 1.24us (規格: 1.25us ±150ns)
localparam RST_CYCLES = 15000; // 基礎 Reset 單位:   15000 * 20ns = 300us (規格要求 > 50us，但 50us 太快了，不要用)

parameter SYS_RESET           = 4'd0,
			 SYS_INITIAL         = 4'd1,
			 SYS_INIT_DONE       = 4'd2,
			 SYS_WiFi_CONNECT    = 4'd3,
			 SYS_EDIT_ORDER_03   = 4'd4,
			 SYS_EDIT_ORDER_02   = 4'd5,
			 SYS_EDIT_ORDER_xx   = 4'd6,
			 SYS_EDIT_ORDER_DONE = 4'd7;



// WS2812B 顏色定義           -GG-RR-BB-
localparam COLOR_WHITE  = 24'h1F_1F_1F; // 白色
localparam COLOR_OFF    = 24'h00_00_00; // 全暗
localparam COLOR_RED    = 24'h00_1F_00; // 紅色
localparam COLOR_GREEN  = 24'h1F_00_00; // 綠色
localparam COLOR_BLUE   = 24'h00_00_1F; // 藍色
localparam COLOR_YELLOW = 24'h1F_1F_00; // 黃色
localparam COLOR_PURPLE = 24'h1F_00_1F; // 紫色
localparam COLOR_CYAN   = 24'h00_1F_1F; // 青色



// -------------------------------------------------------------
// 動畫與內部控制邏輯
// -------------------------------------------------------------
reg [5:0]  anim_frame;
reg [31:0] anim_timer;
reg        animation_done;
parameter  ANIM_SPEED = CLK_FREQ; // 約 1s 移動一格

// 主控制狀態機
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
			if (current_system_state == SYS_INITIAL) begin
				if (!animation_done) begin
					if (anim_timer < ANIM_SPEED) begin
						anim_timer <= anim_timer + 32'd1;
					end else begin
						anim_timer <= 32'd0;
						if (anim_frame >= 6'd4) begin
							animation_done <= 1'b1;
						end else begin
							anim_frame <= anim_frame + 32'd1;
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
reg [13:0] clk_cnt;     // pulse timing counter
reg [23:0] current_color; // 當前正在發送的 LED 顏色
reg [1:0]  WS2812B_state; // WS2812B 繪製狀態



localparam ST_IDLE  = 2'd0,
           ST_SEND  = 2'd1,
           ST_RESET = 2'd2;

// 計算目前 LED (led_cnt) 在 8x8 矩陣中的 (x, y) 座標
wire [2:0] pixel_x = led_cnt[2:0];
wire [2:0] pixel_y = led_cnt[5:3];

// 實時顏色決定器 (On-the-fly Color Generator)
always @(*) begin
	current_color = COLOR_OFF;
	
	if (current_system_state == SYS_INITIAL) begin
		case(anim_frame)
			6'd0: begin
				if ((pixel_x == 5) && ((pixel_y == 0) || (pixel_y == 6))) begin
					current_color = COLOR_RED;
				end else if ((pixel_x >= 3) && (pixel_x <= 4) && ((pixel_y == 0) || (pixel_y == 4) || (pixel_y == 7))) begin
					current_color = COLOR_RED;
				end else if ((pixel_x == 2) && (pixel_y != 0) && (pixel_y != 4) && (pixel_y != 7)) begin
					current_color = COLOR_RED;
				end else begin
					current_color = COLOR_BLUE;
				end
			end
			6'd1: begin
				if ((pixel_x == 6) && ((pixel_y == 0) || (pixel_y == 6))) begin
					current_color = COLOR_GREEN;
				end else if ((pixel_x == 5) && ((pixel_y == 0) || (pixel_y == 1) || (pixel_y == 7))) begin
					current_color = COLOR_GREEN;
				end else if ((pixel_x == 4) && ((pixel_y == 0) || (pixel_y == 2) || (pixel_y == 7))) begin
					current_color = COLOR_GREEN;
				end else if ((pixel_x == 3) && ((pixel_y == 0) || (pixel_y == 3) || (pixel_y == 7))) begin
					current_color = COLOR_GREEN;
				end else if ((pixel_x == 2) && (pixel_y != 2) && (pixel_y != 3) && (pixel_y != 7)) begin
					current_color = COLOR_GREEN;
				end else begin
					current_color = COLOR_OFF;
				end
			end
			6'd2: begin
				if ((pixel_x == 5) && ((pixel_y == 0) || (pixel_y == 6))) begin
					current_color = COLOR_BLUE;
				end else if (pixel_x == 4) begin
					current_color = COLOR_BLUE;
				end else if ((pixel_x == 3) && (pixel_y == 0)) begin
					current_color = COLOR_BLUE;
				end else begin
					current_color = COLOR_RED;
				end
			end
			6'd3: begin
				if (((pixel_x == 6) || (pixel_x == 2)) && (pixel_y != 0) && (pixel_y != 7)) begin
					current_color = COLOR_RED;
				end else if ((pixel_x <= 5) && (pixel_x >= 3) && ((pixel_y == 0) || (pixel_y == 7))) begin
					current_color = COLOR_RED;
				end else begin
					current_color = COLOR_GREEN;
				end
			end
			6'd4: begin
				current_color = COLOR_OFF;
			end
		endcase
	end else if (current_system_state == SYS_INIT_DONE) begin
		// --- 第七列: 顯示 訂單03 的訂購數量 ---
		if (pixel_y == 3'd7) begin
			if (current_system_state == SYS_EDIT_ORDER_03) begin
				if (system_timer < CLK_FREQ) begin
					if (pixel_x > (7 - (orderQuantity[23:16] / 10))) begin
						current_color = COLOR_RED;
					end
					if ((pixel_x == (7 - (orderQuantity[23:16] / 10))) && ((orderQuantity[23:16] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[23:16] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - (orderQuantity[23:16] / 10))) && ((orderQuantity[23:16] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		// --- 第四列: 顯示 訂單02 的訂購數量 ---
		else if (pixel_y == 3'd4) begin
			if (current_system_state == SYS_EDIT_ORDER_02) begin
				if (system_timer < CLK_FREQ) begin
					if (pixel_x > (7 - (orderQuantity[15:8] / 10))) begin
						current_color = COLOR_RED;
					end
					if ((pixel_x == (7 - orderQuantity[15:8] / 10)) && ((orderQuantity[15:8] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[15:8] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - orderQuantity[15:8] / 10)) && ((orderQuantity[15:8] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		// --- 第一列: 顯示 訂單xx 的訂購數量 ---
		else if (pixel_y == 3'd1) begin
			if (current_system_state == SYS_EDIT_ORDER_xx) begin
				if (system_timer < CLK_FREQ) begin
					if ((pixel_x > (7 - (orderQuantity[7:0] / 10)))) begin
						current_color = COLOR_RED;
					end
					if (pixel_x == ((7 - orderQuantity[7:0] / 10)) && ((orderQuantity[7:0] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[7:0] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - orderQuantity[7:0] / 10)) && ((orderQuantity[7:0] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		else begin
			current_color = COLOR_OFF;
		end
	end else if ((current_system_state == SYS_EDIT_ORDER_03) || (current_system_state == SYS_EDIT_ORDER_02) || (current_system_state == SYS_EDIT_ORDER_xx)) begin
		// --- 第七列: 顯示 訂單03 的訂購數量 ---
		if (pixel_y == 3'd7) begin
			if (current_system_state == SYS_EDIT_ORDER_03) begin
				if (system_timer < CLK_FREQ) begin
					if (pixel_x > (7 - (orderQuantity[23:16] / 10))) begin
						current_color = COLOR_RED;
					end
					if ((pixel_x == (7 - (orderQuantity[23:16] / 10))) && ((orderQuantity[23:16] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[23:16] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - (orderQuantity[23:16] / 10))) && ((orderQuantity[23:16] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		// --- 第六列: 顯示 訂單03 的配額數量 ---
		else if (pixel_y == 3'd6) begin
			if (pixel_x > (7 - (productQuota[23:16] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - (productQuota[23:16] / 10))) && ((productQuota[23:16] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第四列: 顯示 訂單02 的訂購數量 ---
		else if (pixel_y == 3'd4) begin
			if (current_system_state == SYS_EDIT_ORDER_02) begin
				if (system_timer < CLK_FREQ) begin
					if (pixel_x > (7 - (orderQuantity[15:8] / 10))) begin
						current_color = COLOR_RED;
					end
					if ((pixel_x == (7 - orderQuantity[15:8] / 10)) && ((orderQuantity[15:8] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[15:8] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - orderQuantity[15:8] / 10)) && ((orderQuantity[15:8] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		// --- 第三列: 顯示 訂單02 的配額數量 ---
		else if (pixel_y == 3'd3) begin
			if (pixel_x > (7 - (productQuota[15:8] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - productQuota[15:8] / 10)) && ((productQuota[15:8] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第一列: 顯示 訂單xx 的訂購數量 ---
		else if (pixel_y == 3'd1) begin
			if (current_system_state == SYS_EDIT_ORDER_xx) begin
				if (system_timer < CLK_FREQ) begin
					if ((pixel_x > (7 - (orderQuantity[7:0] / 10)))) begin
						current_color = COLOR_RED;
					end
					if (pixel_x == ((7 - orderQuantity[7:0] / 10)) && ((orderQuantity[7:0] % 10) > 0)) begin
						current_color = COLOR_GREEN;
					end
				end
			end else begin
				if (pixel_x > (7 - (orderQuantity[7:0] / 10))) begin
					current_color = COLOR_RED;
				end
				if ((pixel_x == (7 - orderQuantity[7:0] / 10)) && ((orderQuantity[7:0] % 10) > 0)) begin
					current_color = COLOR_GREEN;
				end
			end
		end
		// --- 第零列: 顯示 訂單xx 的配額數量 ---
		else if (pixel_y == 3'd0) begin
			if ((pixel_x > (7 - (productQuota[7:0] / 10)))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - (productQuota[7:0] / 10))) && ((productQuota[7:0] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 其餘點陣關閉 ---
		else begin
			current_color = COLOR_OFF;
		end
	end else if (current_system_state == SYS_EDIT_ORDER_DONE) begin
		// --- 第七列: 顯示 訂單03 的訂購數量 ---
		if (pixel_y == 3'd7) begin
			if (pixel_x > (7 - (orderQuantity[23:16] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - (orderQuantity[23:16] / 10))) && ((orderQuantity[23:16] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第六列: 顯示 訂單03 的配額數量 ---
		else if (pixel_y == 3'd6) begin
			if (pixel_x > (7 - (productQuota[23:16] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - (productQuota[23:16] / 10))) && ((productQuota[23:16] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第四列: 顯示 訂單02 的訂購數量 ---
		else if (pixel_y == 3'd4) begin
			if (pixel_x > (7 - (orderQuantity[15:8] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - orderQuantity[15:8] / 10)) && ((orderQuantity[15:8] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第三列: 顯示 訂單02 的配額數量 ---
		else if (pixel_y == 3'd3) begin
			if (pixel_x > (7 - (productQuota[15:8] / 10))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - productQuota[15:8] / 10)) && ((productQuota[15:8] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第一列: 顯示 訂單xx 的訂購數量 ---
		else if (pixel_y == 3'd1) begin
			if ((pixel_x > (7 - (orderQuantity[7:0] / 10)))) begin
				current_color = COLOR_RED;
			end
			if (pixel_x == ((7 - orderQuantity[7:0] / 10)) && ((orderQuantity[7:0] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 第零列: 顯示 訂單xx 的配額數量 ---
		else if (pixel_y == 3'd0) begin
			if ((pixel_x > (7 - (productQuota[7:0] / 10)))) begin
				current_color = COLOR_RED;
			end
			if ((pixel_x == (7 - (productQuota[7:0] / 10))) && ((productQuota[7:0] % 10) > 0)) begin
				current_color = COLOR_GREEN;
			end
		end
		// --- 其餘點陣關閉 ---
		else begin
			current_color = COLOR_OFF;
		end
	end
end





// 發送波形控制
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		WS2812B_state   <= ST_IDLE;
		WS2812B_8x8_DIN <= 1'b0;
		clk_cnt         <= 14'd0;
		bit_cnt         <= 5'd0;
		led_cnt         <= 6'd0;
	end else begin
		case (WS2812B_state)
			// [狀態 0: 準備與歸零] 初始化計數器，準備發送新一輪 64 顆 LED 影格
			ST_IDLE: begin
				WS2812B_8x8_DIN <= 1'b0;
				clk_cnt         <= 14'd0;
				bit_cnt         <= 5'd0;
				led_cnt         <= 6'd0;
				WS2812B_state   <= ST_SEND;
			end
			
			// [狀態 1: 逐位元發送 PWM 波形] 依序發送 64 顆 LED x 24 bits = 1536 bits
			ST_SEND: begin
				// 1. 產生單一 bit 的歸零碼波形 (MSB 高位元優先發送: bit 23 -> bit 0)
				//    透過比較器產生工作週期 (Duty Cycle)，剩餘週期自動補 0 (低電位)
				if (current_color[23 - bit_cnt]) begin
					WS2812B_8x8_DIN <= (clk_cnt < T1H_CYCLES); // Bit=1: 前 0.70us 為 1，後 0.54us 為 0
				end else begin
					WS2812B_8x8_DIN <= (clk_cnt < T0H_CYCLES); // Bit=0: 前 0.34us 為 1，後 0.90us 為 0
				end
				// 2. 三層巢狀計數器推進邏輯 (Clock -> Bit -> LED)
				if (clk_cnt < BIT_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1; // 尚未滿 1.24us，繼續計數當前 bit 寬度
				end else begin
					clk_cnt <= 14'd0; // 滿 1.24us，歸零準備下一個 bit
					if (bit_cnt < 23) begin
						bit_cnt <= bit_cnt + 1'b1; // 當前 LED 尚未送完 24 bits (G8-R8-B8)
					end else begin
						bit_cnt <= 5'd0; // 單顆 LED 24 bits 發送完畢，切換下一顆
						if (led_cnt < 63) begin
							led_cnt <= led_cnt + 1'b1; // 尚未送完 64 顆燈珠 (0~63)
						end else begin
							WS2812B_state <= ST_RESET; // 64 顆全數送完，進入 Reset 鎖存階段
						end
					end
				end
			end
			
			// [狀態 2: 影格鎖存 (Latch / Reset)] 維持低電位讓內部 IC 將暫存資料更新至燈珠
			ST_RESET: begin
				WS2812B_8x8_DIN <= 1'b0;
				// 維持 7500 cycles (150us > 50us 規格下限)，確保燈珠穩定鎖存不閃爍
				if (clk_cnt < RST_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					WS2812B_state <= ST_IDLE; // 鎖存完成，跳回 IDLE 自動刷新下一張畫面
				end
			end

			default: WS2812B_state <= ST_IDLE;
		endcase
	end
end

endmodule