module Seg4Display(
input clk,T4ms,DSW,T1s,T50ms,
input [4:0]Q0,Q1,Q2,Q3,
output reg[3:0]SegCom,
output [7:0]SegData
);

reg PB;
reg [25:0]cnt;

always@(posedge clk)
begin
	cnt=cnt+1;
	
end

 


reg[1:0]S;
always @(posedge T4ms)
begin
	if(S==3) S=0;
	else S=S+1;
	
		
end


always@(posedge T4ms)
begin 
	if(DSW==0) PB=1;
	else PB=0;

end


reg [4:0]BCD;



always @(S)
begin
	case(S)
		0:	begin SegCom=8'b0111;BCD=Q0;end
		1:	begin SegCom=8'b1011;BCD=Q1;end
		2:	begin SegCom=8'b1101;BCD=Q2;end
		3:	begin SegCom=8'b1110;BCD=Q3;end
		
		default: SegCom=8'b11111111;
	endcase
end
							  //  hgfedcba
assign SegData=(BCD==0)?8'b01010000://R
					(BCD==1)?8'b01111001://E
					(BCD==2)?8'b01110111://A
					(BCD==3)?8'b01011110://D
					(BCD==4)?8'b11101110://Y.
					(BCD==5)?8'b00111001://C
					(BCD==6)?8'b00111000://L
					(BCD==7)?8'b01111000://T
					(BCD==8)?8'b01001001://X
					(BCD==9)?8'b10000000://.
					(BCD==10)?8'b00111111://0
					(BCD==11)?8'b00000110://1
					(BCD==12)?8'b01011011://2
					(BCD==13)?8'b01001111://3
					(BCD==14)?8'b01100110://4
					(BCD==15)?8'b01101101://5
					(BCD==16)?8'b01111101://6
					(BCD==17)?8'b00000111://7
					(BCD==18)?8'b01111111://8
					(BCD==19)?8'b01100111:/*9*/8'b00000000;
			


	
endmodule