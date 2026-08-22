module mode_LED #(
    parameter MAX_RX_LEN = 32
)(
    input  wire                    clk,
    input  wire                    rst_n,
    input  wire                    RECEIVE_END,
    input  wire                    Data_reg_busy,
    input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg,
    input  wire                    SEND_END_cmd,
    output reg  [7:0]              LED,
    output reg  [15:0]             WiFi_signal
);

// =========================================================
// 拆解 32 個 Byte (bytes[MAX_RX_LEN-1] 為最早收到的字元)
// =========================================================
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
    for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
        assign bytes[g] = rx_Data_reg[8*g +: 8];
    end
endgenerate

// =========================================================
// 全域平行比對 "Num:" 標頭
// =========================================================
wire [MAX_RX_LEN-1:0] match_num;

generate
    // 必須預留 4 個位元組讀取數值 (bytes[g-4])，故從 g = 4 開始比對
    for (g = 4; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_num[g] = (bytes[g]   == "N") && 
                              (bytes[g-1] == "u") && 
                              (bytes[g-2] == "m") && 
                              (bytes[g-3] == ":");
    end
    
    // 邊界保護：低於 4 的索引不可能組成 "Num:" 後接數值
    for (g = 0; g < 4; g = g + 1) begin : MATCH_ZERO
        assign match_num[g] = 1'b0;
    end
endgenerate

// =========================================================
// 動態提取數值字元 (ASCII -> Hex 數值)
// =========================================================
reg [7:0] val_char;
reg [15:0] detected_val;
integer idx;

always @(*) begin
    val_char     = 8'h00;
    detected_val = 16'hFFFF; // 預設無有效資料

    if (|match_num) begin
        // 從最舊的資料開始搜尋到最新的資料
        for (idx = 4; idx < MAX_RX_LEN; idx = idx + 1) begin
            if (match_num[idx]) begin
                val_char = bytes[idx-4]; // 提取冒號後面的 Byte
            end
        end

        // ASCII 轉 16 進制數值
        if (val_char >= "0" && val_char <= "9")
            detected_val = val_char - "0";
        else if (val_char >= "A" && val_char <= "F")
            detected_val = val_char - "A" + 10;
        else if (val_char >= "a" && val_char <= "f")
            detected_val = val_char - "a" + 10;
    end
end

// =========================================================
// 時序邏輯區塊：接收完成時更新 WiFi_signal 與 LED
// =========================================================
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        WiFi_signal <= 16'hFFFF;
        LED         <= 8'h00;
    end else if (RECEIVE_END) begin
        WiFi_signal <= detected_val;
        if (detected_val != 16'hFFFF) begin
            LED <= detected_val[7:0];
        end
    end
end

endmodule