module mode_LED #(
    parameter MAX_RX_LEN = 32
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   RECEIVE_END,
    input  wire                   Data_reg_busy,
    input  wire [8*MAX_RX_LEN-1:0]rx_Data_reg,
    input  wire                   SEND_END_cmd,
    output reg  [7:0]             LED,
    output reg  [15:0]            WiFi_signal
);

integer idx;

// 1. 拆解 64 個 Byte (bytes[0] 為 lowest byte, 即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
    for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
        assign bytes[g] = rx_Data_reg[8*g +: 8];
    end
endgenerate

// 2. 搜尋 "ID:" (注意：因字串靠右存入，較早收到的字元索引較大)
// 例如收到 "ID:0001"，則 bytes[6]="I", bytes[5]="D", bytes[4]=":", bytes[3]='0', ..., bytes[0]='1'
wire [MAX_RX_LEN-1:0] match_id;
generate
    for (g = 6; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_id[g] = (bytes[g]   == "I") && 
                             (bytes[g-1] == "D") && 
                             (bytes[g-2] == ":");
    end
endgenerate

generate
    for (g = 0; g < 6; g = g + 1) begin : MATCH_ZERO
        assign match_id[g] = 1'b0;
    end
endgenerate

// 3. 邏輯解析與 LED 控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        LED         <= 8'h00;
        WiFi_signal <= 16'hFFFF;
    end else begin
        if (SEND_END_cmd) begin
            LED[7] <= 1'b1;
            
            if (rx_Data_reg == 0) begin
                LED[0] <= 1'b1;
            end else begin
                LED[0] <= 1'b0;
            end

            if (|match_id) begin
                LED[6] <= 1'b1; // 抓到 ID: 標頭，LED[6] 亮起
                for (idx = 6; idx < MAX_RX_LEN; idx = idx + 1) begin
                    if (match_id[idx]) begin
                        if (bytes[idx-3] >= "0" && bytes[idx-3] <= "9" &&
                            bytes[idx-4] >= "0" && bytes[idx-4] <= "9" &&
                            bytes[idx-5] >= "0" && bytes[idx-5] <= "9" &&
                            bytes[idx-6] >= "0" && bytes[idx-6] <= "9") begin
                            
                            LED[5] <= 1'b1; // 4 位數字解析成功，LED[5] 亮起
                            WiFi_signal <= (bytes[idx-3] - "0") * 1000 +
                                           (bytes[idx-4] - "0") * 100 +
                                           (bytes[idx-5] - "0") * 10 +
                                           (bytes[idx-6] - "0");
                        end else begin
                            LED[4] <= 1'b1;
                        end
                    end
                end
            end
        end
    end
end

endmodule