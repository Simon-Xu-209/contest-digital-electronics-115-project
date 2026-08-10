module led(
				input clk,
				input[7:0]LED_select,
				output reg[2:0]LED
);
reg [7:0]bit;

always@(posedge clk)
begin
	bit <= LED_select - 2 ;
end	
always@(posedge clk)
begin
	case(bit)
		7'd0:begin  LED=3'b000; end
		7'd1:begin  LED=3'b100; end
		7'd2:begin  LED=3'b010; end
		7'd3:begin  LED=3'b001; end
		
		default : LED=0;
	endcase
end

		
endmodule