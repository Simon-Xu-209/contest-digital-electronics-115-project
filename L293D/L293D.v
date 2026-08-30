module L293D (
	input  wire       clk,        // 板上的系統時脈 (例如 50MHz)
	input  wire       rst_n,      // 低電位復位
	input  wire [1:0] dir_select, // 方向控制按鈕/開關：00:停止, 01:正轉, 10:反轉
	input  wire [7:0] speed_duty, // 速度占空比 (0~255)

	// 對應到 L293D 晶片的控制腳位
	output reg        IN1,
	output reg        IN2,
	output reg        EN1
);

// 方向控制邏輯
always @(*) begin
	case (dir_select)
		2'b01: begin // 正轉
			 IN1 = 1'b1;
			 IN2 = 1'b0;
		end
		2'b10: begin // 反轉
			IN1 = 1'b0;
			IN2 = 1'b1;
		end
		default: begin // 停止/煞車
			IN1 = 1'b0;
			IN2 = 1'b0;
		end
	endcase
end

// PWM 產生器 (用於控制 EN1 的速度)
reg [7:0] pwm_counter;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		pwm_counter <= 8'd0;
	else
		pwm_counter <= pwm_counter + 1'b1;
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		EN1 <= 1'b0;
	else begin
		// 當計數器小於設定的 duty cycle 時輸出高電位
		if (pwm_counter < speed_duty && dir_select != 2'b00)
			EN1 <= 1'b1;
		else
			EN1 <= 1'b0;
	end
end

endmodule