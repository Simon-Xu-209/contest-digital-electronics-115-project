module Joystick_display (
	input  wire        ck,           // 50MHz 系統時脈
	input  wire        rst_n,        // 低電位復位
	input  wire [15:0] x_axis,       // 搖桿 X 軸 16-bit ADC 數值
	input  wire [15:0] y_axis,       // 搖桿 Y 軸 16-bit ADC 數值
	input  wire        btn_z,        // 搖桿 Z 軸按鈕 (按壓觸發，已防彈跳)
	output reg  [15:0] seg_data,     // 七段顯示器段選訊號
	output reg  [7:0]  seg_com       // 七段顯示器位選掃描訊號
);

// -------------------------------------------------------------------------
// 七段顯示器字元對照表
// -------------------------------------------------------------------------
reg [6:0] text [36:0]; // 共陰七段顯示器 (gfe_dcba)
initial begin
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

    // -------------------------------------------------------------------------
    // 搖桿 Z 軸按鈕檢測與顯示模式切換 (0: X 軸, 1: Y 軸)
    // -------------------------------------------------------------------------
    reg btn_z_r1, btn_z_r2;
    wire btn_z_pos = (btn_z_r1 && !btn_z_r2); // 邊緣觸發檢測

    reg display_mode; // 0: X-axis, 1: Y-axis

    always @(posedge ck or negedge rst_n) begin
        if (!rst_n) begin
            btn_z_r1     <= 1'b0;
            btn_z_r2     <= 1'b0;
            display_mode <= 1'b0; // 預設顯示 X 軸
        end else begin
            btn_z_r1 <= btn_z;
            btn_z_r2 <= btn_z_r1;
            
            if (btn_z_pos) begin
                display_mode <= ~display_mode;
            end
        end
    end

    // 選擇要顯示的軸向數值
    wire [15:0] current_val = (display_mode == 1'b0) ? x_axis : y_axis;

    // -------------------------------------------------------------------------
    // 16-bit 二進位轉 5 位數 BCD (Double Dabble 演算法)
    // -------------------------------------------------------------------------
    function [19:0] bin16_to_bcd;
        input [15:0] bin;
        integer i;
        reg [19:0] bcd;
        begin
            bcd = 20'b0;
            for (i = 15; i >= 0; i = i - 1) begin
                if (bcd[3:0]   >= 5) bcd[3:0]   = bcd[3:0]   + 3; // 個位
                if (bcd[7:4]   >= 5) bcd[7:4]   = bcd[7:4]   + 3; // 十位
                if (bcd[11:8]  >= 5) bcd[11:8]  = bcd[11:8]  + 3; // 百位
                if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3; // 千位
                if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 3; // 萬位
                bcd = {bcd[18:0], bin[i]};
            end
            bin16_to_bcd = bcd;
        end
    endfunction

    wire [19:0] bcd_val = bin16_to_bcd(current_val);
    wire [3:0] bcd_ten_thousands = bcd_val[19:16]; // 萬位 (0~9)
    wire [3:0] bcd_thousands     = bcd_val[15:12]; // 千位 (0~9)
    wire [3:0] bcd_hundreds      = bcd_val[11:8];  // 百位 (0~9)
    wire [3:0] bcd_tens          = bcd_val[7:4];   // 十位 (0~9)
    wire [3:0] bcd_units         = bcd_val[3:0];   // 個位 (0~9)

    // -------------------------------------------------------------------------
    // 將字元填入 8 位數顯示暫存器 (使用 text[index] 查表)
    // -------------------------------------------------------------------------
    reg [7:0] seg_com_data [7:0];
    integer j;

    always @(posedge ck or negedge rst_n) begin
        if (!rst_n) begin
            for (j = 0; j < 8; j = j + 1) begin
                seg_com_data[j] <= {1'b1, 7'b111_1111};
            end
        end else begin
            // [第 8 位] 最左側：顯示標籤 'X' (text[33]) 或 'Y' (text[34])
            seg_com_data[7] <= {1'b0, (display_mode == 1'b0) ? text[33] : text[34]};
            
            // [第 7、6 位] 空白 (text[36])
            seg_com_data[6] <= {1'b0, text[36]};
            seg_com_data[5] <= {1'b0, text[36]};

            // [第 5 ~ 1 位] 顯示十進位數字 0~65535 (直接取 text[bcd])
            seg_com_data[4] <= {1'b0, text[bcd_ten_thousands]}; // 萬位
            seg_com_data[3] <= {1'b0, text[bcd_thousands]};     // 千位
            seg_com_data[2] <= {1'b0, text[bcd_hundreds]};      // 百位
            seg_com_data[1] <= {1'b0, text[bcd_tens]};          // 十位
            seg_com_data[0] <= {1'b0, text[bcd_units]};         // 個位
        end
    end

    // -------------------------------------------------------------------------
    // 掃描時序與動態多工顯示
    // -------------------------------------------------------------------------
    reg [25:0] counter = 0;
    always @(posedge ck) begin
        counter <= counter + 1'b1;
    end

    reg [2:0] seg_com_num = 0;
    always @(posedge counter[10]) begin
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

endmodule