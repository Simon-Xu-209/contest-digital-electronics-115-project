module keyboard_3x3(
    input wire clk_10ms,
    input wire [2:0] column,
    output reg [2:0] row,
    output reg [8:0] S
);

reg [15:0] S_buffer;
always@(posedge clk_10ms) begin
	if(clk_10ms) begin
		case (row)
			4'b011: begin
				S_buffer[0] <= (column[2] == 0);
				S_buffer[1] <= (column[1] == 0);
				S_buffer[2] <= (column[0] == 0);
				row <= 4'b101;
			end
			4'b101: begin
				S_buffer[3] <= (column[2] == 0);
				S_buffer[4] <= (column[1] == 0);
				S_buffer[5] <= (column[0] == 0);
				row <= 4'b110;
			end
			4'b110: begin
				S_buffer[6] <= (column[2] == 0);
				S_buffer[7] <= (column[1] == 0);
				S_buffer[8] <= (column[0] == 0);
				row <= 4'b011;
			end
			default: begin
				row <= 4'b111;
				S_buffer <= 9'b0;
			end
		endcase
		S <= S_buffer;
	end
end

endmodule