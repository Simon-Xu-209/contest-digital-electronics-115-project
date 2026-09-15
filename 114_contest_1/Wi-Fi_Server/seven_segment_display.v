module seven_segment_display #(
	parameter MAX_RX_LEN = 32
)(
	input  wire                    clk,
	input  wire                    rst_n,
	input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg, // 傳入 32 Bytes 資料暫存器
	input  wire                    rx_ready,    // 接收完成脈衝
	input  wire [7:0]              switch_8bit,
	input  wire [4:0]              KEY,
	input  wire                    Pressed,
	output reg  [15:0]             seg_data,
	output reg  [7:0]              seg_com
);

// 拆解 32 個 Byte (bytes[0] 為 lowest byte，即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_Data_reg[8*g +: 8];
	end
endgenerate

// 格式範例：bytes[g]="I", bytes[g-1]="D", bytes[g-2]=":", bytes[g-3]='9', ..., bytes[g-6]='1'
wire [MAX_RX_LEN-1:0] match_id;
reg  [7:0]            detected_key;
reg                   id_found;

generate
    for (g = 4; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_id[g] = (bytes[g]   == "N") &&
                             (bytes[g-1] == "u") &&
                             (bytes[g-2] == "m") &&
                             (bytes[g-3] == ":");
    end
    for (g = 0; g < 4; g = g + 1) begin : MATCH_ZERO
        assign match_id[g] = 1'b0;
    end
endgenerate

integer k;
always @(*) begin
    id_found    = 1'b0;
    detected_key = 8'd0;
    for (k = MAX_RX_LEN - 1; k >= 4; k = k - 1) begin
        if (match_id[k] && !id_found) begin
            id_found    = 1'b1;
            detected_key = bytes[k-4];
        end
    end
end

reg Pressed_reg1, Pressed_reg2;
wire Pressed_posedge = (Pressed_reg1 && !Pressed_reg2);
wire Pressed_negedge = (!Pressed_reg1 && Pressed_reg2);
always@(posedge clk) begin
	if (!rst_n) begin
		Pressed_reg1 <= 0;
		Pressed_reg2 <= 0;
	end else begin
		Pressed_reg1 <= rx_ready;
		Pressed_reg2 <= Pressed_reg1;
	end
end

reg [7:0] key_latched;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_latched <= 8'd15;
	end else if (rx_ready && !Pressed_reg1) begin // 只在剛按下的正緣鎖存 KEY
		key_latched <= detected_key;
	end else begin
		key_latched <= "";
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
localparam MODE_CLEAR   = 3'd0;
localparam MODE_INITIAL = 3'd1;
localparam MODE_IDLE    = 3'd2;
localparam MODE_XX      = 3'd3;
localparam MODE_SET     = 3'd4;


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
			
		end
		
		MODE_XX: begin end
		MODE_SET: begin end
		
		default:;
	endcase
	
	if (switch_8bit == 8'b0_0_000_1_01) begin
		next_sys_mode = MODE_INITIAL;
	end if ((switch_8bit == 8'b0_0_001_1_01) || (switch_8bit == 8'b0_0_010_1_01) || (switch_8bit == 8'b0_0_100_1_01)) begin
		next_sys_mode = MODE_XX;
	end if ((switch_8bit == 8'b0_1_000_1_01) && ((detected_key == "5")||(detected_key == "0"))) begin
		next_sys_mode = MODE_SET;
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
				seg_com_data[7] <= {1'b0, text[36]}; // ' '
				seg_com_data[6] <= {1'b0, text[36]}; // ' '
				seg_com_data[5] <= {1'b0, text[36]}; // ' '
				seg_com_data[4] <= {1'b0, text[36]}; // ' '
				seg_com_data[3] <= {1'b0, text[36]}; // ' '
				seg_com_data[2] <= {1'b0, text[36]}; // ' '
				seg_com_data[1] <= {1'b0, text[36]}; // ' '
				seg_com_data[0] <= {1'b0, text[36]}; // ' '
			end
			
			MODE_XX: begin
				seg_com_data[7] <= {1'b0, text[22]}; // 'M'
				seg_com_data[6] <= {1'b0, text[24]}; // 'O'
				seg_com_data[5] <= {1'b0, text[13]}; // 'D'
				seg_com_data[4] <= {1'b0, text[14]}; // 'E'
				seg_com_data[3] <= (switch_8bit[5:3] == 3'b001) ? {1'b0, text[1]} : (switch_8bit[5:3] == 3'b010) ? {1'b0, text[2]} : {1'b0, text[3]}; // ' '
				seg_com_data[2] <= {1'b1, text[36]}; // ':'
				seg_com_data[1] <= (switch_8bit[5:3] == 3'b001) ? {1'b0, text[33]} : (switch_8bit[5:3] == 3'b010) ? {1'b0, text[34]} : {1'b0, text[35]}; // ' '
				seg_com_data[0] <= (switch_8bit[5:3] == 3'b001) ? {1'b0, text[33]} : (switch_8bit[5:3] == 3'b010) ? {1'b0, text[34]} : {1'b0, text[35]}; // ' '
			end
			
			MODE_SET: begin
				seg_com_data[7] <= {1'b0, text[28]}; // 'S'
				seg_com_data[6] <= {1'b0, text[14]}; // 'E'
				seg_com_data[5] <= {1'b0, text[29]}; // 'T'
				seg_com_data[4] <= {1'b1, text[36]}; // ':'
				seg_com_data[3] <= {1'b0, text[0]};  // ' '
				seg_com_data[2] <= {1'b0, text[0]};  // ' '
				seg_com_data[1] <= {1'b0, text[0]};  // ' '
				seg_com_data[0] <= (detected_key == "5") ? {1'b0, text[5]} : (detected_key == "0") ? {1'b0, text[0]} : seg_com_data[0]; // '5 or 0'
			end
			
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