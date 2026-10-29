module keyboard_4x4 (
	input  wire clk,          // 50MHz
	input  wire rst_n,        // Reset
	input  wire [3:0] row,    // Row 轉為 input (帶 10k 上拉電阻)
	output reg  [3:0] column, // Column 轉為 output (主動掃描)
	output reg  Pressed,      // 按鍵按下
	output reg  [4:0] KEY     // 按鍵數值
);

// 輸入同步化 (針對 row 進行同步)
reg [3:0] row_sync1, row_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		row_sync1 <= 4'b1111;
		row_sync2 <= 4'b1111;
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

// Continuous Column Scanning (帶 1111 沉降狀態的對 column 輪詢)
reg [2:0] scan_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		scan_state <= 3'd0;
		column     <= 4'b1111;
	end else if (scan_tick) begin
		if (scan_state >= 3'd7)
			scan_state <= 3'd0;
		else
			scan_state <= scan_state + 1'b1;

		case (scan_state)
			3'd0: column <= 4'b1110; // Col 0 Active
			3'd1: column <= 4'b1111; // 沉降期 1
			3'd2: column <= 4'b1101; // Col 1 Active
			3'd3: column <= 4'b1111; // 沉降期 2
			3'd4: column <= 4'b1011; // Col 2 Active
			3'd5: column <= 4'b1111; // 沉降期 3
			3'd6: column <= 4'b0111; // Col 3 Active
			3'd7: column <= 4'b1111; // 沉降期 4
			default: column <= 4'b1111;
		endcase
	end
end

// 掃描即時解碼 (比對 {column, row_sync2})
reg [4:0] raw_key;
reg raw_hit;

always @(*) begin
	raw_hit = 1'b1;
	case ({column, row_sync2})
		// Col 0
		8'b0111_0111: raw_key = 5'd3;
		8'b0111_1011: raw_key = 5'd7;
		8'b0111_1101: raw_key = 5'd11;
		8'b0111_1110: raw_key = 5'd15;
		// Col 1
		8'b1011_0111: raw_key = 5'd2;
		8'b1011_1011: raw_key = 5'd6;
		8'b1011_1101: raw_key = 5'd10;
		8'b1011_1110: raw_key = 5'd14;
		// Col 2
		8'b1101_0111: raw_key = 5'd1;
		8'b1101_1011: raw_key = 5'd5;
		8'b1101_1011: raw_key = 5'd9;
		8'b1101_1110: raw_key = 5'd13;
		// Col 3
		8'b1110_0111: raw_key = 5'd0;
		8'b1110_1011: raw_key = 5'd4;
		8'b1110_1101: raw_key = 5'd8;
		8'b1110_1110: raw_key = 5'd12;
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

wire is_blanking_time = (column == 4'b1111);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 5'd0;
		release_cnt  <= 5'd0;
		Pressed      <= 1'b0;
		KEY          <= 5'b11111;
		latched_key  <= 5'b11111;
	end else begin
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
				if (release_cnt > 6'd0) begin
					release_cnt <= release_cnt - 1'b1;
				end else begin
					debounce_cnt <= 5'd0;
					Pressed      <= 1'b0;
					KEY          <= 5'b11111;
				end
			end
		end
	end
end

endmodule