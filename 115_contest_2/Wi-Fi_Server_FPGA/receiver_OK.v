module receiver_OK(
    input clk,
    input rst_n,
    input RECEIVE_END,        // 接收到一個 Byte 的脈衝
    input receive_ok_en,
    input [7:0] rxd,
    output reg receiver_OK,   // 收到 "OK\r\n" 訊號
    output reg receiver_PROMPT// 收到 ">" 訊號
);

reg [1:0] state;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        receiver_OK     <= 1'b0;
        receiver_PROMPT <= 1'b0;
        state           <= 2'd0;
    end
    else if (!receive_ok_en) begin
        receiver_OK     <= 1'b0;
        receiver_PROMPT <= 1'b0;
        state           <= 2'd0;
    end
    else if (RECEIVE_END) begin
        // --- 1. ">" 提示符偵測 (單一字元，收到直接拉高) ---
        if (rxd == 8'h3E) begin // ASCII 8'h3E 即為 ">"
            receiver_PROMPT <= 1'b1;
        end else begin
            receiver_PROMPT <= 1'b0;
        end

        // --- 2. "OK\r\n" 狀態機 ---
        case (state)
            2'd0: begin
                receiver_OK <= 1'b0;
                if (rxd == 8'h4F)      // 'O'
                    state <= 2'd1;
                else
                    state <= 2'd0;
            end
            2'd1: begin
                if (rxd == 8'h4B)      // 'K'
                    state <= 2'd2;
                else
                    state <= 2'd0;
            end
            2'd2: begin
                if (rxd == 8'h0D)      // '\r'
                    state <= 2'd3;
                else
                    state <= 2'd0;
            end
            2'd3: begin
                state <= 2'd0;
                if (rxd == 8'h0A) begin// '\n'
                    receiver_OK <= 1'b1;
                end
            end
            default: state <= 2'd0;
        endcase
    end
    else begin
        // RECEIVE_END 為低電平時，把單脈衝訊號拉低
        receiver_OK     <= 1'b0;
        receiver_PROMPT <= 1'b0; // 保持或設為 1'b0 (建議設為 1'b0 作為 Pulse)
    end
end

endmodule