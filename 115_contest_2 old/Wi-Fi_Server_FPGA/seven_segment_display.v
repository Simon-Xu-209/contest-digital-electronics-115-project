module seven_segment_display #(
	parameter MAX_RX_LEN = 32
)(
	input  wire                    clk,
	input  wire                    rst_n,
	input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg, // 傳入 32 Bytes 資料暫存器
	input  wire [7:0]              switch_8bit,
	input  wire [3:0]              KEY,
	input  wire                    Pressed,
	output reg  [15:0]             seg_data,
	output reg  [7:0]              seg_com,

	input [31:0] orderID,       // 訂單 ID
	input [15:0] orderQuantity, // 訂購數量
	input [15:0] bidAmount,     // 出價金額
	input [15:0] productQuota,  // 商品配額
	input [15:0] grandTotal     // 付款總額
);

reg Pressed_reg1, Pressed_reg2;
wire Pressed_posedge = (Pressed_reg1 && !Pressed_reg2);
wire Pressed_negedge = (!Pressed_reg1 && Pressed_reg2);
always@(posedge clk) begin
	if (!rst_n) begin
		Pressed_reg1 <= 0;
		Pressed_reg2 <= 0;
	end else begin
		Pressed_reg1 <= Pressed;
		Pressed_reg2 <= Pressed_reg1;
	end
end

reg [3:0] key_latched;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_latched <= 4'd15;
	end else if (Pressed && !Pressed_reg1) begin // 只在剛按下的正緣鎖存 KEY
		key_latched <= KEY;
	end else begin
		key_latched <= 4'd15;
	end
end

reg [3:0] key_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_pulse <= 4'b1111;
	end else begin
		// 當 Pressed 產生正緣（剛按下的瞬間）
		if (Pressed && !Pressed_reg1) begin
			key_pulse <= KEY;       // 存入當前按下的 key 值
		end else begin
			key_pulse <= 4'b1111;   // 1 個 Clock 後自動歸位為預設值 15
		end
	end
end

localparam FREQ_HZ        = 50_000_000;
localparam CNT_INIT_100US = (FREQ_HZ / 10000) - 1; // 100 微秒週期

// =========================================================
// 動態掃描計數器
// =========================================================
reg [25:0] Counter;
always @(posedge clk) begin
    Counter <= Counter + 1'b1;
end

// 系統模式定義
localparam MODE_CLEAR        = 3'd0;
localparam MODE_INITIAL      = 3'd1;
localparam MODE_IDLE         = 3'd2;
localparam MODE_CONNECT_TEST = 3'd3;
localparam MODE_EDIT_01      = 3'd4;
localparam MODE_EDIT_02      = 3'd5;


reg [2:0]  current_sys_mode;
reg [2:0]  next_sys_mode;
reg [31:0] cnt_timer;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_sys_mode   <= MODE_CLEAR;
	end else begin
		current_sys_mode   <= next_sys_mode;
	end
end

