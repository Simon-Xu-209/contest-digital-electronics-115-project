module LED_Matrix_8x8 (
	input clk,
	input rst_n,
	output reg [7:0] DOT_G,
	output reg [7:0] DOT_R,
	output reg [7:0] DOT_S
);

// 分頻器：將 50MHz 降頻至約 1kHz 的掃描頻率 (8 個狀態輪流，整體更新率約 125Hz)
reg [15:0] clk_div;
wire scan_clk = (clk_div == 16'd49_999);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		clk_div <= 16'd0;
	else if (scan_clk)
		clk_div <= 16'd0;
	else
		clk_div <= clk_div + 1'b1;
end

// 掃描計數器 (0 ~ 7)
reg [2:0] scan_idx;

always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            scan_idx <= 3'd0;
        else if (scan_clk)
scan_idx <= scan_idx + 1'b1;
end

// 掃描腳位控制 (低電位致能, One-Hot 輪流)
always @(*) begin
	case (scan_idx)
		//3'd0: DOT_S = 8'b1111_1110;
		//3'd1: DOT_S = 8'b1111_1101;
		//3'd2: DOT_S = 8'b1111_1011;
		//3'd3: DOT_S = 8'b1111_0111;
		//3'd4: DOT_S = 8'b1110_1111;
		//3'd5: DOT_S = 8'b1101_1111;
		//3'd6: DOT_S = 8'b1011_1111;
		//3'd7: DOT_S = 8'b0111_1111;
		default: DOT_S = ~8'b1110_0111;
	endcase
end

always @(*) begin
	case (scan_idx)
		// 對應 DOT_R1~R8, DOT_G1~G8
		//3'd0: begin DOT_R = 8'b1000_0001; DOT_G = 8'b1111_1111; end
		//3'd1: begin DOT_R = 8'b0100_0010; DOT_G = 8'b1000_0001; end
		//3'd2: begin DOT_R = 8'b0010_0100; DOT_G = 8'b1000_0001; end
		//3'd3: begin DOT_R = 8'b0001_1000; DOT_G = 8'b1000_0001; end
		//3'd4: begin DOT_R = 8'b0001_1000; DOT_G = 8'b1000_0001; end
		//3'd5: begin DOT_R = 8'b0010_0100; DOT_G = 8'b1000_0001; end
		//3'd6: begin DOT_R = 8'b0100_0010; DOT_G = 8'b1000_0001; end
		//3'd7: begin DOT_R = 8'b1000_0001; DOT_G = 8'b1111_1111; end
		default: begin DOT_R = 8'b0000_0000; DOT_G = 8'b0000_0000; end
	endcase
end

endmodule