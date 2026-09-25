module Seven_Segment_Display (
	input  wire clk,                 // 系統時脈 (例如 50MHz)
	input  wire rst_n,               // 非同步低電位重置
	
	// 顯示資料與設定輸入
	// 8 個位數的 ASCII 字元 (每個字元 8-bit, 8 * 8-bit = 64-bit)
	// 支援：數字 '0'~'9'、英文字母 'A'~'Z' / 'a'~'z'、空白 ' '
	// 若最高位元 (ASCII[7]) 為 1，則會點亮該位數的小數點 (.)
	input  wire [63:0] display_chars,       
	input  wire [7:0]  brightness_pwm, // 亮度控制 (0 ~ 255, 0 表示最暗/關閉，255 最亮)
	
	// 硬體腳位輸出 (共陰極)
	output reg  [7:0]  seven_segment_Seg, // 七段顯示器腳位 (.gfedcba)
	output reg  [7:0]  seven_segment_Com  // 七段顯示器位數腳位 (Dig1 ~ Dig8, 低電位致能)
);

// ------------------------------------------------------------------------
// 時脈分頻與內部計數器 (Clock Divider & Counters)
// ------------------------------------------------------------------------
reg [15:0] clk_div_cnt; // 用於產生掃描與 PWM 頻率的分頻計數器
    
always @(posedge clk or negedge rst_n) begin
	if (!rst_n)
		clk_div_cnt <= 16'd0;
	else
		clk_div_cnt <= clk_div_cnt + 1'b1;
end

// clk_div_cnt[7:0] 作為 PWM 週期基準 (約 195 kHz @ 50MHz)
// clk_div_cnt[15:13] 作為 8 位數掃描的選擇訊號 (約 1.5 kHz 掃描率)
wire [7:0] pwm_counter  = clk_div_cnt[7:0];
wire [2:0] digit_select = clk_div_cnt[15:13];

// ------------------------------------------------------------------------
// 位數資料選擇 (Data Multiplexer)
// ------------------------------------------------------------------------
reg [7:0] current_char; // 當前位數要顯示的 ASCII 字元資料

always @(*) begin
	case (digit_select)
		3'd0: current_char = display_chars[7:0];
		3'd1: current_char = display_chars[15:8];
		3'd2: current_char = display_chars[23:16];
		3'd3: current_char = display_chars[31:24];
		3'd4: current_char = display_chars[39:32];
		3'd5: current_char = display_chars[47:40];
		3'd6: current_char = display_chars[55:48];
		3'd7: current_char = display_chars[63:56];
		default: current_char = 8'h20;   // 預設為空白 ' '
	endcase
end

// 提取小數點致能位元與 ASCII 碼內容
wire dot_enable = current_char[7]; // 當第 7 位元為 1 時點亮小數點
wire [6:0] char_code  = current_char[6:0];

// ------------------------------------------------------------------------
// 字形解碼器 (依照圖片題目規範之字型)
// 輸出格式：7'b_gfedcba (共陰極：1 表示點亮，0 表示熄滅)
// ------------------------------------------------------------------------
reg [6:0] seg_decoded;

