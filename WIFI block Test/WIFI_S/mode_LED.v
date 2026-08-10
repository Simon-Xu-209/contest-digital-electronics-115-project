module mode_LED(
	input iCLK,RST_n,
	input RECEIVE_END,
	input [7:0] rxd,
	input SEND_END_cmd,
	output reg [7:0] LED,
	output reg [15:0] LED_select
);

reg LED_en;
reg [7:0] rx_reg;
reg [3:0] state_recv;

//輸出亮哪顆LED
always@(posedge iCLK or negedge RST_n)
begin
	if(!RST_n)
		begin
			LED[0] <= 1'd0;	LED[1] <= 1'd0;
			LED[2] <= 1'd0;	LED[3] <= 1'd0;
			LED[4] <= 1'd0;	LED[5] <= 1'd0;
			LED[6] <= 1'd0;	LED[7] <= 1'd0;
		end
	else
		begin
			case(LED_select)
				4'd0: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd1: begin
					LED[0] <= 1'd1;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd2: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd1;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd3: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd1;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd4: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd1;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd5: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd1;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd6: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd1;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
				4'd7: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd1;	LED[7] <= 1'd0;
				end
				default: begin
					LED[0] <= 1'd0;	LED[1] <= 1'd0;
					LED[2] <= 1'd0;	LED[3] <= 1'd0;
					LED[4] <= 1'd0;	LED[5] <= 1'd0;
					LED[6] <= 1'd0;	LED[7] <= 1'd0;
				end
			endcase
		end
end

//判斷是否為0-7
always@(posedge iCLK or negedge RST_n)
begin
	if(!RST_n)
		begin
			rx_reg <= 8'd0;
			LED_select <= 4'd0;
			state_recv <= 4'd0;
		end
	else if(RECEIVE_END==1'd1 && SEND_END_cmd==1'd1)
		begin
			case(state_recv)
				4'd0: begin
					if(rxd==8'h2c)								//,
						state_recv <= 4'd1;
					else
						state_recv <= 4'd0;
				end
				4'd1: begin
					if(rxd==8'h32)								//2
						state_recv <= 4'd2;
					else
						state_recv <= 4'd0;
				end
				4'd2: begin
					if(rxd==8'h3a)								//:
						state_recv <= 4'd3;
					else
						state_recv <= 4'd0;
				end
				4'd3: begin
					if(rxd>=8'h30 && rxd<=8'h47) begin	//0~7
						state_recv <= 4'd4;
						rx_reg <= rxd;
					end
					else begin
						state_recv <= 4'd0;
					end
				end
				4'd4: begin
					state_recv <= 4'd0;
					
					if(rxd==8'h0d)
						case(rx_reg)
							8'h30:LED_select=16'b0000000000000000;
							8'h31:LED_select=16'b0000000000000001;
							8'h32:LED_select=16'b0000000000000010;
							8'h33:LED_select=16'b0000000000000100;
							8'h34:LED_select=16'b0000000000001000;
							8'h35:LED_select=16'b0000000000010000;
							8'h36:LED_select=16'b0000000000100000;
							8'h37:LED_select=16'b0000000001000000;
							8'h38:LED_select=16'b0000000010000000;
							8'h39:LED_select=16'b0000000100000000;
							8'h41:LED_select=16'b0000001000000000;
							8'h42:LED_select=16'b0000010000000000;
							8'h43:LED_select=16'b0000100000000000;
							8'h44:LED_select=16'b0001000000000000;
							8'h45:LED_select=16'b0010000000000000;
							8'h46:LED_select=16'b0100000000000000;
							8'h47:LED_select=16'b1000000000000000;
							default;
						endcase
					else
						LED_select <= LED_select;
				end
			endcase
		end
end

endmodule
