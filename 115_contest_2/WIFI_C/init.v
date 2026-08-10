module init(
input T1S,
input clk,
input T500ms,
input ready,
output reg[2:0]led,
output reg[2:0]rgb,
output reg[4:0]Q1,
output reg[4:0]Q2,
output reg[4:0]Q3,
output reg[4:0]Q4,
output reg[4:0]Q5,
output reg[4:0]Q6,
output reg[4:0]Q7,
output reg[4:0]Q8
);

reg standby;
reg[2:0]cnt_rgb=3'd0;
reg cnt_seg=1'b0;

always@(posedge T500ms)
begin 
	if(cnt_rgb==3'd6) cnt_rgb=3'd6;
	else cnt_rgb=cnt_rgb+3'd1;
end

always@(posedge T1S)
begin 
	if(cnt_seg==1'b1)cnt_seg=1'b1;
	else cnt_seg=cnt_seg+1'b1;
end


always@(*)
begin
	case(cnt_rgb)
		3'd0:begin  rgb=3'b000; end
		3'd1:begin  rgb=3'b111; end
		3'd2:begin  rgb=3'b000; end
		3'd3:begin  rgb=3'b111; end
		3'd4:begin  rgb=3'b000; end
		3'd5:begin  rgb=3'b111; end
		3'd6:begin  rgb=3'b000; end
		default;
	endcase
end

always@(posedge clk)
begin
	if(ready)begin
	case(T1S)
		0:begin Q1=0; Q2=1; Q3=2; Q4=3; Q5=4; Q6=20; Q7=20; Q8=20; end 
		1:begin Q1=20; Q2=21; Q3=20; Q4=20; Q5=20; Q6=20; Q7=20; Q8=20; standby=1; end
		default;
	endcase
	end
	if(standby)begin
		Q1=5;Q2=6;Q3=7;Q4=8;Q5=9;Q6=10;Q7=10;Q8=10;
	end
end

always@(posedge clk)
begin
	
end

endmodule
