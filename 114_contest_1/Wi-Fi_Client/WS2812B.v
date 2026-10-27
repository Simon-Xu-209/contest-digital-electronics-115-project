module WS2812B #(
	parameter CLK_FREQ = 50_000_000 // 50MHz 時脈
)(
	input  wire             clk,
	input  wire             rst_n,
	
	// 控制介面
	input  wire             draw_en,      // 繪製旗標 (正緣觸發更新並送出資料)
	input  wire [64*24-1:0] led_grb_data, // 64顆 LED 展開向量 (LED0:[23:0] ... LED63:[1535:1512]，總共 1536 bits)
	output reg              busy,         // 資料傳送中旗標 (High 表示正在發送波形)
	
	// 硬體腳位
	output reg              WS2812B_8x8_DIN, // DIN 資料輸出腳位
	input  wire             WS2812B_8x8_DOUT // 溢位資料腳位
);

// -------------------------------------------------------------
// 時序參數定義 (50MHz 下: 1 cycle = 20ns)
// WS2812B 規格：
//   - T0H (碼 0 高電位時間): ~0.35us (17 cycles * 20ns = 340ns)
//   - T1H (碼 1 高電位時間): ~0.70us (35 cycles * 20ns = 700ns)
//   - TBIT (單一 Bit 總週期): ~1.25us (62 cycles * 20ns = 1240ns)
//   - TRS  (Reset 低電位時間): > 50us  (3000 cycles * 20ns = 60us)
// -------------------------------------------------------------
localparam T0H_CYCLES = 17;   // 0.34us
localparam T1H_CYCLES = 35;   // 0.70us
localparam BIT_CYCLES = 62;   // 1.24us
localparam RST_CYCLES = 3000; // 60us Reset

// 正緣觸發偵測器 (draw_en)
reg draw_en_d1, draw_en_d2;
wire draw_pos_edge = (draw_en_d1 && !draw_en_d2);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		draw_en_d1 <= 1'b0;
		draw_en_d2 <= 1'b0;
	end else begin
		draw_en_d1 <= draw_en;
		draw_en_d2 <= draw_en_d1;
	end
end

reg [1535:0] shift_reg;  // 儲存 64 顆 LED 靜態資料 (不移位)
reg [4:0]    bit_in_led; // 當前 LED 內的 Bit 計數器 (0 ~ 23)
reg [5:0]    led_cnt;    // 當前 LED 顆數計數器 (0 ~ 63)
reg [12:0]   clk_cnt;    // 單一 Bit / Reset 時序計數器
reg [1:0]    state;

localparam ST_IDLE  = 2'd0,
           ST_SEND  = 2'd1,
           ST_RESET = 2'd2;

// ------------------------------------------------------------------------------------------------
// 動態索引計算 (Index Mapping)
// ------------------------------------------------------------------------------------------------
wire [10:0] bit_index = (led_cnt * 11'd24) + (11'd23 - bit_in_led);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state            <= ST_IDLE;
		busy             <= 1'b0;
		WS2812B_8x8_DIN  <= 1'b0;
		clk_cnt          <= 13'd0;
		bit_in_led       <= 5'd0;
		led_cnt          <= 6'd0;
		shift_reg        <= {1536{1'b0}};
	end else begin
		case (state)
			ST_IDLE: begin
				WS2812B_8x8_DIN <= 1'b0;
				clk_cnt          <= 13'd0;
				bit_in_led      <= 5'd0;
				led_cnt         <= 6'd0;
				if (draw_pos_edge) begin
					shift_reg <= led_grb_data; // 靜態鎖存全畫面資料
					busy      <= 1'b1;
					state     <= ST_SEND;
				end else begin
					busy <= 1'b0;
				end
			end

			ST_SEND: begin
				// 根據 bit_index 直接獲取當前應該輸出的 bit 值
				if (shift_reg[bit_index]) begin
					WS2812B_8x8_DIN <= (clk_cnt < T1H_CYCLES);// 發送 '1' 碼波形
				end else begin
					WS2812B_8x8_DIN <= (clk_cnt < T0H_CYCLES);// 發送 '0' 碼波形
				end

				// 單一 Bit 的脈衝週期計數
				if (clk_cnt < BIT_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					clk_cnt <= 13'd0;
					
					// 推進至下一個 Bit
					if (bit_in_led < 23) begin
						bit_in_led <= bit_in_led + 1'b1;
					end else begin
						bit_in_led <= 5'd0;
						if (led_cnt < 63) begin
							led_cnt <= led_cnt + 1'b1;
						end else begin
							state <= ST_RESET;
						end
					end
				end
			end

			ST_RESET: begin
				WS2812B_8x8_DIN <= 1'b0; // 低電位保持以觸發 Reset/Latch 波形
				if (clk_cnt < RST_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					busy  <= 1'b0;
					state <= ST_IDLE;
				end
			end

			default: state <= ST_IDLE;
		endcase
	end
end

endmodule