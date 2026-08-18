module ipd_parser #(
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        rx,           // 直連實體 UART RX 腳位
    input  wire        init_done,    // 初始化完成旗標
    output reg  [3:0]  link_id,      // 抓到的連線 ID (0~4)
    output reg  [7:0]  data_len,     // 抓到的 Payload 長度
    output reg  [7:0]  cmd_data,     // 抓到的控制資料字元
    output reg         data_valid,   // 成功解析出有效按鍵資料時拉高 1 個 clock
    output reg  [15:0] WiFi_signal   // 更新給七段顯示器的訊號數值
);

    // =========================================================
    // Part 1: UART RX 字元接收器 (內建 Baud Rate 採樣)
    // =========================================================
    localparam DIV_NUM = CLK_FREQ / BAUD_RATE;

    reg rx_sync0, rx_sync1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) {rx_sync1, rx_sync0} <= 2'b11;
        else        {rx_sync1, rx_sync0} <= {rx_sync0, rx};
    end

    wire fall_edge = (rx_sync1 == 1'b1 && rx_sync0 == 1'b0);

    reg [15:0] baud_cnt;
    reg        rx_busy;
    wire       sample_tick = (baud_cnt == DIV_NUM / 2);
    wire       baud_tick   = (baud_cnt == DIV_NUM - 1);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) baud_cnt <= 0;
        else if (rx_busy) begin
            if (baud_tick) baud_cnt <= 0;
            else baud_cnt <= baud_cnt + 1'b1;
        end else baud_cnt <= 0;
    end

    localparam RX_IDLE = 2'd0, RX_DATA = 2'd1, RX_STOP = 2'd2;
    reg [1:0] rx_state;
    reg [2:0] bit_idx;
    reg [7:0] rxd;
    reg       RECEIVE_END;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_state    <= RX_IDLE;
            rx_busy     <= 1'b0;
            RECEIVE_END <= 1'b0;
            bit_idx     <= 3'd0;
            rxd         <= 8'd0;
        end else begin
            RECEIVE_END <= 1'b0;

            case (rx_state)
                RX_IDLE: begin
                    if (fall_edge) begin
                        rx_busy  <= 1'b1;
                        rx_state <= RX_DATA;
                        bit_idx  <= 3'd0;
                    end
                end
                RX_DATA: begin
                    if (sample_tick) rxd[bit_idx] <= rx_sync1;
                    if (baud_tick) begin
                        if (bit_idx == 3'd7) rx_state <= RX_STOP;
                        else bit_idx <= bit_idx + 1'b1;
                    end
                end
                RX_STOP: begin
                    if (baud_tick) begin
                        rx_busy     <= 1'b0;
                        RECEIVE_END <= 1'b1; // 完成 1 Byte 接收
                        rx_state    <= RX_IDLE;
                    end
                end
                default: rx_state <= RX_IDLE;
            endcase
        end
    end

    // =========================================================
    // Part 2: Robust +IPD 語法狀態機解析器
    // =========================================================
    localparam S_IDLE       = 4'd0,
               S_CHECK_I    = 4'd1,
               S_CHECK_P    = 4'd2,
               S_CHECK_D    = 4'd3,
               S_WAIT_COMMA = 4'd4,
               S_PARSE_ID   = 4'd5,
               S_PARSE_LEN  = 4'd6,
               S_GET_DATA   = 4'd7,
					S_WAIT_NL    = 4'd8;

    reg [3:0] state;
    reg [3:0] id_reg;
    reg [7:0] len_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= S_IDLE;
            link_id     <= 4'd0;
            data_len    <= 8'd0;
            cmd_data    <= 8'd0;
            data_valid  <= 1'b0;
            WiFi_signal <= 16'hFFFF; // 預設值
            id_reg      <= 4'd0;
            len_reg     <= 8'd0;
        end else begin
            data_valid <= 1'b0;

            if (RECEIVE_END) begin // 取消限制 init_done，隨時允許接收數據
                case (state)
                    // 1. 比對 '+' (0x2B)
                    S_IDLE: begin
                        if (rxd == 8'h2B) state <= S_CHECK_I;
                    end

                    // 2. 比對 'I' (0x49)
                    S_CHECK_I: begin
                        if (rxd == 8'h49) state <= S_CHECK_P;
                        else state <= S_IDLE;
                    end

                    // 3. 比對 'P' (0x50)
                    S_CHECK_P: begin
                        if (rxd == 8'h50) state <= S_CHECK_D;
                        else state <= S_IDLE;
                    end

                    // 4. 比對 'D' (0x44)
                    S_CHECK_D: begin
                        if (rxd == 8'h44) state <= S_WAIT_COMMA;
                        else state <= S_IDLE;
                    end

                    // 5. 等待第一個逗號 ',' (0x2C)
                    S_WAIT_COMMA: begin
                        if (rxd == 8'h2C) state <= S_PARSE_ID;
                    end

                    // 6. 解析 Link ID (例如 '0'~'4') 並且等下一個逗號 ',' (0x2C)
                    S_PARSE_ID: begin
                        if (rxd >= 8'h30 && rxd <= 8'h39) begin
                            id_reg <= rxd - 8'h30;
                        end else if (rxd == 8'h2C) begin
                            len_reg <= 8'd0;
                            state   <= S_PARSE_LEN;
                        end else begin
                            state <= S_IDLE;
                        end
                    end

                    // 7. 解析數據長度，直到冒號 ':' (0x3A)
                    S_PARSE_LEN: begin
                        if (rxd >= 8'h30 && rxd <= 8'h39) begin
                            len_reg <= (len_reg * 10) + (rxd - 8'h30);
                        end else if (rxd == 8'h3A) begin // 遇到 ':' 準備抓 Payload
                            link_id  <= id_reg;
                            data_len <= len_reg;
                            state    <= S_GET_DATA;
                        end else begin
                            state <= S_IDLE;
                        end
                    end

                    // 8. 擷取冒號後的第一個字元並更新 WiFi_signal，隨後立即重置狀態機
                    S_GET_DATA: begin
                        cmd_data   <= rxd;
                        data_valid <= 1'b1;
                        state      <= S_WAIT_NL; // 解鎖，準備接下一個封包

                        case (rxd)
                            8'h30: WiFi_signal <= 16'd0;  // '0'
                            8'h31: WiFi_signal <= 16'd1;  // '1'
                            8'h32: WiFi_signal <= 16'd2;  // '2'
                            8'h33: WiFi_signal <= 16'd3;  // '3'
                            8'h34: WiFi_signal <= 16'd4;  // '4'
                            8'h35: WiFi_signal <= 16'd5;  // '5'
                            8'h36: WiFi_signal <= 16'd6;  // '6'
                            8'h37: WiFi_signal <= 16'd7;  // '7'
                            8'h38: WiFi_signal <= 16'd8;  // '8'
                            8'h39: WiFi_signal <= 16'd9;  // '9'
                            8'h41, 8'h61: WiFi_signal <= 16'd10; // 'A'/'a'
                            8'h42, 8'h62: WiFi_signal <= 16'd11; // 'B'/'b'
                            default: ; // 若為未定義字元，保持原 signal
                        endcase
                    end
						  S_WAIT_NL: begin
								if (rxd == 8'h0A) state <= S_IDLE;
							end

						default: state <= S_IDLE;
                endcase
            end
        end
    end

endmodule