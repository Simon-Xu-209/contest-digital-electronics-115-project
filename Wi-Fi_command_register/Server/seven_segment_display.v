module seven_segment_display(
	input clk,
	input rst_n,
	input wire [15:0] WiFi_signal,
	output reg [15:0] seg_data,
	output reg [7:0] seg_com
);

reg [25:0]Counter;
always@(posedge clk) begin
	Counter <= Counter + 1;
end

integer i;
reg [7:0]seg_com_data[7:0];
always@(posedge clk or negedge rst_n) begin
	if(rst_n == 0) begin
		for(i = 0;i < 8;i = i + 1) begin
			seg_com_data[i] <= {1'b0, 7'b000_0000};
		end
	end else begin
		seg_com_data[7] <= {1'b0, text[18]}; //I
		seg_com_data[6] <= {1'b0, text[23]}; //N
		seg_com_data[5] <= {1'b0, text[15]}; //F
		seg_com_data[4] <= {1'b1, text[36]}; //.
		seg_com_data[3] <= {1'b0, text[36]}; // 
		seg_com_data[2] <= {1'b0, text[36]}; // 
		if (WiFi_signal == 16'd0) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[0]};  //0
		end else if (WiFi_signal == 16'd1) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[1]};  //1
		end else if (WiFi_signal == 16'd2) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[2]};  //2
		end else if (WiFi_signal == 16'd3) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[3]};  //3
		end else if (WiFi_signal == 16'd4) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[4]};  //4
		end else if (WiFi_signal == 16'd5) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[5]};  //5
		end else if (WiFi_signal == 16'd6) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[6]};  //6
		end else if (WiFi_signal == 16'd7) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[7]};  //7
		end else if (WiFi_signal == 16'd8) begin
			seg_com_data[1] <= {1'b0, text[0]};  //0
			seg_com_data[0] <= {1'b0, text[8]};  //8
		end else begin
			seg_com_data[1] <= {1'b1, text[33]};  //X
			seg_com_data[0] <= {1'b1, text[33]};  //X
		end
	end
end

reg [2:0]seg_com_num = 0;
always@(posedge Counter[10]) begin
	seg_com_num <= seg_com_num + 1;
	case(seg_com_num)
		3'b000:begin seg_com <= ~8'b0000_0001; seg_data <= {2{seg_com_data[0]}}; end
		3'b001:begin seg_com <= ~8'b0000_0010; seg_data <= {2{seg_com_data[1]}}; end
		3'b010:begin seg_com <= ~8'b0000_0100; seg_data <= {2{seg_com_data[2]}}; end
		3'b011:begin seg_com <= ~8'b0000_1000; seg_data <= {2{seg_com_data[3]}}; end
		3'b100:begin seg_com <= ~8'b0001_0000; seg_data <= {2{seg_com_data[4]}}; end
		3'b101:begin seg_com <= ~8'b0010_0000; seg_data <= {2{seg_com_data[5]}}; end
		3'b110:begin seg_com <= ~8'b0100_0000; seg_data <= {2{seg_com_data[6]}}; end
		3'b111:begin seg_com <= ~8'b1000_0000; seg_data <= {2{seg_com_data[7]}}; end
		default:begin seg_com <= 8'b0000_0000; seg_com_num <= 3'b000;end
	endcase
end

reg [6:0]text[36:0]; //共陰七段顯示器
initial begin   //gfe_dcba
	text[0]  <= 7'b011_1111; //0
	text[1]  <= 7'b000_0110; //1
	text[2]  <= 7'b100_1111; //2
	text[3]  <= 7'b100_1111; //3
	text[4]  <= 7'b110_0110; //4
	text[5]  <= 7'b110_1101; //5
	text[6]  <= 7'b111_1101; //6
	text[7]  <= 7'b000_0111; //7
	text[8]  <= 7'b111_1111; //8
	text[9]  <= 7'b110_1111; //9
	text[10] <= 7'b110_0111; //A
	text[11] <= 7'b111_1100; //B
	text[12] <= 7'b011_1001; //C
	text[13] <= 7'b101_1110; //D
	text[14] <= 7'b111_1001; //E
	text[15] <= 7'b111_0001; //F
	text[16] <= 7'b011_1101; //G
	text[17] <= 7'b111_0110; //H
	text[18] <= 7'b011_0000; //I
	text[19] <= 7'b000_1110; //J
	text[20] <= 7'b111_0101; //K
	text[21] <= 7'b011_1000; //L
	text[22] <= 7'b101_0101; //M
	text[23] <= 7'b101_0100; //N
	text[24] <= 7'b101_1100; //O
	text[25] <= 7'b111_0011; //P
	text[26] <= 7'b110_0011; //Q
	text[27] <= 7'b101_0000; //R
	text[28] <= 7'b110_1101; //S
	text[29] <= 7'b111_1000; //T
	text[30] <= 7'b011_1110; //U
	text[31] <= 7'b000_1100; //V
	text[32] <= 7'b010_1010; //W
	text[33] <= 7'b100_1001; //X
	text[34] <= 7'b110_1110; //Y
	text[35] <= 7'b101_1011; //Z
	text[36] <= 7'b000_0000; // 
end

endmodule