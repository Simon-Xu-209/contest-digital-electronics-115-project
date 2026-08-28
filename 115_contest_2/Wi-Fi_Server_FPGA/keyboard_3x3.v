module keyboard_3x3(
    input wire clk,         // 50MHz
    input wire rst_n,
    input wire [2:0] column,
    output reg [2:0] row,
    output reg Pressed,     // 改為邏輯去顫後的穩定 Pressed
    output reg [3:0] KEY
);

// -------------------------------------------------------------
// 1. 矩陣掃描除頻器 (維持約 1ms 換下一列掃描)
// -------------------------------------------------------------
reg [15:0] scan_cnt;
wire scan_tick = (scan_cnt == 16'd50_000 - 1); // 50MHz / 50000 = 1kHz (1ms)

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        scan_cnt <= 16'd0;
    else if (scan_tick) 
        scan_cnt <= 16'd0;
    else 
        scan_cnt <= scan_cnt + 1'b1;
end

// -------------------------------------------------------------
// 2. 去顫與穩定度驗證 (連續採樣計數器)
// -------------------------------------------------------------
wire raw_pressed = ~(^column); // 原始組合邏輯判斷 (含雜訊)
reg [17:0] debounce_cnt;       // 濾波計數器 (約 5ms)

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        debounce_cnt <= 18'd0;
        Pressed      <= 1'b0;
    end else begin
        if (raw_pressed) begin
            // 當偵測到按下時，計數器開始累加
            if (debounce_cnt < 18'd500_000) begin // 50MHz * 10ms = 500,000 cycles
                debounce_cnt <= debounce_cnt + 1'b1;
            end else begin
                Pressed <= 1'b1; // 持續穩定 5ms 後才認定為真正按下！
            end
        end else begin
            // 訊號一旦消失或不穩定，立即歸零重算
            debounce_cnt <= 18'd0;
            Pressed      <= 1'b0;
        end
    end
end

// -------------------------------------------------------------
// 3. 掃描 Row 與鎖存 KEY 狀態機
// -------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        row <= 3'b011;
        KEY <= 4'b1111;
    end else if (scan_tick) begin
        // 若沒有穩定按下，就持續輪詢切換 Row
        if (!Pressed) begin
            row <= {row[0], row[2:1]};
        end else begin
            // 只有在穩定 Pressed 成立時，才讀取當前的 KEY 值
            case (row)
                3'b011: begin
                    if (column == 3'b011)      KEY <= 4'd0;
                    else if (column == 3'b101) KEY <= 4'd1;
                    else if (column == 3'b110) KEY <= 4'd2;
                end
                3'b101: begin
                    if (column == 3'b011)      KEY <= 4'd3;
                    else if (column == 3'b101) KEY <= 4'd4;
                    else if (column == 3'b110) KEY <= 4'd5;
                end
                3'b110: begin
                    if (column == 3'b011)      KEY <= 4'd6;
                    else if (column == 3'b101) KEY <= 4'd7;
                    else if (column == 3'b110) KEY <= 4'd8;
                end
                default: begin
                    row <= 3'b011;
                    KEY <= 4'b1111;
                end
            endcase
        end
    end
end

endmodule