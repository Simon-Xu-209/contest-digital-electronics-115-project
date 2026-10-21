module motoV1(
input clk,
output reg [3:0]moto
);

reg [23:0]div;
always @(posedge clk)
	div=div+1;

reg [1:0]cnt;
always @(posedge div[18])
begin
	cnt=cnt+1;
	
	case(cnt)
		0:	moto = 4'b1100;
		1:	moto = 4'b0110;
		2:	moto = 4'b0011;
		3:	moto = 4'b1001;
		default;
	endcase
end

endmodule
