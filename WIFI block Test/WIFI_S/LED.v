module led(
				input clk,
				input[4:0]LED_select,
				output reg[15:0]LED
);

always@(posedge clk)
begin
	case(LED_select)
		4'd0:begin  LED=16'b1000000000000000; end
		4'd1:begin  LED=16'b0100000000000000; end
		4'd2:begin  LED=16'b0010000000000000; end
		4'd3:begin  LED=16'b0001000000000000; end
		4'd4:begin  LED=16'b0000100000000000; end
		4'd5:begin  LED=16'b0000010000000000; end
		4'd6:begin  LED=16'b0000001000000000; end
		4'd7:begin  LED=16'b0000000100000000; end
		4'd8:begin  LED=16'b0000000010000000; end
		4'd9:begin  LED=16'b0000000001000000; end
		4'd10:begin LED=16'b0000000000100000; end
		4'd11:begin LED=16'b0000000000010000; end
		4'd12:begin LED=16'b0000000000001000; end
		4'd13:begin LED=16'b0000000000000100; end
		4'd14:begin LED=16'b0000000000000010; end
		4'd15:begin LED=16'b0000000000000001; end
		default : LED=0;
	endcase
end

		
endmodule