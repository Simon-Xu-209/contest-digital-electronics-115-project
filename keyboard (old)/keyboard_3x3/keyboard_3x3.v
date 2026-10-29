module keyboard_3x3(
    input wire clk,
	 input wire rst_n,
    input wire [2:0] column,
    output reg [2:0] row,
	 output wire Pressed,
    output reg [3:0] KEY
);

assign Pressed = ~(^column); // XNOR

reg [3:0] Counter;
always@(posedge clk) begin
	if (Counter < 4'b1111) begin
		Counter <= Counter + 1'b1;
	end else begin
		Counter <= 0;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		row <= 3'b011;
		KEY <= 4'b1111;
	end else if (Counter == 4'b1111) begin
		row <= (Pressed) ? row : {row[0], row[2:1]};
		if (Pressed) begin
			case (row)
				3'b011: begin
					if (column == 3'b011) begin
						KEY <= 4'd0;
					end else if (column == 3'b101) begin
						KEY <= 4'd1;
					end if (column == 3'b110) begin
						KEY <= 4'd2;
					end
				end
				3'b101: begin
					if (column == 3'b011) begin
						KEY <= 4'd3;
					end else if (column == 3'b101) begin
						KEY <= 4'd4;
					end if (column == 3'b110) begin
						KEY <= 4'd5;
					end
				end
				3'b110: begin
					if (column == 3'b011) begin
						KEY <= 4'd6;
					end else if (column == 3'b101) begin
						KEY <= 4'd7;
					end if (column == 3'b110) begin
						KEY <= 4'd8;
					end
				end
				default: begin
					row <= 3'b011;
					KEY <= 4'b1111;
				end
			endcase
		end
	end
end

endmodule