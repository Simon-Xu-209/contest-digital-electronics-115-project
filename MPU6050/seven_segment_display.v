// ============================================================================
// Module Name: seven_segment_display
// Description: MPU-6050 專用動態掃描七段顯示器控制器 (支援負數與 5 位數顯示)
// ============================================================================
module seven_segment_display (
	input  wire        clk,          // 50MHz 系統時脈
	input  wire        rst_n,        // 低電位重置
	input  wire [7:0]  switch_8bit,  // 指撥開關：用來切換顯示哪一個軸向數據
	
	// MPU-6050 輸入數據 (16-bit 補碼)
	input  wire [15:0] accel_x,
	input  wire [15:0] accel_y,
	input  wire [15:0] accel_z,
	input  wire [15:0] gyro_x,
	input  wire [15:0] gyro_y,
	input  wire [15:0] gyro_z,

	output reg  [15:0] seg_data,     // 輸出七段顯示器段碼
	output reg  [7:0]  seg_com       // 輸出 8 位掃描掃描訊號
);

    // =========================================================
    // 1. 動態掃描計數器
    // =========================================================
    reg [25:0] Counter;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            Counter <= 26'd0;
        else
            Counter <= Counter + 1'b1;
    end

    // =========================================================
    // 2. 選擇當前欲顯示的數據與標籤文字
    // =========================================================
    reg [15:0] raw_selected;
    reg [6:0]  tag_char0; // 軸向標籤名稱 (A 代表 Accel, G 代表 Gyro)
    reg [6:0]  tag_char1; // X, Y, Z

    always @(*) begin
        case (switch_8bit[2:0])
            3'b000: begin raw_selected = accel_x; tag_char0 = text[10]; tag_char1 = text[33]; end // A-X
            3'b001: begin raw_selected = accel_y; tag_char0 = text[10]; tag_char1 = text[34]; end // A-Y
            3'b010: begin raw_selected = accel_z; tag_char0 = text[10]; tag_char1 = text[35]; end // A-Z
            3'b011: begin raw_selected = gyro_x;  tag_char0 = text[16]; tag_char1 = text[33]; end // G-X
            3'b100: begin raw_selected = gyro_y;  tag_char0 = text[16]; tag_char1 = text[34]; end // G-Y
            3'b101: begin raw_selected = gyro_z;  tag_char0 = text[16]; tag_char1 = text[35]; end // G-Z
            default: begin raw_selected = accel_x; tag_char0 = text[10]; tag_char1 = text[33]; end
        endcase
    end

    // =========================================================
    // 3. 正負號解算與絕對值 BCD 拆解
    // =========================================================
    wire is_negative = raw_selected[15];
    wire [15:0] abs_val = is_negative ? (~raw_selected + 1'b1) : raw_selected;

    // 拆解 5 位數數據 (0 ~ 65535)
    wire [3:0] d4 = (abs_val / 10000) % 10; // 萬位
    wire [3:0] d3 = (abs_val / 1000)  % 10; // 千位
    wire [3:0] d2 = (abs_val / 100)   % 10; // 百位
    wire [3:0] d1 = (abs_val / 10)    % 10; // 十位
    wire [3:0] d0 = abs_val % 10;           // 個位

    // =========================================================
    // 4. 更新七段顯示器暫存陣列 (seg_com_data)
    // =========================================================
    integer i;
    reg [7:0] seg_com_data[7:0];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                seg_com_data[i] <= {1'b0, 7'b000_0000};
            end
        end else begin
            // [7:5] 顯示頻道名稱 (例如 A - X )
            seg_com_data[7] <= {1'b0, tag_char0};     // 'A' 或 'G'
            seg_com_data[6] <= {1'b0, 7'b100_0000};   // '-'
            seg_com_data[5] <= {1'b0, tag_char1};     // 'X', 'Y', 或 'Z'

            // [4:0] 顯示 5 位數數據 (若為負數，最高位 seg_com_data[4] 顯示負號 '-')
            if (is_negative) begin
                seg_com_data[4] <= {1'b0, 7'b100_0000}; // '-' 負號
            end else begin
                seg_com_data[4] <= {1'b0, text[d4]};     // 萬位數字
            end
            
            seg_com_data[3] <= {1'b0, text[d3]};         // 千位
            seg_com_data[2] <= {1'b0, text[d2]};         // 百位
            seg_com_data[1] <= {1'b0, text[d1]};         // 十位
            seg_com_data[0] <= {1'b0, text[d0]};         // 個位
        end
    end

    // =========================================================
    // 5. 動態掃描驅動
    // =========================================================
    reg [2:0] seg_com_num = 0;
    always @(posedge Counter[10]) begin // 約 24kHz 多工掃描頻率
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

    // =========================================================
    // 6. 字形解碼表 (text[0~35])
    // =========================================================
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