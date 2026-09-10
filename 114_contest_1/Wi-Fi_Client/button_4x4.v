module button_4x4(
	input            clk,     // 50MHz 時脈
	input      [3:0] column,    // 矩陣鍵盤「行」輸入 (Column 1~4)
	output reg [3:0] row,    // 矩陣鍵盤「列」輸出 (Row 1~4)
	output reg [4:0] key,     // 輸出的按鍵值 (0~15, 無按鍵為 16)
	output reg       pressed        // 按鍵按下觸發訊號 (0: 無動作, 1: 按下觸發)
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
// 4x4 鍵盤掃描與去彈跳 (Debounce)
// -------------------------------------------------------------
reg [1:0] bond;
wire key_pressed = (column != 4'b1111); // 有任何按鈕按下

always @(posedge T20ms) begin
	if (!key_pressed) begin
		bond <= bond + 1'b1;
		pressed <= 1'b0;
		key <= 5'd16;
	end else begin
		// 有按鈕按下，鎖定當前列 (bond) 並解碼對應的行 (column)
		pressed <= 1'b1;

		// 高 2 位為列索引 {bond}，低 2 位為行索引 (Col 0~3)
		case (column)
			4'b0111: key <= {bond, 2'b00}; // 第 1 行
			4'b1011: key <= {bond, 2'b01}; // 第 2 行
			4'b1101: key <= {bond, 2'b10}; // 第 3 行
			4'b1110: key <= {bond, 2'b11}; // 第 4 行
			default: key <= key;
		endcase
	end

	// 列掃描訊號輸出 (row)
	// 預補償 1-clock 非阻塞賦值延遲，確保 row 與 bond 完美同步
	case (bond)
		2'b11: row <= 4'b0111; // bond 下一拍變 00 -> 驅動第 1 列
		2'b00: row <= 4'b1011; // bond 下一拍變 01 -> 驅動第 2 列
		2'b01: row <= 4'b1101; // bond 下一拍變 10 -> 驅動第 3 列
		2'b10: row <= 4'b1110; // bond 下一拍變 11 -> 驅動第 4 列
	endcase
end

endmodule