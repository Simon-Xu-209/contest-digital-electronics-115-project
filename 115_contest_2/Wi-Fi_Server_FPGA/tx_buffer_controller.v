module tx_buffer_controller #(
    parameter MAX_BYTES = 64
)(
    input  wire                   clk,
    input  wire                   rst_n,
    
    // 外部模組介面
    input  wire                   send_req,      // 來自 Order_processor 的 proc_done
    input  wire [3:0]             target_id,     // TCP Client ID
    
    // ⭐ 直接接收三個發送暫存器
    input  wire [31:0]            sendID,        // 4 Bytes
    input  wire [63:0]            sendQA,        // 8 Bytes
    input  wire [63:0]            sendQT,        // 8 Bytes
    
    // 狀態指示
    output reg                    tx_reg_busy,
    
    // 連接至 uart_tx_string
    output reg                    uart_tx_start,
    output reg  [8*MAX_BYTES-1:0] uart_tx_cmd,
    input  wire                   cmd_done
);

    localparam S_IDLE         = 3'd0,
               S_SEND_CIPSEND = 3'd1,
               S_WAIT_CIPSEND = 3'd2,
               S_DELAY_PROMPT = 3'd3,
               S_SEND_PAYLOAD = 3'd4,
               S_WAIT_PAYLOAD = 3'd5,
               S_DELAY_NEXT   = 3'd6;

    reg [2:0]               state;
    reg [8*MAX_BYTES-1:0]   latch_payload;
    reg [3:0]               latch_id;
    reg [7:0]               latch_len;
    reg [23:0]              delay_cnt;
    reg [1:0]               seq_step;      // 傳送階段計數器 (0: sendID, 1: sendQA, 2: sendQT)

    // ASCII 轉換邏輯
    wire [7:0] ascii_id       = "0" + latch_id;
    wire [7:0] ascii_len_tens = "0" + (latch_len / 10);
    wire [7:0] ascii_len_ones = "0" + (latch_len % 10);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= S_IDLE;
            tx_reg_busy   <= 1'b0;
            uart_tx_start <= 1'b0;
            uart_tx_cmd   <= {8*MAX_BYTES{1'b0}};
            latch_payload <= {8*MAX_BYTES{1'b0}};
            latch_id      <= 4'd0;
            latch_len     <= 8'd0;
            delay_cnt     <= 24'd0;
            seq_step      <= 2'd0;
        end else begin
            uart_tx_start <= 1'b0;

            case (state)
                S_IDLE: begin
                    tx_reg_busy <= 1'b0;
                    if (send_req) begin
                        tx_reg_busy   <= 1'b1;
                        latch_id      <= target_id;
                        seq_step      <= 2'd0; // 階段 0: 發送 sendID
                        
                        latch_len     <= 8'd9; // "ID:"(3) + 4 Bytes + "\r\n"(2) = 9
                        latch_payload <= {"ID:", sendID, "\r\n"};
                        state         <= S_SEND_CIPSEND;
                    end
                end

                S_SEND_CIPSEND: begin
                    if (latch_len >= 10) begin
                        uart_tx_cmd <= {"AT+CIPSEND=", ascii_id, ",", ascii_len_tens, ascii_len_ones, "\r\n"};
                    end else begin
                        uart_tx_cmd <= {"AT+CIPSEND=", ascii_id, ",", ascii_len_ones, "\r\n"};
                    end
                    
                    uart_tx_start <= 1'b1;
                    state         <= S_WAIT_CIPSEND;
                end

                S_WAIT_CIPSEND: begin
                    if (cmd_done) begin
                        delay_cnt <= 24'd0;
                        state     <= S_DELAY_PROMPT;
                    end
                end

                S_DELAY_PROMPT: begin
                    if (delay_cnt < 24'd2_500_000) begin // 等待 '>' 提示
                        delay_cnt <= delay_cnt + 1'b1;
                    end else begin
                        state <= S_SEND_PAYLOAD;
                    end
                end

                S_SEND_PAYLOAD: begin
                    uart_tx_cmd   <= latch_payload;
                    uart_tx_start <= 1'b1;
                    state         <= S_WAIT_PAYLOAD;
                end

                S_WAIT_PAYLOAD: begin
                    if (cmd_done) begin
                        if (seq_step == 2'd0) begin
                            // 第一階段 (sendID) 結束，準備切換至 sendQA
                            delay_cnt <= 24'd0;
                            state     <= S_DELAY_NEXT;
                        end else begin
                            // 傳送完成
                            tx_reg_busy <= 1'b0;
                            state       <= S_IDLE;
                        end
                    end
                end

                S_DELAY_NEXT: begin
                    if (delay_cnt < 24'd5_000_000) begin // 100ms 間隔
                        delay_cnt <= delay_cnt + 1'b1;
                    end else begin
                        // 階段 1: 發送 sendQA
                        seq_step      <= 2'd1;
                        latch_len     <= 8'd13; // "QA:"(3) + 8 Bytes + "\r\n"(2) = 13
                        latch_payload <= {"QA:", sendQA, "\r\n"};
                        state         <= S_SEND_CIPSEND;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule