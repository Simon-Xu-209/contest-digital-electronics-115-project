module Buzzer (
	input wire clk,             // 系統時鐘 (假設為 50MHz)
	input wire rst_n,           // 低電位復位
	input wire [15:0] freq_div, // 頻率除頻計數上限 (限制最小為 2500)
	input wire [7:0] volume,    // 音量控制 (PWM 占空比: 0~255)
	output reg BZ               // 蜂鳴器驅動信號
);

reg [15:0] counter;
wire [15:0] safe_freq_div;
wire [15:0] threshold;

// 限制最高頻率在 20kHz (假設 50MHz clk，週期最小不得小於 2500)
// 若 freq_div 設定小於 2500，強迫設定為 2500
assign safe_freq_div = (freq_div < 16'd2500) ? 16'd2500 : freq_div;

// 根據 volume (0~255) 計算高電位的切換臨界點 (Threshold)
// 算法：Threshold = (safe_freq_div * volume) / 256
assign threshold = (safe_freq_div * volume) >> 8;

// 計數器與 PWM 輸出邏輯
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		counter <= 16'd0;
		BZ      <= 1'b0;
	end else begin
		if (counter >= safe_freq_div - 1'b1) begin
			counter <= 16'd0;
		end else begin
			counter <= counter + 1'b1;
		end

		// 當計數器小於 threshold 時輸出高電位
		if (volume == 8'd0) begin
			BZ <= 1'b0; // 音量為 0 時直接靜音
		end else begin
			BZ <= (counter < threshold) ? 1'b1 : 1'b0;
		end
	end
end

endmodule