module keyboard_4x4 (
	input  wire clk,          // 50MHz
	input  wire rst_n,        // Reset
	input  wire [3:0] column, // 4x4 無段式開關 行(Column)
	output reg  [3:0] row,    // 4x4 無段式開關 行(Column)
	output reg  Pressed,      // 按鍵按下
	output reg  [4:0] KEY     // 按鍵數值
);

// 輸入同步化
reg [3:0] column_sync1, column_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		column_sync1 <= 4'b1111;
		column_sync2 <= 4'b1111;
	end else begin
		column_sync1 <= column;
		column_sync2 <= column_sync1;
	end
end

// 矩陣掃描除頻器 (1kHz, 1ms)
reg [15:0] scan_cnt;
wire scan_tick = (scan_cnt == 16'd50_000 - 1);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) scan_cnt <= 16'd0;
	else if (scan_tick) scan_cnt <= 16'd0;
	else scan_cnt <= scan_cnt + 1'b1;
end

// Continuous Row Scanning (帶 1111 沉降狀態的輪詢)
// 順序：1110 -> 1111 -> 1101 -> 1111 -> 1011 -> 1111 -> 0111 -> 1111 -> 1110 -> ...
reg [2:0] scan_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		scan_state <= 3'd0;
		row        <= 4'b1111;
	end else if (scan_tick) begin
		if (scan_state >= 3'd7)
			scan_state <= 3'd0;
		else
			scan_state <= scan_state + 1'b1;

		case (scan_state)
			3'd0: row <= 4'b1110;
			3'd1: row <= 4'b1111; // 沉降期 1
			3'd2: row <= 4'b1101;
			3'd3: row <= 4'b1111; // 沉降期 2
			3'd4: row <= 4'b1011;
			3'd5: row <= 4'b1111; // 沉降期 3
			3'd6: row <= 4'b0111;
			3'd7: row <= 4'b1111; // 沉降期 4
			default: row <= 4'b1111;
		endcase
	end
end

// 掃描即時解碼
reg [3:0] raw_key;
reg raw_hit;

always @(*) begin
	raw_hit = 1'b1;
	case ({row, column_sync2})
		// Row 0
		8'b0111_0111: raw_key = 5'd0;
		8'b0111_1011: raw_key = 5'd1;
		8'b0111_1101: raw_key = 5'd2;
		8'b0111_1110: raw_key = 5'd3;
		// Row 1
		8'b1011_0111: raw_key = 5'd4;
		8'b1011_1011: raw_key = 5'd5;
		8'b1011_1101: raw_key = 5'd6;
		8'b1011_1110: raw_key = 5'd7;
		// Row 2
		8'b1101_0111: raw_key = 5'd8;
		8'b1101_1011: raw_key = 5'd9;
		8'b1101_1101: raw_key = 5'd10;
		8'b1101_1110: raw_key = 5'd11;
		// Row 2
		8'b1110_0111: raw_key = 5'd12;
		8'b1110_1011: raw_key = 5'd13;
		8'b1110_1101: raw_key = 5'd14;
		8'b1110_1110: raw_key = 5'd15;
		default: begin
			raw_key = 5'b11111;
			raw_hit = 1'b0;
		end
	endcase
end

// 去顫與釋放鎖存邏輯
reg [4:0] debounce_cnt;
reg [5:0] release_cnt;
reg [4:0] latched_key;

// 判斷當前是否處於 1111 的沉降階段
wire is_blanking_time = (row == 4'b1111);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 5'd0;
		release_cnt  <= 5'd0;
		Pressed      <= 1'b0;
		KEY          <= 5'b11111;
		latched_key  <= 5'b11111;
	end else begin
		// 在 scan_tick 觸發時（訊號最穩定時刻）進行去顫計算
		if (scan_tick) begin
			if (raw_hit) begin
				latched_key <= raw_key;
				release_cnt <= 6'd30; // 刷新放開保護期
				
				if (debounce_cnt < 5'd5) begin
					debounce_cnt <= debounce_cnt + 1'b1;
				end else begin
					Pressed <= 1'b1;
					KEY     <= latched_key;
				end
			end else if (!is_blanking_time) begin
				// 關鍵：只有在「非沉降期 (row != 1111)」且真的沒命中時，才扣減放開倒數
				if (release_cnt > 6'd0) begin
					release_cnt <= release_cnt - 1'b1;
				end else begin
					debounce_cnt <= 5'd0;
					Pressed      <= 1'b0;
					KEY          <= 5'b11111;
				end
			end
			// 如果處於 is_blanking_time (row == 1111)，保持當前計數與狀態不變，避免誤扣放開計數
		end
	end
end

endmodule