module keyboard_2x2(
    input ck, //50MHz
    input [1:0] column,
    output reg [1:0] row,
	 output wire Pressed,
    output reg [3:0] KEY
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

assign Pressed = (KEY != 4'b0000);

always@(posedge ck) begin
	if(scan_tick) begin
		case (row)
			2'b01: begin
				KEY[0] <= (column[1] == 0);
				KEY[1] <= (column[0] == 0);
				row <= 2'b10;
			end
			2'b10: begin
				KEY[2] <= (column[1] == 0);
				KEY[3] <= (column[0] == 0);
				row <= 2'b01;
			end
			default: begin
				row <= 2'b01;
			end
		endcase
	end
end

endmodule