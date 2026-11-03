module keyboard_2x2(
	input  wire clk,         // 50MHz
	input  wire rst_n,
	input  wire [1:0] row,   // Row 轉為 input (帶 10k 上拉電阻)
	output reg  [1:0] column,// Column 轉為 output (主動掃描)
	output reg  Pressed,     // 邏輯去顫後的穩定 Pressed
	output reg  [2:0] KEY
);

// 輸入同步化 (防止 Toggle/Metastability)
reg [1:0] row_sync1, row_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		row_sync1 <= 2'b11;
		row_sync2 <= 2'b11;
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

// Continuous Column Scanning (對 column 進行輪詢)
// 順序：01 -> 11 -> 10 -> 11
reg [1:0] scan_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		scan_state <= 2'd0;
		column     <= 2'b11;
	end else if (scan_tick) begin
		scan_state <= scan_state + 1'b1;
		case (scan_state)
			2'd0: column <= 2'b01; // Col 0 Active
			2'd1: column <= 2'b11; // 沉降期 1
			2'd2: column <= 2'b10; // Col 1 Active
			2'd3: column <= 2'b11; // 沉降期 2
		endcase
	end
end

// 掃描即時解碼 (比對 {column, row_sync2})
reg [2:0] raw_key;
reg raw_hit;

always @(*) begin
	raw_hit = 1'b1;
	case ({column, row_sync2})
		// Col 0
		4'b01_01: raw_key = 3'd0;
		4'b01_10: raw_key = 3'd2;
		// Col 1
		4'b10_01: raw_key = 3'd1;
		4'b10_10: raw_key = 3'd3;
		default: begin
			raw_key = 3'd7;
			raw_hit = 1'b0;
		end
	endcase
end

// 去顫與釋放鎖存邏輯
reg [4:0] debounce_cnt;
reg [5:0] release_cnt;
reg [2:0] latched_key;

wire is_blanking_time = (column == 2'b11);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		debounce_cnt <= 5'd0;
		release_cnt  <= 5'd0;
		Pressed      <= 1'b0;
		KEY          <= 3'd7;
		latched_key  <= 3'd7;
	end else begin
		if (scan_tick) begin
			if (raw_hit) begin
				latched_key <= raw_key;
				release_cnt <= 6'd30; // 刷新 30ms 放開保護期
				
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
					KEY          <= 3'd7;
				end
			end
		end
	end
end

endmodule