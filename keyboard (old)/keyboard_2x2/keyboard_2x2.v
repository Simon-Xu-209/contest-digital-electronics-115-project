module keyboard_2x2(
    input wire clk,
	 input wire rst_n,
    input wire [1:0] column,
    output reg [1:0] row,
	 output wire Pressed,
    output reg [2:0] KEY
);

assign Pressed = ^column;

reg [7:0] Counter;
always@(posedge clk) begin
	if (Counter < 8'b1111_1111) begin
		Counter <= Counter + 1'b1;
	end else begin
		Counter <= 0;
	end
end

always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		row <= 2'b01;
		KEY <= 3'b111;
	end else if (Counter == 8'b1111_1111) begin
		row <= (Pressed) ? row : {row[0], row[1]};
		if (Pressed) begin
			case (row)
				2'b01: begin
					if (column == 2'b01) begin
						KEY <= 3'd0;
					end else if (column == 2'b10) begin
						KEY <= 3'd1;
					end
				end
				2'b10: begin
					if (column == 2'b01) begin
						KEY <= 3'd2;
					end else if (column == 2'b10) begin
						KEY <= 3'd3;
					end
				end
				default: begin
					row <= 2'b01;
					KEY <= 3'b111;
				end
			endcase
		end
	end
end

endmodule