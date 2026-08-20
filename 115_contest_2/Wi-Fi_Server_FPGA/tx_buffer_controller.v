module tx_buffer_controller #(
    parameter MAX_BYTES = 64
)(
    input  wire                   clk,
    input  wire                   rst_n,
    
    // 外部模組外包介面
    input  wire                   send_req,      // 觸發請求 (1 Cycle Pulse)
    input  wire [3:0]             target_id,     // TCP Client ID (0~4)
    input  wire [7:0]             payload_len,   // 資料長度 (Byte數)
    input  wire [8*MAX_BYTES-1:0] payload_data,  // 實際欲傳送的資料內容
    
    // 狀態指示
    output reg                    tx_reg_busy,   // 1: 忙碌中，不可寫入
    
    // 連接至 uart_tx_string
    output reg                    uart_tx_start, // 通知 uart_tx_string 發送
    output reg  [8*MAX_BYTES-1:0] uart_tx_cmd,   // 送給 uart_tx_string 的字串
    input  wire                   cmd_done       // UART 傳送完成脈衝
);

    localparam S_IDLE         = 2'd0,
               S_SEND_CIPSEND = 2'd1,
               S_WAIT_CIPSEND = 2'd2,
               S_SEND_PAYLOAD = 2'd3;

    reg [1:0]               state;
    reg [8*MAX_BYTES-1:0]   latch_payload;
    reg [3:0]               latch_id;
    reg [7:0]               latch_len;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= S_IDLE;
            tx_reg_busy   <= 1'b0;
            uart_tx_start <= 1'b0;
            uart_tx_cmd   <= {8*MAX_BYTES{1'b0}};
        end else begin
            uart_tx_start <= 1'b0; // 預設單週期脈衝

            case (state)
                S_IDLE: begin
                    tx_reg_busy <= 1'b0;
                    if (send_req) begin
                        tx_reg_busy   <= 1'b1;
                        latch_id      <= target_id;
                        latch_len     <= payload_len;
                        latch_payload <= payload_data;
                        
                        // 1. 自動組合 "AT+CIPSEND=<id>,<len>\r\n" 指令
                        // (此處可根據 latch_id 與 latch_len 做簡單的 ASCII 轉化或 MUX 組合)
                        uart_tx_cmd   <= {"AT+CIPSEND=", (48 + target_id), ",", payload_len}; // 示意
                        uart_tx_start <= 1'b1; // 驅動 uart_tx_string
                        state         <= S_WAIT_CIPSEND;
                    end
                end

                S_WAIT_CIPSEND: begin
                    // 2. 等待 CIPSEND 指令發送完成
                    if (cmd_done) begin
                        uart_tx_cmd   <= latch_payload; // 切換成實際資料內容
                        uart_tx_start <= 1'b1;          // 再次驅動 uart_tx_string
                        state         <= S_SEND_PAYLOAD;
                    end
                end

                S_SEND_PAYLOAD: begin
                    // 3. 等待 Payload 發送完成
                    if (cmd_done) begin
                        tx_reg_busy <= 1'b0; // 完成所有流程，釋放匯流排
                        state       <= S_IDLE;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule