module keyboard_4x4(
    input wire clk,
	 input wire rst_n,
    input wire [3:0] column,
    output reg [3:0] row,
	 output wire Pressed,
    output reg [4:0] KEY
);

assign Pressed = (column != 4'b1111);

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
		row <= 4'b0111;
		KEY <= 5'b11111;
	end else if (Counter == 4'b1111) begin
		row <= (Pressed) ? row : {row[0], row[3:1]};
		if (Pressed) begin
			case (row)
				4'b011: begin
					if (column == 4'b0111) begin
						KEY <= 5'd0;
					end else if (column == 4'b1011) begin
						KEY <= 5'd1;
					end if (column == 4'b1101) begin
						KEY <= 5'd2;
					end else if (column == 4'b1110) begin
						KEY <= 5'd3;
					end
				end
				4'b1011: begin
					if (column == 4'b0111) begin
						KEY <= 5'd4;
					end else if (column == 4'b1011) begin
						KEY <= 5'd5;
					end if (column == 4'b1101) begin
						KEY <= 5'd6;
					end else if (column == 4'b1110) begin
						KEY <= 5'd7;
					end
				end
				4'b1101: begin
					if (column == 4'b0111) begin
						KEY <= 5'd8;
					end else if (column == 4'b1011) begin
						KEY <= 5'd9;
					end if (column == 4'b1101) begin
						KEY <= 5'd10;
					end else if (column == 4'b1110) begin
						KEY <= 5'd11;
					end
				end
				4'b1110: begin
					if (column == 4'b0111) begin
						KEY <= 5'd12;
					end else if (column == 4'b1011) begin
						KEY <= 5'd13;
					end if (column == 4'b1101) begin
						KEY <= 5'd14;
					end else if (column == 4'b1110) begin
						KEY <= 5'd15;
					end
				end
				default: begin
					row <= 4'b0111;
					KEY <= 5'b11111;
				end
			endcase
		end
	end
end

endmodule