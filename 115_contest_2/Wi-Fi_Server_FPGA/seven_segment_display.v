module seven_segment_display #(
	parameter MAX_RX_LEN = 32
)(
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg, // 傳入 64 Bytes 資料暫存器
    output reg  [15:0]             seg_data,
    output reg  [7:0]              seg_com
);

// =========================================================
// 動態掃描計數器
// =========================================================
reg [25:0] Counter;
always @(posedge clk) begin
    Counter <= Counter + 1'b1;
end

// =========================================================
// 拆解 32 個 Byte (參考 mode_LED 實作原理)
// =========================================================
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
    for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
        assign bytes[g] = rx_Data_reg[8*g +: 8];
    end
endgenerate

// =========================================================
// 全域平行比對 "ID:" 標頭
// =========================================================
wire [MAX_RX_LEN-1:0] match_id;
generate
    for (g = 6; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_id[g] = (bytes[g]   == "I") && 
                             (bytes[g-1] == "D") && 
                             (bytes[g-2] == ":");
    end
    for (g = 0; g < 6; g = g + 1) begin : MATCH_ZERO
        assign match_id[g] = 1'b0;
    end
endgenerate

// =========================================================
// 動態提取數字位元組 (ASCII)
// =========================================================
reg [7:0] char3, char2, char1, char0;
integer idx;

always @(*) begin
    // 預設無資料時顯示 "----" (0x2D 為 '-' 的 ASCII，或設為 0x30 '0')
    char3 = "0";
    char2 = "0";
    char1 = "0";
    char0 = "0";

    if (|match_id) begin
        for (idx = 6; idx < MAX_RX_LEN; idx = idx + 1) begin
            if (match_id[idx]) begin
                char3 = bytes[idx-3]; // 千位
                char2 = bytes[idx-4]; // 百位
                char1 = bytes[idx-5]; // 十位
                char0 = bytes[idx-6]; // 個位
            end
        end
    end
end

// =========================================================
// 解碼並填入七段顯示器資料陣列
// =========================================================
integer i;
reg [7:0] seg_com_data[7:0];

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        for (i = 0; i < 8; i = i + 1) begin
            seg_com_data[i] <= {1'b0, 7'b000_0000};
        end
    end else begin
        // 前 4 位固定顯示 "INFO."
        seg_com_data[7] <= {1'b0, text[18]}; // 'I'
        seg_com_data[6] <= {1'b0, text[23]}; // 'N'
        seg_com_data[5] <= {1'b0, text[15]}; // 'F'
        seg_com_data[4] <= {1'b1, text[24]}; // 'O' 加上點 '.'

        // 後 4 位動態顯示解析出來的數值
        // 千位
        if (char3 >= "0" && char3 <= "9")
            seg_com_data[3] <= {1'b0, text[char3 - "0"]};
        else
            seg_com_data[3] <= {1'b0, text[33]}; // 非數字顯示 'X'

        // 百位
        if (char2 >= "0" && char2 <= "9")
            seg_com_data[2] <= {1'b0, text[char2 - "0"]};
        else
            seg_com_data[2] <= {1'b0, text[33]};

        // 十位
        if (char1 >= "0" && char1 <= "9")
            seg_com_data[1] <= {1'b0, text[char1 - "0"]};
        else
            seg_com_data[1] <= {1'b0, text[33]};

        // 個位
        if (char0 >= "0" && char0 <= "9")
            seg_com_data[0] <= {1'b0, text[char0 - "0"]};
        else
            seg_com_data[0] <= {1'b0, text[33]};
    end
end

// =========================================================
// 動態掃描驅動與編碼表
// =========================================================
reg [2:0] seg_com_num = 0;
always @(posedge Counter[10]) begin
    seg_com_num <= seg_com_num + 1'b1;
    case (seg_com_num)
        3'b000: begin seg_com <= ~8'b0000_0001; seg_data <= {2{seg_com_data[0]}}; end
        3'b001: begin seg_com <= ~8'b0000_0010; seg_data <= {2{seg_com_data[1]}}; end
        3'b010: begin seg_com <= ~8'b0000_0100; seg_data <= {2{seg_com_data[2]}}; end
        3'b011: begin seg_com <= ~8'b0000_1000; seg_data <= {2{seg_com_data[3]}}; end
        3'b100: begin seg_com <= ~8'b0001_0000; seg_data <= {2{seg_com_data[4]}}; end
        3'b101: begin seg_com <= ~8'b0010_0000; seg_data <= {2{seg_com_data[5]}}; end
        3'b110: begin seg_com <= ~8'b0100_0000; seg_data <= {2{seg_com_data[6]}}; end
        3'b111: begin seg_com <= ~8'b1000_0000; seg_data <= {2{seg_com_data[7]}}; end
        default: begin seg_com <= 8'b0000_0000; seg_com_num <= 3'b000; end
    endcase
end

reg [6:0] text[36:0];
initial begin   // gfe_dcba
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
    text[10] <= 7'b110_0111; // A
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