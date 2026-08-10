module keyboard_3x3(
    input ck, //50MHz
    input [2:0] column,
    output reg [2:0] row,
    output reg [8:0] KEY
);

reg [15:0] clk_cnt;
wire scan_tick = (clk_cnt == 16'd50000);
always @(posedge ck) begin
	if (clk_cnt >= 16'd50000)
		clk_cnt <= 16'd0;
	else
		clk_cnt <= clk_cnt + 1'b1;
end

reg [8:0] KEY_buffer;
always@(posedge scan_tick) begin
	if(scan_tick) begin
		case (row)
			3'b011: begin
				KEY_buffer[0] <= (column[2] == 0);
				KEY_buffer[1] <= (column[1] == 0);
				KEY_buffer[2] <= (column[0] == 0);
				row <= 3'b101;
			end
			3'b101: begin
				KEY_buffer[3] <= (column[2] == 0);
				KEY_buffer[4] <= (column[1] == 0);
				KEY_buffer[5] <= (column[0] == 0);
				row <= 3'b110;
			end
			3'b110: begin
				KEY_buffer[6] <= (column[2] == 0);
				KEY_buffer[7] <= (column[1] == 0);
				KEY_buffer[8] <= (column[0] == 0);
				row <= 3'b011;
			end
			default: begin
				row <= 3'b011;
				KEY_buffer <= 9'b0;
			end
		endcase
		KEY <= KEY_buffer;
	end
end

endmodule