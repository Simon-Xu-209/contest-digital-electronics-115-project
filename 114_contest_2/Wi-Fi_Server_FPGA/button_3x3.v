module button_3x3(
	input            clk,    // 50MHz 時脈
	input      [2:0] column, // 矩陣鍵盤「行」輸入 (Column 1~3)
	output reg [2:0] row,    // 矩陣鍵盤「列」輸出 (Row 1~3)
	output reg [3:0] key,    // 輸出的按鍵值 (0~8, 無按鍵為 9)
	output reg       pressed // 按鍵按下觸發訊號 (0: 無動作, 1: 按下觸發)
);

// -------------------------------------------------------------
// 產生約 20ms 的掃描時脈 (除頻器)
// -------------------------------------------------------------
reg [18:0] clk_cnt;
wire T20ms = clk_cnt[18]; // 50MHz / 2^19 ≈ 95Hz (約 10.5ms 翻轉一次)

always @(posedge clk) begin
	clk_cnt <= clk_cnt + 1'b1;
end

// -------------------------------------------------------------
// 3x3 鍵盤掃描與去彈跳 (Debounce)
// -------------------------------------------------------------
reg [1:0] bond;
wire key_pressed = (column != 3'b111); // 有任何按鈕按下

always @(posedge T20ms) begin
	if (!key_pressed) begin
		bond <= bond + 1'b1;
		if (bond == 2'b10) begin
			bond <= 2'b0;
		end
		pressed <= 1'b0;
		key <= 4'b1111;
	end else begin
		pressed <= 1'b1;
		case (column)
			3'b011: key <= bond*3;     // 第 1 行
			3'b101: key <= bond*3 + 1; // 第 2 行
			3'b110: key <= bond*3 + 2; // 第 3 行
			default: key <= key;
		endcase
	end

	// 列掃描訊號輸出 (row)
	case (bond) // 提前改變 row 訊號
		2'b00: row <= 3'b101;
		2'b01: row <= 3'b110;
		2'b10: row <= 3'b011;
	endcase
end

endmodule