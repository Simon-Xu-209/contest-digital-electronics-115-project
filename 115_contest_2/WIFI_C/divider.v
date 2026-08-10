module divider(
input clk,
output T1S,
output T4ms,
output T500ms
);

reg[30:0]D;



always@(posedge clk)
begin
	D=D+1;
end

assign T1s=D[25];
assign T500ms=D[24];
assign T4ms=D[13];


endmodule
