module keyboard_3x3(
	input wire clk,         // 50MHz
	input wire rst_n,
	input wire [2:0] column,
	output reg [2:0] row,
	output reg Pressed,     // 邏輯去顫後的穩定 Pressed
	output reg [3:0] KEY
);

// 輸入同步化
reg [2:0] column_sync1, column_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		column_sync1 <= 3'b111;
		column_sync2 <= 3'b111;
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

// Continuous Row Scanning (帶 111 沉降狀態的輪詢)
// 順序：110 -> 111 -> 101 -> 111 -> 011 -> 111
reg [2:0] scan_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		scan_state <= 3'd0;
		row        <= 3'b111;
	end else if (scan_tick) begin
		if (scan_state == 3'd5)
			scan_state <= 3'd0;
		else
			scan_state <= scan_state + 1'b1;

		case (scan_state)
			3'd0: row <= 3'b110;
			3'd1: row <= 3'b111; // 沉降期 1
			3'd2: row <= 3'b101;
			3'd3: row <= 3'b111; // 沉降期 2
			3'd4: row <= 3'b011;
			3'd5: row <= 3'b111; // 沉降期 3
			default: row <= 3'b111;
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
		6'b011_011: raw_key = 4'd0;
		6'b011_101: raw_key = 4'd1;
		6'b011_110: raw_key = 4'd2;
		// Row 1
		6'b101_011: raw_key = 4'd3;
		6'b101_101: raw_key = 4'd4;
		6'b101_110: raw_key = 4'd5;
		// Row 2
		6'b110_011: raw_key = 4'd6;
		6'b110_101: raw_key = 4'd7;
		6'b110_110: raw_key = 4'd8;
		default: begin
			raw_key = 4'd15;
			raw_hit = 1'b0;
		end
	endcase
end

// 去顫與釋放鎖存邏輯
reg [4:0] debounce_cnt;
reg [5:0] release_cnt;
reg [3:0] latched_key;

// 判斷當前是否處於 111 的沉降階段
wire is_blanking_time = (row == 3'b111);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 5'd0;
		release_cnt  <= 5'd0;
		Pressed      <= 1'b0;
		KEY          <= 4'd15;
		latched_key  <= 4'd15;
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
				// 關鍵：只有在「非沉降期 (row != 111)」且真的沒命中時，才扣減放開倒數
				if (release_cnt > 6'd0) begin
					release_cnt <= release_cnt - 1'b1;
				end else begin
					debounce_cnt <= 5'd0;
					Pressed      <= 1'b0;
					KEY          <= 4'd15;
				end
			end
			// 如果處於 is_blanking_time (row == 111)，保持當前計數與狀態不變，避免誤扣放開計數
		end
	end
end

endmodule