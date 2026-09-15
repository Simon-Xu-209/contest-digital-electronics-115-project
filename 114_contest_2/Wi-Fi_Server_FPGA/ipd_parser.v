module ipd_parser #(
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        rx,           // ESP8266 TX
    input  wire        init_done,
    output reg  [3:0]  link_ID,
    output reg  [7:0]  rx_Data_len,
    output reg  [31:0] orderID,    // 解析出的 4 Byte 訂單 ID (ASCII)
    output reg         id_valid,     // 抓到完整 ID 時拉高 1 週期
    output reg  [15:0] WiFi_signal
);

    // =========================================================
    // 1. 參考學長專案的 UART RX 核心採樣引擎
    // =========================================================
    localparam SAMPLE_TICKS = CLK_FREQ / BAUD_RATE;

    reg [15:0] cnt;
    reg [3:0]  bit_cnt;
    reg [7:0]  rdata;
    reg [1:0]  rx_state;
    reg        rx_done;
    reg [7:0]  rx_byte;

    localparam IDLE  = 2'd0,
               START = 2'd1,
               DATA  = 2'd2,
               STOP  = 2'd3;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt      <= 0;
            bit_cnt  <= 0;
            rdata    <= 0;
            rx_done  <= 0;
            rx_state <= IDLE;
            rx_byte  <= 0;
        end else begin
            rx_done <= 0;
            case (rx_state)
                IDLE: begin
                    if (!rx) begin // Start bit 觸發
                        rx_state <= START;
                        cnt      <= SAMPLE_TICKS / 2; // 取樣 Start bit 中點
                    end
                end
                START: begin
                    if (cnt == SAMPLE_TICKS - 1) begin
                        cnt     <= 0;
                        bit_cnt <= 0;
                        rx_state <= DATA;
                    end else cnt <= cnt + 1'b1;
                end
                DATA: begin
                    if (cnt == SAMPLE_TICKS - 1) begin
                        cnt            <= 0;
                        rdata[bit_cnt] <= rx;
                        bit_cnt        <= bit_cnt + 1'b1;
                        if (bit_cnt == 7)
                            rx_state <= STOP;
                    end else cnt <= cnt + 1'b1;
                end
                STOP: begin
                    if (cnt == SAMPLE_TICKS - 1) begin
                        cnt      <= 0;
                        rx_byte  <= rdata;
                        rx_done  <= 1'b1; // 1 週期數據就緒脈衝
                        rx_state <= IDLE;
                    end else cnt <= cnt + 1'b1;
                end
            endcase
        end
    end

    // =========================================================
    // 2. 上層：逐 Byte 掃描 "ID:" 狀態機
    // =========================================================
    localparam S_SEARCH_I = 2'd0,
               S_SEARCH_D = 2'd1,
               S_SEARCH_C = 2'd2,
               S_READ_NUM = 2'd3;

    reg [1:0]  parse_state;
    reg [1:0]  num_cnt;
    reg [31:0] temp_id;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            parse_state <= S_SEARCH_I;
            num_cnt     <= 2'd0;
            temp_id     <= 32'd0;
            orderID   <= 32'h30303030; // 預設 "0000"
            id_valid    <= 1'b0;
            WiFi_signal <= 16'hFFFF;
            link_ID     <= 4'd0;
            rx_Data_len    <= 8'd0;
        end else begin
            id_valid <= 1'b0; // 預設單脈衝

            if (rx_done) begin // 收到來自學長 UART 模組解出的 Byte
                case (parse_state)
                    S_SEARCH_I: begin
                        if (rx_byte == "I")
                            parse_state <= S_SEARCH_D;
                        else
                            parse_state <= S_SEARCH_I;
                    end

                    S_SEARCH_D: begin
                        if (rx_byte == "D")
                            parse_state <= S_SEARCH_C;
                        else if (rx_byte == "I")
                            parse_state <= S_SEARCH_D;
                        else
                            parse_state <= S_SEARCH_I;
                    end

                    S_SEARCH_C: begin
                        if (rx_byte == ":") begin
                            num_cnt     <= 2'd0;
                            parse_state <= S_READ_NUM;
                        end else if (rx_byte == "I") begin
                            parse_state <= S_SEARCH_D;
                        end else begin
                            parse_state <= S_SEARCH_I;
                        end
                    end

                    S_READ_NUM: begin
                        // 判斷是否為數字 '0'~'9' (0x30~0x39)
                        if (rx_byte >= 8'h30 && rx_byte <= 8'h39) begin
                            temp_id <= {temp_id[23:0], rx_byte};
                            if (num_cnt == 2'd3) begin
                                orderID   <= {temp_id[23:0], rx_byte};
                                id_valid    <= 1'b1;
                                // 轉為數值供七段顯示器顯示
                                WiFi_signal <= (temp_id[23:16] - 8'h30) * 1000 +
                                               (temp_id[15:8]  - 8'h30) * 100 +
                                               (temp_id[7:0]   - 8'h30) * 10 +
                                               (rx_byte        - 8'h30);
                                parse_state <= S_SEARCH_I;
                            end else begin
                                num_cnt <= num_cnt + 1'b1;
                            end
                        end else begin
                            // 遇到非數字字元代表格式不符合，重置搜尋
                            parse_state <= S_SEARCH_I;
                        end
                    end

                    default: parse_state <= S_SEARCH_I;
                endcase
            end
        end
    end

endmodule