always @(*) begin
	next_sys_mode = current_sys_mode;
	case(current_sys_mode)
		MODE_CLEAR: begin end
		
		MODE_INITIAL: begin
			if (cnt_timer < FREQ_HZ*4) begin
				next_sys_mode = MODE_INITIAL;
			end else begin
				next_sys_mode = MODE_IDLE;
			end
		end
		
		MODE_IDLE: begin end
		
		MODE_CONNECT_TEST: begin end
		
		MODE_EDIT_01, MODE_EDIT_02: begin end
		
		default:;
	endcase
	
	if ((switch_8bit == 8'b0) && (key_pulse == 6)) begin
		next_sys_mode = MODE_INITIAL;
	end else if ((switch_8bit[7:4] == 4'b0100) && (key_pulse == 6)) begin
		if (switch_8bit[3:0] == 4'b0001) begin
			next_sys_mode = MODE_EDIT_01;
		end else if (switch_8bit[3:0] == 4'b0010) begin
			next_sys_mode = MODE_EDIT_02;
		end
	end
end

integer i;
reg [7:0] seg_com_data[7:0];

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		for (i = 0; i < 8; i = i + 1) begin
			seg_com_data[i] <= {1'b0, 7'b000_0000};
		end
		cnt_timer <= 32'b0;
	end else begin
		case(current_sys_mode)
		
			MODE_CLEAR: begin
				for (i = 0; i < 8; i = i + 1) begin
					seg_com_data[i] <= {1'b0, 7'b000_0000};
				end
				cnt_timer <= 32'd0;
			end
			
			MODE_INITIAL: begin
				seg_com_data[7] <= {1'b1, text[36]}; // '.'
				seg_com_data[6] <= {1'b1, text[36]}; // '.'
				seg_com_data[5] <= {1'b0, text[32]}; // 'W'
				seg_com_data[4] <= {1'b0, text[10]}; // 'A'
				seg_com_data[3] <= {1'b0, text[18]}; // 'I'
				seg_com_data[2] <= {1'b0, text[29]}; // 'T'
				seg_com_data[1] <= {1'b1, text[36]}; // '.'
				seg_com_data[0] <= {1'b1, text[36]}; // '.'
				if (cnt_timer < FREQ_HZ*4) begin
					cnt_timer <= cnt_timer + 32'b1;
				end else begin
					cnt_timer <= 32'b0;
				end
			end
			
			MODE_IDLE: begin
				seg_com_data[7] <= {1'b0, 7'b100_0000}; // '-'
				seg_com_data[6] <= {1'b0, text[bidAmount[15:8] / 10]}; // '7'
				seg_com_data[5] <= {1'b0, text[bidAmount[15:8] % 10]}; // '0'
				seg_com_data[4] <= {1'b0, 7'b100_0000}; // '-'
				seg_com_data[3] <= {1'b0, 7'b100_0000}; // '-'
				seg_com_data[2] <= {1'b0, text[bidAmount[7:0] / 10]}; // '3'
				seg_com_data[1] <= {1'b0, text[bidAmount[7:0] % 10]}; // '0'
				seg_com_data[0] <= {1'b0, 7'b100_0000}; // '-'
			end
			
			MODE_EDIT_01: begin
				seg_com_data[7] <= {1'b0, text[0]}; // '0'
				seg_com_data[6] <= {1'b0, text[0]}; // '0'
				seg_com_data[5] <= {1'b0, text[bidAmount[15:8] / 10]}; // '7'
				seg_com_data[4] <= {1'b0, text[bidAmount[15:8] % 10]}; // '0'
				seg_com_data[3] <= {1'b0, text[29]}; // 'T'
				seg_com_data[2] <= {1'b0, text[28]}; // 'S'
				seg_com_data[1] <= {1'b0, text[8]};  // '8'
				seg_com_data[0] <= {1'b0, text[0]};  // '0'
			end
			
			MODE_EDIT_02: begin
				seg_com_data[7] <= {1'b0, text[0]}; // '0'
				seg_com_data[6] <= {1'b0, text[0]}; // '0'
				seg_com_data[5] <= {1'b0, text[bidAmount[7:0] / 10]}; // '3'
				seg_com_data[4] <= {1'b0, text[bidAmount[7:0] % 10]}; // '0'
				seg_com_data[3] <= {1'b0, text[29]}; // 'T'
				seg_com_data[2] <= {1'b0, text[28]}; // 'S'
				seg_com_data[1] <= {1'b0, text[8]};  // '8'
				seg_com_data[0] <= {1'b0, text[0]};  // '0'
			end
			
			MODE_CONNECT_TEST: begin end
			
			default:;
		endcase
	end
end

// =========================================================
// 動態掃描驅動與編碼表
// =========================================================
reg [2:0] seg_com_num = 0;
always @(posedge Counter[10]) begin
	seg_com_num <= seg_com_num + 1'b1;
	case (seg_com_num)
		3'b000: begin seg_com <= 8'b1111_1110; seg_data <= {2{seg_com_data[0]}}; end
		3'b001: begin seg_com <= 8'b1111_1101; seg_data <= {2{seg_com_data[1]}}; end
		3'b010: begin seg_com <= 8'b1111_1011; seg_data <= {2{seg_com_data[2]}}; end
		3'b011: begin seg_com <= 8'b1111_0111; seg_data <= {2{seg_com_data[3]}}; end
		3'b100: begin seg_com <= 8'b1110_1111; seg_data <= {2{seg_com_data[4]}}; end
		3'b101: begin seg_com <= 8'b1101_1111; seg_data <= {2{seg_com_data[5]}}; end
		3'b110: begin seg_com <= 8'b1011_1111; seg_data <= {2{seg_com_data[6]}}; end
		3'b111: begin seg_com <= 8'b0111_1111; seg_data <= {2{seg_com_data[7]}}; end
		default: begin seg_com <= 8'b1111_1111; seg_com_num <= 3'b000; end
	endcase
end

reg [6:0] text [36:0];
initial begin  // gfe_dcba
	text[0]  <= 7'b011_1111; // 0
	text[1]  <= 7'b000_0110; // 1
	text[2]  <= 7'b101_1011; // 2
	text[3]  <= 7'b100_1111; // 3
	text[4]  <= 7'b110_0110; // 4
	text[5]  <= 7'b110_1101; // 5
	text[6]  <= 7'b111_1101; // 6
	text[7]  <= 7'b000_0111; // 7
	text[8]  <= 7'b111_1111; // 8
	text[9]  <= 7'b110_1111; // 9
	text[10] <= 7'b111_0111; // A
	text[11] <= 7'b111_1100; // B
	text[12] <= 7'b011_1001; // C
	text[13] <= 7'b101_1110; // D
	text[14] <= 7'b111_1001; // E
	text[15] <= 7'b111_0001; // F
	text[16] <= 7'b011_1101; // G
	text[17] <= 7'b111_0110; // H
	text[18] <= 7'b011_0000; // I
	text[19] <= 7'b000_1110; // J
	text[20] <= 7'b111_0101; // K
	text[21] <= 7'b011_1001; // L
	text[22] <= 7'b101_0101; // M
	text[23] <= 7'b101_0101; // N
	text[24] <= 7'b101_1100; // O
	text[25] <= 7'b111_0011; // P
	text[26] <= 7'b110_0011; // Q
	text[27] <= 7'b101_0000; // R
	text[28] <= 7'b110_1101; // S
	text[29] <= 7'b111_1000; // T
	text[30] <= 7'b011_1110; // U
	text[31] <= 7'b000_1100; // V
	text[32] <= 7'b010_1010; // W
	text[33] <= 7'b100_1001; // X
	text[34] <= 7'b110_1110; // Y
	text[35] <= 7'b101_1011; // Z
	text[36] <= 7'b000_0000; // 空白
end

endmodule