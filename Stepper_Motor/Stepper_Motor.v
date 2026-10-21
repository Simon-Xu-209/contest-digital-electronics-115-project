module Stepper_Motor (
	input  wire       clk,          // 板載主時脈 50MHz
	input  wire       rst_n,        // 低電位復位
	input  wire [7:0] switch_8bit,  // 8 Bit 開關
	output reg  [3:0] IN,           // 連接至 L293D 的 IN1~IN4
	output wire [1:0] EN            // 連接至 L293D 的 EN1(Enable 1,2), EN2(Enable 3,4)
);

// =========================================================
// 控制訊號定義
// =========================================================
wire       dir         = switch_8bit[0]; // 1: 順時針, 0: 逆時針
wire       enable      = switch_8bit[1]; // 1: 啟動, 0: 暫停
wire [1:0] speed_select = switch_8bit[3:2]; // 2-bit 調速控制 (4 段速度)

// 將 L293D 的 Enable 腳位跟隨 enable 訊號
assign EN = {enable, enable};

// =========================================================
// 動態速度分頻器 (依據 speed_select 決定分頻上界)
// =========================================================
reg [31:0] cnt_target;

// 根據 switch_8bit[3:2] 切換 4 種轉速 (50MHz 時脈)
always @(*) begin
	case (speed_select)
		2'b00:  cnt_target = 32'd199_999; // 最慢 (約 31.25Hz 切換率，極高扭力)
		2'b01:  cnt_target = 32'd99_999;  // 慢速 (約 62.5Hz 切換率，原本建議穩定速)
		2'b10:  cnt_target = 32'd49_999;  // 中速 (約 125Hz 切換率)
		2'b11:  cnt_target = 32'd24_999;  // 快速 (約 250Hz 切換率，極限速度)
		default: cnt_target = 32'd99_999;
	endcase
end

reg [31:0] clk_cnt;
reg        step_clk;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		clk_cnt  <= 32'd0;
		step_clk <= 1'b0;
	end else if (clk_cnt >= cnt_target) begin
		clk_cnt  <= 32'd0;
		step_clk <= ~step_clk;
	end else begin
		clk_cnt  <= clk_cnt + 1'b1;
	end
end

// =========================================================
// 8 步半步勵磁狀態機
// =========================================================
reg [2:0] step_state;

always @(posedge step_clk or negedge rst_n) begin
	if (!rst_n) begin
		step_state <= 3'd0;
		IN         <= 4'b0000;
	end else if (enable) begin
		if (dir)
			step_state <= step_state + 3'b1; // 正轉
		else
			step_state <= step_state - 3'b1; // 反轉

		case (step_state)
			3'b000: IN <= 4'b0001; // Step 1: IN1
			3'b001: IN <= 4'b0011; // Step 2: IN1 + IN2
			3'b010: IN <= 4'b0010; // Step 3: IN2
			3'b011: IN <= 4'b0110; // Step 4: IN2 + IN3
			3'b100: IN <= 4'b0100; // Step 5: IN3
			3'b101: IN <= 4'b1100; // Step 6: IN3 + IN4
			3'b110: IN <= 4'b1000; // Step 7: IN4
			3'b111: IN <= 4'b1001; // Step 8: IN4 + IN1
			default: IN <= 4'b0000;
		endcase
	end else begin
		IN <= 4'b0000; // 暫停時關閉輸出，防止發熱
	end
end

endmodule