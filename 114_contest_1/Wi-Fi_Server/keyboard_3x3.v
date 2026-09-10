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

// Continuous Row Scanning (輪詢 011 -> 101 -> 110)
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) 
		row <= 3'b011;
	else if (scan_tick) 
		row <= {row[0], row[2:1]};
end

// 掃描即時解碼 (捕捉瞬間按下的 key)
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
reg [19:0] debounce_cnt;
reg [19:0] release_cnt; // 專門處理放開彈跳的計數器
reg [3:0] latched_key;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 20'd0;
		release_cnt  <= 20'd0;
		Pressed      <= 1'b0;
		KEY          <= 4'd15;
		latched_key  <= 4'd15;
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
				KEY          <= 4'd15;
			end
		end
	end
end

endmodule