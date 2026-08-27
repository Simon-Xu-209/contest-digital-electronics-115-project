module keyboard_4x4(
	input ck,
	input [3:0] column,
	output [3:0] row,
	output reg [15:0] S
);

reg [15:0] clk_cnt;
wire scan_tick = (clk_cnt == 16'd50000);

always @(posedge ck) begin
	if (clk_cnt >= 16'd50000)
		clk_cnt <= 16'd0;
	else
		clk_cnt <= clk_cnt + 1'b1;
end

// 使用內部暫存器控制掃描狀態，0 表示選通，1 表示不選通
reg [3:0] row_state = 4'b0111;

// 利用三態門 (Tristate Buffer) 實現 Open-Drain 效果，避免高/低電位短路
assign row[0] = (row_state[0] == 1'b0) ? 1'b0 : 1'bz;
assign row[1] = (row_state[1] == 1'b0) ? 1'b0 : 1'bz;
assign row[2] = (row_state[2] == 1'b0) ? 1'b0 : 1'bz;
assign row[3] = (row_state[3] == 1'b0) ? 1'b0 : 1'bz;

reg [15:0] S_buffer;

// -------------------------------------------------------------
// 掃描矩陣邏輯
// -------------------------------------------------------------
always @(posedge scan_tick) begin
	case (row_state)
		4'b0111: begin // 掃描 Row 3 (S[0] ~ S[3])
			S_buffer[0] <= (column[3] == 0);
			S_buffer[1] <= (column[2] == 0);
			S_buffer[2] <= (column[1] == 0);
			S_buffer[3] <= (column[0] == 0);
			row_state <= 4'b1011;
		end
		4'b1011: begin // 掃描 Row 2 (S[4] ~ S[7])
			S_buffer[4] <= (column[3] == 0);
			S_buffer[5] <= (column[2] == 0);
			S_buffer[6] <= (column[1] == 0);
			S_buffer[7] <= (column[0] == 0);
			row_state <= 4'b1101;
		end
		4'b1101: begin // 掃描 Row 1 (S[8] ~ S[11])
			S_buffer[8]  <= (column[3] == 0);
			S_buffer[9]  <= (column[2] == 0);
			S_buffer[10] <= (column[1] == 0);
			S_buffer[11] <= (column[0] == 0);
			row_state <= 4'b1110;
		end
		4'b1110: begin // 掃描 Row 0 (S[12] ~ S[15])
			S_buffer[12] <= (column[3] == 0);
			S_buffer[13] <= (column[2] == 0);
			S_buffer[14] <= (column[1] == 0);
			S_buffer[15] <= (column[0] == 0);
			row_state <= 4'b0111;
		end
		default: begin
			row_state <= 4'b0111;
			S_buffer <= 16'b0;
		end
	endcase
end

// -------------------------------------------------------------
// 鬼鍵檢測邏輯 (Anti-Ghosting Logic)
// -------------------------------------------------------------
// 計算每一行 (Column) 被按下的數量
wire [2:0] col3_cnt = S_buffer[0] + S_buffer[4] + S_buffer[8]  + S_buffer[12];
wire [2:0] col2_cnt = S_buffer[1] + S_buffer[5] + S_buffer[9]  + S_buffer[13];
wire [2:0] col1_cnt = S_buffer[2] + S_buffer[6] + S_buffer[10] + S_buffer[14];
wire [2:0] col0_cnt = S_buffer[3] + S_buffer[7] + S_buffer[11] + S_buffer[15];

// 判斷該行是否有 2 個或以上的按鍵被按下
wire col3_has_multi = (col3_cnt >= 2);
wire col2_has_multi = (col2_cnt >= 2);
wire col1_has_multi = (col1_cnt >= 2);
wire col0_has_multi = (col0_cnt >= 2);

// 若存在 2 個或以上的 Column 各自按了多鍵，代表會形成鬼鍵迴路
wire is_ghost_detected = ((col3_has_multi + col2_has_multi + col1_has_multi + col0_has_multi) >= 2);

// -------------------------------------------------------------
// 輸出更新 (當有鬼鍵疑慮時鎖定輸出 S)
// -------------------------------------------------------------
always @(posedge scan_tick) begin
	if (!is_ghost_detected) begin
		S <= S_buffer;      // 安全狀態：更新按鍵值
	end else begin
		S <= S;             // 鬼鍵狀態：保持上一次穩定的輸出，防誤觸
	end
end

endmodule