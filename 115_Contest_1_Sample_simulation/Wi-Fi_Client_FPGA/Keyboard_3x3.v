module Keyboard_3x3(
	input  wire clk,         // 50MHz
	input  wire rst_n,
	input  wire [2:0] row,   // Row 轉為 input (帶 10k 上拉電阻)
	output reg  [2:0] column,// Column 轉為 output (主動掃描)
	output reg  Pressed,     // 邏輯去顫後的穩定 Pressed
	output reg  [3:0] KEY
);

// 輸入同步化 (針對 row 進行同步)
reg [2:0] row_sync1, row_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		row_sync1 <= 3'b111;
		row_sync2 <= 3'b111;
	end else begin
		row_sync1 <= row;
		row_sync2 <= row_sync1;
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

// Continuous Column Scanning (帶 111 沉降狀態的對 column 輪詢)
// 順序：110 -> 111 -> 101 -> 111 -> 011 -> 111
reg [2:0] scan_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		scan_state <= 3'd0;
		column     <= 3'b111;
	end else if (scan_tick) begin
		if (scan_state == 3'd5)
			scan_state <= 3'd0;
		else
			scan_state <= scan_state + 1'b1;

		case (scan_state)
			3'd0: column <= 3'b110; // Col 0 Active
			3'd1: column <= 3'b111; // 沉降期 1
			3'd2: column <= 3'b101; // Col 1 Active
			3'd3: column <= 3'b111; // 沉降期 2
			3'd4: column <= 3'b011; // Col 2 Active
			3'd5: column <= 3'b111; // 沉降期 3
			default: column <= 3'b111;
		endcase
	end
end

// 掃描即時解碼 (比對 {column, row_sync2})
reg [3:0] raw_key;
reg raw_hit;

always @(*) begin
	raw_hit = 1'b1;
	case ({column, row_sync2})
		// Col 0
		6'b011_011: raw_key = 4'd0; // KEY0 (Row0, Col0)
		6'b011_101: raw_key = 4'd3; // KEY3 (Row1, Col0)
		6'b011_110: raw_key = 4'd6; // KEY6 (Row2, Col0)
		// Col 1
		6'b101_011: raw_key = 4'd1; // KEY1 (Row0, Col1)
		6'b101_101: raw_key = 4'd4; // KEY4 (Row1, Col1)
		6'b101_110: raw_key = 4'd7; // KEY7 (Row2, Col1)
		// Col 2
		6'b110_011: raw_key = 4'd2; // KEY2 (Row0, Col2)
		6'b110_101: raw_key = 4'd5; // KEY5 (Row1, Col2)
		6'b110_110: raw_key = 4'd8; // KEY8 (Row2, Col2)
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

wire is_blanking_time = (column == 3'b111);

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
				// 只有在「非沉降期 (row != 111)」且真的沒命中時，才扣減放開倒數
				if (release_cnt > 6'd0) begin
					release_cnt <= release_cnt - 1'b1;
				end else begin
					debounce_cnt <= 5'd0;
					Pressed      <= 1'b0;
					KEY          <= 4'd15;
				end
			end
		end
	end
end

endmodule