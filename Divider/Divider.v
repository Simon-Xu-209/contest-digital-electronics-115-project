module Divider(
	input wire rst_n,
	input wire clk_50MHz, // 50MHz <=> 20ns
	output reg T_1s,
	output reg T_100ms,
	output reg T_50ms,
	output reg T_20ms,
	output reg T_10ms,
	output reg T_1ms
);

// 計數值 = 半週期次數 - 1
reg [24:0] cnt_1s;     // 0.5s  翻轉一次 = 25,000,000 次
reg [21:0] cnt_100ms;  // 50ms  翻轉一次 = 2,500,000 次
reg [20:0] cnt_50ms;   // 25ms  翻轉一次 = 1,250,000 次
reg [19:0] cnt_20ms;   // 10ms  翻轉一次 = 500,000 次
reg [18:0] cnt_10ms;   // 5ms   翻轉一次 = 250,000 次
reg [15:0] cnt_1ms;    // 0.5ms 翻轉一次 = 25,000 次

always @(posedge clk_50MHz or negedge rst_n) begin
	if (!rst_n) begin
		cnt_1s    <= 25'd0;
		cnt_100ms <= 22'd0;
		cnt_50ms  <= 20'd0;
		cnt_20ms  <= 20'd0;
		cnt_10ms  <= 19'd0;
		cnt_1ms   <= 16'd0;
		T_1s      <= 1'b0;
		T_100ms   <= 1'b0;
		T_50ms    <= 1'b0;
		T_20ms    <= 1'b0;
		T_10ms    <= 1'b0;
		T_1ms     <= 1'b0;
	end else begin
		if (cnt_1s == 25000000 - 1) begin
			cnt_1s <= 25'd0;
			T_1s   <= ~T_1s;
		end else begin
			cnt_1s <= cnt_1s + 1'b1;
		end

		if (cnt_100ms == 2500000 - 1) begin
			cnt_100ms <= 22'd0;
			T_100ms   <= ~T_100ms;
		end else begin
			cnt_100ms <= cnt_100ms + 1'b1;
		end

		if (cnt_50ms == 1250000 - 1) begin
			cnt_50ms <= 21'd0;
			T_50ms   <= ~T_50ms;
		end else begin
			cnt_50ms <= cnt_50ms + 1'b1;
		end

		if (cnt_20ms == 500000 - 1) begin
			cnt_20ms <= 20'd0;
			T_20ms   <= ~T_20ms;
		end else begin
			cnt_20ms <= cnt_20ms + 1'b1;
		end

		if (cnt_10ms == 250000 - 1) begin
			cnt_10ms <= 18'd0;
			T_10ms   <= ~T_10ms;
		end else begin
			cnt_10ms <= cnt_10ms + 1'b1;
		end

		if (cnt_1ms == 2500 - 1) begin
			cnt_1ms <= 16'd0;
			T_1ms   <= ~T_1ms;
		end else begin
			cnt_1ms <= cnt_1ms + 1'b1;
		end
	end
end

endmodule