always @(*) begin
	case (char_code)
		// ===== 數字 0 ~ 9 =====
		8'd48, "0": seg_decoded = 7'b011_1111; // 0: a,b,c,d,e,f
		8'd49, "1": seg_decoded = 7'b000_0110; // 1: b,c
		8'd50, "2": seg_decoded = 7'b101_1011; // 2: a,b,d,e,g
		8'd51, "3": seg_decoded = 7'b100_1111; // 3: a,b,c,d,g
		8'd52, "4": seg_decoded = 7'b110_0110; // 4: b,c,f,g
		8'd53, "5": seg_decoded = 7'b110_1101; // 5: a,c,d,f,g
		8'd54, "6": seg_decoded = 7'b111_1101; // 6: a,c,d,e,f,g
		8'd55, "7": seg_decoded = 7'b000_0111; // 7: a,b,c
		8'd56, "8": seg_decoded = 7'b111_1111; // 8: a,b,c,d,e,f,g
		8'd57, "9": seg_decoded = 7'b110_1111; // 9: a,b,c,d,f,g

		// ===== 大寫字母 A ~ Z (含小寫自動對應) =====
		"A", "a": seg_decoded = 7'b111_0111; // A: a,b,c,e,f,g
		"B", "b": seg_decoded = 7'b111_1100; // b: c,d,e,f,g
		"C", "c": seg_decoded = 7'b011_1001; // C: a,d,e,f
		"D", "d": seg_decoded = 7'b101_1110; // d: b,c,d,e,g
		"E", "e": seg_decoded = 7'b111_1001; // E: a,d,e,f,g
		"F", "f": seg_decoded = 7'b111_0001; // F: a,e,f,g
		"G", "g": seg_decoded = 7'b011_1101; // G: a,c,d,e,f
		"H", "h": seg_decoded = 7'b111_0110; // H: b,c,e,f,g
		"I", "i": seg_decoded = 7'b000_0110; // I: b,c
		"J", "j": seg_decoded = 7'b000_1110; // J: b,c,d
		"K", "k": seg_decoded = 7'b111_0101; // K: a,c,e,f,g
		"L", "l": seg_decoded = 7'b011_1000; // L: d,e,f
		"M", "m": seg_decoded = 7'b011_0111; // M: a,b,c,e,f
		"N", "n": seg_decoded = 7'b101_0100; // n: c,e,g
		"O", "o": seg_decoded = 7'b011_1111; // O: a,b,c,d,e,f
		"P", "p": seg_decoded = 7'b111_0011; // P: a,b,e,f,g
		"Q", "q": seg_decoded = 7'b110_0111; // Q: a,b,c,f,g
		"R", "r": seg_decoded = 7'b101_0000; // r: e,g
		"S", "s": seg_decoded = 7'b110_1101; // S: a,c,d,f,g
		"T", "t": seg_decoded = 7'b111_1000; // t: d,e,f,g
		"U", "u": seg_decoded = 7'b011_1110; // U: b,c,d,e,f
		"V", "v": seg_decoded = 7'b001_1100; // v: c,d,e
		"W", "w": seg_decoded = 7'b001_1101; // W: c,d,e,f,g
		"X", "x": seg_decoded = 7'b100_1001; // X: a,d,g
		"Y", "y": seg_decoded = 7'b110_0110; // Y: b,c,f,g
		"Z", "z": seg_decoded = 7'b101_1011; // Z: a,b,d,e,g

		default:  seg_decoded = 7'b000_0000; // 預設熄滅 (例如空白格 ' ')
	endcase
end

// 將小數點與七段解碼結果合併為 {.gfedcba} 格式輸出
always @(*) begin
	seven_segment_Seg = {dot_enable, seg_decoded};
end

// ------------------------------------------------------------------------
// 位數掃描與 PWM 亮度控制邏輯 (Com & PWM Control)
// ------------------------------------------------------------------------
wire pwm_active = (pwm_counter < brightness_pwm); // PWM 週期內點亮時間段

always @(*) begin
	if (!pwm_active) begin
		// PWM 熄滅時間：全部 Com 給高電位 (不導通)
		seven_segment_Com = 8'b1111_1111;
	end else begin
		// PWM 點亮時間：掃描到的位數輸出低電位致能 (Dig1 ~ Dig8)
		case (digit_select)
			3'd0: seven_segment_Com = 8'b1111_1110; // Dig1
			3'd1: seven_segment_Com = 8'b1111_1101; // Dig2
			3'd2: seven_segment_Com = 8'b1111_1011; // Dig3
			3'd3: seven_segment_Com = 8'b1111_0111; // Dig4
			3'd4: seven_segment_Com = 8'b1110_1111; // Dig5
			3'd5: seven_segment_Com = 8'b1101_1111; // Dig6
			3'd6: seven_segment_Com = 8'b1011_1111; // Dig7
			3'd7: seven_segment_Com = 8'b0111_1111; // Dig8
			default: seven_segment_Com = 8'b1111_1111;
		endcase
	end
end

endmodule