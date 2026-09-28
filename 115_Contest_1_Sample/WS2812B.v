module WS2812B #(
	parameter CLK_FREQ = 50_000_000 // 50MHz 時脈
)(
	input  wire                   clk,
	input  wire                   rst_n,
	
	// 控制介面
	input  wire                   draw_en,      // 繪製旗標 (正緣觸發更新並送出資料)
	input  wire [64*24-1:0]       led_grb_data, // 64顆 LED 展開向量 (LED0:[23:0] ... LED63:[1535:1512])
	output reg                    busy,         // 傳送中旗標
	
	// 硬體腳位
	output wire                   WS2812B_8x8_DIN,  // 溢位資料腳位
	output reg                    WS2812B_8x8_DOUT  // DIN 資料輸出腳位
);

assign WS2812B_8x8_DIN = 1'b1;

// -------------------------------------------------------------
// 時序參數 (50MHz)
// -------------------------------------------------------------
localparam T0H_CYCLES = 17;   // 0.34us
localparam T1H_CYCLES = 35;   // 0.70us
localparam BIT_CYCLES = 62;   // 1.24us
localparam RST_CYCLES = 3000; // 60us Reset

// 正緣偵測 draw_en
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

reg [1535:0] shift_reg;     // 儲存 64 顆 LED 靜態資料 (不移位)
reg [10:0]   total_bit_cnt; // 總共發送的 bit 數 (0 ~ 1535)
reg [12:0]   clk_cnt;
reg [1:0]    state;

localparam ST_IDLE  = 2'd0,
           ST_SEND  = 2'd1,
           ST_RESET = 2'd2;

// -------------------------------------------------------------
// 動態索引計算 (Index Mapping)
// (total_bit_cnt / 24) * 24：計算目前是第幾顆 LED (0~63) 的基底位址
// 23 - (total_bit_cnt % 24)：該顆 LED 24-bit 內，由高位元 (Bit 23) 優先送出
// -------------------------------------------------------------
wire [10:0] bit_index = ((total_bit_cnt / 11'd24) * 11'd24) + (11'd23 - (total_bit_cnt % 11'd24));

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state            <= ST_IDLE;
		busy             <= 1'b0;
		WS2812B_8x8_DOUT <= 1'b0;
		clk_cnt          <= 13'd0;
		total_bit_cnt    <= 11'd0;
		shift_reg        <= {1536{1'b0}};
	end else begin
		case (state)
			ST_IDLE: begin
				WS2812B_8x8_DOUT <= 1'b0;
				clk_cnt          <= 13'd0;
				total_bit_cnt    <= 11'd0;
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
					WS2812B_8x8_DOUT <= (clk_cnt < T1H_CYCLES);
				end else begin
					WS2812B_8x8_DOUT <= (clk_cnt < T0H_CYCLES);
				end

				// 單一 Bit 的脈衝週期計數
				if (clk_cnt < BIT_CYCLES - 1) begin
					clk_cnt <= clk_cnt + 1'b1;
				end else begin
					clk_cnt <= 13'd0;
					
					// 累加發送的總位元數
					if (total_bit_cnt < 1535) begin
						total_bit_cnt <= total_bit_cnt + 1'b1;
					end else begin
						state <= ST_RESET;
					end
				end
			end

			ST_RESET: begin
				WS2812B_8x8_DOUT <= 1'b0;
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