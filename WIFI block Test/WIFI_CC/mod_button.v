/* mod_button p_( .clk(),.kcol(),.krow(),.key() ); */
module mod_button 
(input clk,input[3:1]kcol,output reg[3:1]krow,output reg[4:0]key,output reg t);
 reg [25:0]T;
 reg [1:0] bond;
 reg DSW;
 assign key_state=kcol[1]&kcol[2]&kcol[3];//&kcol[4];
/*===============================================================================*/
/*@ 4*4_button | input[4:1]kcol, output reg[4:1]krow @*/
/*
always @(posedge clk)
begin
	T=T+1;
end
assign T20ms=T[13];

always @(posedge T20ms,negedge key_state)
begin 
	if(key_state==0)DSW=1;
	else DSW=0;
end

always@(posedge T20ms) begin 

if(kcol==4'b1111)begin  bond=bond+1; t=1;key=16;end
	else begin bond=bond;end
	 
   case(kcol)
   4'b1110:begin if(DSW) begin key={2'b00,bond}; t=0; end end
   4'b1101:begin if(DSW) begin key={2'b01,bond}; t=0; end end
   4'b1011:begin if(DSW) begin key={2'b10,bond}; t=0; end end
   4'b0111:begin if(DSW) begin key={2'b11,bond}; t=0; end end
	default;
   endcase

   case(bond)
   2'b00 :krow=4'b1110;
   2'b01 :krow=4'b1101;
   2'b10 :krow=4'b1011;
   2'b11 :krow=4'b0111;
   endcase	

end endmodule
*/
/*-------------------------------------------------------------------------------*/
/*@ 4*3_button | input[3:1]kcol, output reg[4:1]krow @*/
/*
always@(posedge clk)
 begin 
 bond=(kcol==3'b111)? bond+1:bond; //3'b111=7
	 
   case(kcol)
   3'b110 :key={2'b00,bond};
   3'b101 :key={2'b01,bond};
   3'b011 :key={2'b10,bond};
   endcase

   case(bond)
   2'b00 :krow=4'b1110;
   2'b01 :krow=4'b1101;
   2'b10 :krow=4'b1011;
   2'b11 :krow=4'b0111;
   endcase

end endmodule
*/
/*-------------------------------------------------------------------------------*/
/*@ 3*3_button | input[3:1]kcol, output reg[3:1]krow @*/

always@(posedge clk)
 begin
 bond = (bond >= 2'b10) ? bond <= 2'b0 :( kcol==3'b111) ? bond+1 : bond;//3'b111=7

   case(kcol)
   3'b110 :key={bond};
   3'b101 :key={bond + 3};
   3'b011 :key={bond + 6};
   endcase

   case(bond)
   2'b00 :krow=3'b110;
   2'b01 :krow=3'b101;
   2'b10 :krow=3'b011;
   endcase

end endmodule

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~* /
/*@ 按鈕腳位 @* /
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~* /

kcol[1]=PIN_82, kcol[2]=PIN_84, kcol[3]=PIN_86, kcol[4]=PIN_88  /*@ 輸入端 @* /  

krow[1]=PIN_70, krow[2]=PIN_72, krow[3]=PIN_76, krow[4]=PIN_80  /*@ 輸出端 @* / 

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/