module keyboard_4x4(
	input wire clk,         // 50MHz
	input wire rst_n,
	input wire [3:0] column,
	output reg [3:0] row,
	output reg Pressed,     // 邏輯去顫後的穩定 Pressed
	output reg [4:0] KEY
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

// Continuous Row Scanning (輪詢 0111 -> 1011 -> 1101 -> 1110)
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) 
		row <= 4'b0111;
	else if (scan_tick) 
		row <= {row[0], row[3:1]};
end

// 掃描即時解碼 (捕捉瞬間按下的 key)
reg [4:0] raw_key;
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
		// Row 3
		8'b1110_0111: raw_key = 5'd12;
		8'b1110_1011: raw_key = 5'd13;
		8'b1110_1101: raw_key = 5'd14;
		8'b1110_1110: raw_key = 5'd15;
		default: begin
			raw_key = 5'd31;
			raw_hit = 1'b0;
		end
	endcase
end

// 去顫與釋放鎖存邏輯
reg [19:0] debounce_cnt;
reg [19:0] release_cnt; // 專門處理放開彈跳的計數器
reg [4:0] latched_key;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 20'd0;
		release_cnt  <= 20'd0;
		Pressed      <= 1'b0;
		KEY          <= 5'd31;
		latched_key  <= 5'd31;
	end else begin
		// 當掃描碰巧命中任一按鍵時
		if (raw_hit) begin
			latched_key <= raw_key;  // 暫存被按下的鍵值
			release_cnt <= 20'd1_500_000; // 刷新「放開保護期」(30ms)
			
			if (debounce_cnt < 20'd500_000) begin // 10ms 防抖
				debounce_cnt <= debounce_cnt + 1'b1;
			end else begin
				Pressed <= 1'b1;
				KEY     <= latched_key;
			end
		end else begin
			// 掃描沒命中時，檢查是否是真的「放開按鍵」
			if (release_cnt > 20'd0) begin
				release_cnt <= release_cnt - 1'b1; // 還在保護期內（等待下次輪詢或去彈跳）
			end else begin
				// 超過 30ms 完全沒偵測到任何按鍵，才認定為放開
				debounce_cnt <= 20'd0;
				Pressed      <= 1'b0;
				KEY          <= 5'd31;
			end
		end
	end
end

endmodule