module tx_buffer_controller #(
    parameter MAX_BYTES = 64
)(
    input  wire                   clk,
    input  wire                   rst_n,
    
    // 外部模組介面
    input  wire                   send_req,      // 觸發請求 (conn_pulse 1-cycle)
    input  wire [3:0]             target_id,     // TCP Client ID (0~9)
    input  wire [7:0]             payload_len,   // 資料長度
    input  wire [8*MAX_BYTES-1:0] payload_data,  // 欲傳送的資料內容
    
    // 狀態指示
    output reg                    tx_reg_busy,   // 1: 忙碌中
    
    // 連接至 uart_tx_string
    output reg                    uart_tx_start, // 通知 uart_tx_string 發送
    output reg  [8*MAX_BYTES-1:0] uart_tx_cmd,   // 送給 uart_tx_string 的字串
    input  wire                   cmd_done       // UART 傳送完成脈衝
);

    localparam S_IDLE         = 3'd0,
               S_SEND_CIPSEND = 3'd1,
               S_WAIT_CIPSEND = 3'd2,
               S_DELAY_PROMPT = 3'd3, // 新增：等待 Wi-Fi 準備好 (提示字元 >)
               S_SEND_PAYLOAD = 3'd4,
               S_WAIT_PAYLOAD = 3'd5;

    reg [2:0]               state;
    reg [8*MAX_BYTES-1:0]   latch_payload;
    reg [3:0]               latch_id;
    reg [7:0]               latch_len;
    reg [19:0]              delay_cnt;   // 延遲計數器

    // ASCII 轉換邏輯
    wire [7:0] ascii_id       = "0" + latch_id;
    wire [7:0] ascii_len_tens = "0" + (latch_len / 10);
    wire [7:0] ascii_len_ones = "0" + (latch_len % 10);

    wire [8*16-1:0] cipsend_cmd = (latch_len >= 10) ? 
        {"AT+CIPSEND=", ascii_id, ",", ascii_len_tens, ascii_len_ones, "\r\n"} :
        {"AT+CIPSEND=", ascii_id, ",", ascii_len_ones, "\r\n"};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= S_IDLE;
            tx_reg_busy   <= 1'b0;
            uart_tx_start <= 1'b0;
            uart_tx_cmd   <= {8*MAX_BYTES{1'b0}};
            latch_payload <= {8*MAX_BYTES{1'b0}};
            latch_id      <= 4'd0;
            latch_len     <= 8'd0;
            delay_cnt     <= 20'd0;
        end else begin
            uart_tx_start <= 1'b0; // 預設脈衝清零

            case (state)
                S_IDLE: begin
                    tx_reg_busy <= 1'b0;
                    if (send_req) begin
                        tx_reg_busy   <= 1'b1;
                        latch_id      <= target_id;
                        latch_len     <= payload_len;
                        latch_payload <= payload_data;
                        state         <= S_SEND_CIPSEND;
                    end
                end

                S_SEND_CIPSEND: begin
                    uart_tx_cmd   <= cipsend_cmd;
                    uart_tx_start <= 1'b1;
                    state         <= S_WAIT_CIPSEND;
                end

                S_WAIT_CIPSEND: begin
                    if (cmd_done) begin
                        delay_cnt <= 20'd0;
                        state     <= S_DELAY_PROMPT;
                    end
                end

                S_DELAY_PROMPT: begin
                    // 等待約 20ms (50MHz 下約 1,000,000 個 cycles)
                    // 給 ESP 模組吐出 '>' 的時間
                    if (delay_cnt < 20'd1_000_000) begin
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
                        tx_reg_busy <= 1'b0;
                        state       <= S_IDLE;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule