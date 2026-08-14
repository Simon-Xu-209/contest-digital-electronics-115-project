module uart_rx_string #(
    parameter MAX_BYTES = 32,               // 接收 Buffer 最大位元組數
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   rx,
    output reg [8*MAX_BYTES-1:0]  rx_buf,    // 接收到的資料暫存器
    output reg                    rx_ready   // 資料接收完整旗標 (Pulse)
);

    localparam DIV_NUM = CLK_FREQ / BAUD_RATE;

    // 同步化去除亞穩態
    reg rx_sync0, rx_sync1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) {rx_sync1, rx_sync0} <= 2'b11;
        else        {rx_sync1, rx_sync0} <= {rx_sync0, rx};
    end

    wire fall_edge = (rx_sync1 == 1'b1 && rx_sync0 == 1'b0);

    // Baud sampler
    reg [15:0] baud_cnt;
    reg        rx_busy;
    wire       sample_tick = (baud_cnt == DIV_NUM/2);
    wire       baud_tick   = (baud_cnt == DIV_NUM - 1);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) baud_cnt <= 0;
        else if (rx_busy) begin
            if (baud_tick) baud_cnt <= 0;
            else baud_cnt <= baud_cnt + 1'b1;
        end else baud_cnt <= 0;
    end

    // FSM
    localparam S_IDLE = 0, S_DATA = 1, S_STOP = 2;
    reg [1:0] state;
    reg [2:0] bit_idx;
    reg [7:0] rx_byte;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= S_IDLE;
            rx_busy  <= 1'b0;
            rx_ready <= 1'b0;
            rx_buf   <= 0;
            bit_idx  <= 0;
        end else begin
            rx_ready <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (fall_edge) begin
                        rx_busy <= 1'b1;
                        state   <= S_DATA;
                        bit_idx <= 0;
                    end
                end

                S_DATA: begin
                    if (sample_tick)
                        rx_byte[bit_idx] <= rx_sync1;

                    if (baud_tick) begin
                        if (bit_idx == 3'd7) state <= S_STOP;
                        else bit_idx <= bit_idx + 1'b1;
                    end
                end

                S_STOP: begin
                    if (baud_tick) begin
                        rx_busy <= 1'b0;
                        state   <= S_IDLE;

                        // 將新收到的 Byte 左移推進 Buffer (低位元維持最新字元)
                        rx_buf <= {rx_buf[8*(MAX_BYTES-1)-1:0], rx_byte};

                        // 當收到 '\n' (8'h0A) 代表一整列/一筆回覆接收完畢
                        if (rx_byte == 8'h0A) begin
                            rx_ready <= 1'b1;
                        end
                    end
                end
            endcase
        end
    end
endmodule