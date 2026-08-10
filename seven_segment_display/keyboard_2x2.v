module keyboard_2x2(
    input ck, //50MHz
    input [1:0] column,
    output reg [1:0] row,
    output reg [3:0] KEY
);

reg [15:0] clk_cnt;
wire scan_tick = (clk_cnt == 16'd50000);
always @(posedge ck) begin
	if (clk_cnt >= 16'd50000)
		clk_cnt <= 16'd0;
	else
		clk_cnt <= clk_cnt + 1'b1;
end

reg [3:0] KEY_buffer;
always@(posedge scan_tick) begin
	if(scan_tick) begin
		case (row)
			2'b01: begin
				KEY_buffer[0] <= (column[1] == 0);
				KEY_buffer[1] <= (column[0] == 0);
				row <= 2'b10;
			end
			2'b10: begin
				KEY_buffer[2] <= (column[1] == 0);
				KEY_buffer[3] <= (column[0] == 0);
				row <= 2'b01;
			end
			default: begin
				row <= 2'b01;
				KEY_buffer <= 4'b0;
			end
		endcase
		KEY <= KEY_buffer;
	end
end

endmodule