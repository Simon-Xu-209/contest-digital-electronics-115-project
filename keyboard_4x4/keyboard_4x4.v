module keyboard_4x4(
    input ck,
    input [3:0] column,
    output reg [3:0] row,
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

reg [15:0] S_buffer;
always@(posedge scan_tick) begin
	if(scan_tick) begin
		case (row)
			4'b0111: begin
				S_buffer[0] <= (column[3] == 0);
				S_buffer[1] <= (column[2] == 0);
				S_buffer[2] <= (column[1] == 0);
				S_buffer[3] <= (column[0] == 0);
				row <= 4'b1011;
			end
			4'b1011: begin
				S_buffer[4] <= (column[3] == 0);
				S_buffer[5] <= (column[2] == 0);
				S_buffer[6] <= (column[1] == 0);
				S_buffer[7] <= (column[0] == 0);
				row <= 4'b1101;
			end
			4'b1101: begin
				S_buffer[8]  <= (column[3] == 0);
				S_buffer[9]  <= (column[2] == 0);
				S_buffer[10] <= (column[1] == 0);
				S_buffer[11] <= (column[0] == 0);
				row <= 4'b1110;
			end
			4'b1110: begin
				S_buffer[12] <= (column[3] == 0);
				S_buffer[13] <= (column[2] == 0);
				S_buffer[14] <= (column[1] == 0);
				S_buffer[15] <= (column[0] == 0);
				row <= 4'b0111;
			end
			default: begin
				row <= 4'b0111;
				S_buffer <= 16'b0;
			end
		endcase
		S <= S_buffer;
	end
end

endmodule