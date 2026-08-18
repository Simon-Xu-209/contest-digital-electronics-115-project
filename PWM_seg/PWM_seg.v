module PWM_seg(
	input wire clk,           // 系統時脈 (50MHz)
	input wire rst_n,         // 低電位復位
	output reg [7:0] seg,     // {a, b, c, d, e, f, g, dp} (段碼)
	output reg [7:0] dig      // DIG1 ~ DIG8 (位數控制)
);

reg [12:0] seg_scan_counter; // 七段顯示器位址掃描計數器(掃描速度)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        seg_scan_counter <= 13'd0;
    else if (seg_scan_counter >= 13'd6249) // 50MHz / 8000Hz = 6250tick
        seg_scan_counter <= 13'd0;
    else
        seg_scan_counter <= seg_scan_counter + 1;
end

// 切換目前顯示位數 (0 ~ 7 對應 DIG1 ~ DIG8)
reg [2:0] current_dig;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        current_dig <= 3'd0;
    else if (seg_scan_counter == 13'd6249)
        current_dig <= current_dig + 1'b1;
end

// 七段顯示器 PWM 致能判定 (將 125us 切分為 7 階)
wire seg_pwm_en;/*
assign seg_pwm_en = (current_dig == 3'd0) ? 1'b0 :
                    (current_dig == 3'd1) ? (seg_scan_counter < 13'd892 * 1) : // ~14.2%
                    (current_dig == 3'd2) ? (seg_scan_counter < 13'd892 * 2) : // ~28.4%
                    (current_dig == 3'd3) ? (seg_scan_counter < 13'd892 * 3) : // ~42.8%
                    (current_dig == 3'd4) ? (seg_scan_counter < 13'd892 * 4) : // ~56.8%
                    (current_dig == 3'd5) ? (seg_scan_counter < 13'd892 * 5) : // ~71.0%
                    (current_dig == 3'd6) ? (seg_scan_counter < 13'd892 * 6) : // ~85.2%
                                            1'b1;                             // 100%
*/

assign seg_pwm_en = (current_dig == 3'd0) ? 1'b0 :                                      // DIG1: 0% (全滅)
                    (current_dig == 3'd1) ? (seg_scan_counter < 13'd6250 * 15 / 1000) : // DIG2: ~1.5%
                    (current_dig == 3'd2) ? (seg_scan_counter < 13'd6250 * 40 / 1000) : // DIG3: ~4.0%
                    (current_dig == 3'd3) ? (seg_scan_counter < 13'd6250 * 10 / 100)  : // DIG4: ~10%
                    (current_dig == 3'd4) ? (seg_scan_counter < 13'd6250 * 22 / 100)  : // DIG5: ~22%
                    (current_dig == 3'd5) ? (seg_scan_counter < 13'd6250 * 45 / 100)  : // DIG6: ~45%
                    (current_dig == 3'd6) ? (seg_scan_counter < 13'd6250 * 70 / 100)  : // DIG7: ~70%
                                            1'b1;                                       // DIG8: 100%

// 段碼與位數點亮控制
always @(*) begin
	if(!rst_n)begin
		dig = 8'b1111_1111;
    end else begin
		 dig = 8'b1111_1111;   // 預設七段顯示器全滅
		 if (seg_pwm_en) begin // 掃描並點亮單個七段顯示器
			  dig[current_dig] = 1'b0;
		 end else begin
			dig = 8'b1111_1111;
		 end

		 // 各位數顯示對應數值 ("1", "2", "3" ... )
		 case (current_dig)
			  3'd0: seg = 8'b0000_0000; // DIG1 不顯示 (全滅)
			  3'd1: seg = 8'b0110_0000; // DIG2 顯示 "1"
			  3'd2: seg = 8'b1101_1010; // DIG3 顯示 "2"
			  3'd3: seg = 8'b1111_0010; // DIG4 顯示 "3"
			  3'd4: seg = 8'b0110_0110; // DIG5 顯示 "4"
			  3'd5: seg = 8'b1011_0110; // DIG6 顯示 "5"
			  3'd6: seg = 8'b1011_1110; // DIG7 顯示 "6"
			  3'd7: seg = 8'b1110_0000; // DIG8 顯示 "7"
			  default: seg = 8'b0000_0000;
		 endcase
	end
end

endmodule