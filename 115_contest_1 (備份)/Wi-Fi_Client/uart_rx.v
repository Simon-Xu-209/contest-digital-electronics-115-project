module uart_rx #(
	parameter CLK_FREQ  = 50_000_000,
	parameter BAUD_RATE = 115200
)(
	input  wire       clk,
	input  wire       rst_n,
	input  wire       rx,          // 來自 ESP8266 的 TX 訊號
	output reg  [7:0] rx_data,     // 解碼出的一個 Byte 資料
	output reg        rx_done      // 完成接收一個 Byte 的脈衝 (1-clock pulse)
);

localparam CLKS_PER_BIT = CLK_FREQ / BAUD_RATE; // 50MHz / 115200 ≈ 434

// 狀態定義
localparam S_IDLE  = 2'd0,
			  S_START = 2'd1,
			  S_DATA  = 2'd2,
			  S_STOP  = 3'd3;

reg [1:0]  state;
reg [15:0] clk_cnt;
reg [2:0]  bit_idx;
reg [7:0]  rx_shift_reg;

// 對 rx 輸入做兩級同步（防止防同步亞穩態）
reg rx_sync1, rx_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rx_sync1 <= 1'b1;
		rx_sync2 <= 1'b1;
	end else begin
		rx_sync1 <= rx;
		rx_sync2 <= rx_sync1;
	end
end

// UART RX 狀態機
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state        <= S_IDLE;
		clk_cnt      <= 16'd0;
		bit_idx      <= 3'd0;
		rx_shift_reg <= 8'h00;
		rx_data      <= 8'h00;
		rx_done      <= 1'b0;
	end else begin
		rx_done <= 1'b0; // 預設拉低脈衝

		case (state)
			S_IDLE: begin
				clk_cnt <= 16'd0;
				bit_idx <= 3'd0;
				// 偵測到 Start Bit (下降緣)
				if (rx_sync2 == 1'b0) begin
					state <= S_START;
				end
			end

			S_START: begin
				// 在 Start Bit 中間點驗證 (半個 Bit 週期)
				if (clk_cnt == (CLKS_PER_BIT - 1) / 2) begin
					if (rx_sync2 == 1'b0) begin
						clk_cnt <= 16'd0; // 重置計數器，準備採樣 Data Bit
						state   <= S_DATA;
					end else begin
						state   <= S_IDLE; // 雜訊過濾，回 IDLE
					end
				end else begin
					clk_cnt <= clk_cnt + 1'b1;
				end
			end

			S_DATA: begin
				// 在 Data Bit 中間點採樣 (一個完整 Bit 週期)
				if (clk_cnt == CLKS_PER_BIT - 1) begin
					clk_cnt              <= 16'd0;
					rx_shift_reg[bit_idx] <= rx_sync2; // LSB 先收

					if (bit_idx == 3'd7) begin
						bit_idx <= 3'd0;
						state   <= S_STOP;
					end else begin
						bit_idx <= bit_idx + 1'b1;
					end
				end else begin
					clk_cnt <= clk_cnt + 1'b1;
				end
			end

			S_STOP: begin
				// 等待 Stop Bit 週期結束
				if (clk_cnt == CLKS_PER_BIT - 1) begin
					rx_data <= rx_shift_reg;
					rx_done <= 1'b1; // 發出 1 個 Clock 的接收完成脈衝
					state   <= S_IDLE;
				end else begin
					clk_cnt <= clk_cnt + 1'b1;
				end
			end

			default: state <= S_IDLE;
		endcase
	end
end

endmodule