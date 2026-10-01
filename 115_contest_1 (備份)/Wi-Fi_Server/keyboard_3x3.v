module keyboard_3x3(
    input ck, //50MHz
    input [2:0] column,
    output reg [2:0] row,
	 output reg Pressed,
    output reg [8:0] KEY
);

reg [15:0] clk_cnt;
reg scan_tick;
always @(posedge ck) begin
	if (clk_cnt >= 16'd49_999) begin
		clk_cnt <= 16'd0;
		scan_tick <= 1'b1;
	end else begin
		clk_cnt <= clk_cnt + 1'b1;
		scan_tick <= 1'b0;
	end
end

always@(posedge ck) begin
	if(scan_tick) begin
		Pressed = (KEY != 9'b000_000_000);
		case (row)
			3'b011: begin
				KEY[0] <= (column[2] == 0);
				KEY[1] <= (column[1] == 0);
				KEY[2] <= (column[0] == 0);
				row <= 3'b101;
			end
			3'b101: begin
				KEY[3] <= (column[2] == 0);
				KEY[4] <= (column[1] == 0);
				KEY[5] <= (column[0] == 0);
				row <= 3'b110;
			end
			3'b110: begin
				KEY[6] <= (column[2] == 0);
				KEY[7] <= (column[1] == 0);
				KEY[8] <= (column[0] == 0);
				row <= 3'b011;
			end
			default: begin
				row <= 3'b011;
			end
		endcase
	end
end

endmodule