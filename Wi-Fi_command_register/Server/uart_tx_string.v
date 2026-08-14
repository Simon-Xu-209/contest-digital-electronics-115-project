module uart_tx_string #(
    parameter MAX_BYTES = 64,
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   tx_start,
    input  wire [8*MAX_BYTES-1:0] tx_cmd,
    output reg                    tx,
    output reg                    tx_busy,
    output reg                    cmd_done
);

    localparam DIV_NUM = CLK_FREQ / BAUD_RATE;

    reg [15:0] baud_cnt;
    wire       baud_tick = (baud_cnt == DIV_NUM - 1);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) baud_cnt <= 0;
        else if (tx_busy) begin
            if (baud_tick) baud_cnt <= 0;
            else baud_cnt <= baud_cnt + 1'b1;
        end else baud_cnt <= 0;
    end

    localparam S_IDLE  = 0,
               S_START = 1,
               S_DATA  = 2,
               S_STOP  = 3;

    reg [1:0]  state;
    reg [2:0]  bit_idx;
    reg [7:0]  byte_cnt;
    reg [7:0]  shift_byte;
    reg [8*MAX_BYTES-1:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state      <= S_IDLE;
            tx         <= 1'b1;
            tx_busy    <= 1'b0;
            cmd_done   <= 1'b0;
            bit_idx    <= 0;
            byte_cnt   <= 0;
            shift_reg  <= 0;
            shift_byte <= 8'h00;
        end else begin
            cmd_done <= 1'b0;

            case (state)
                S_IDLE: begin
                    tx <= 1'b1;
                    if (tx_start) begin
                        shift_reg <= tx_cmd;
                        byte_cnt  <= 0;
                        tx_busy   <= 1'b1;
                        state     <= S_START;
                    end else begin
                        tx_busy   <= 1'b0;
                    end
                end

                S_START: begin
                    // 自動略過高位元的 Null (8'h00) 填充，直到抓到第一個有效字元！
                    if (shift_reg[8*MAX_BYTES-1 -: 8] == 8'h00 && byte_cnt < MAX_BYTES) begin
                        shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
                        byte_cnt  <= byte_cnt + 1'b1;
                    end else if (byte_cnt >= MAX_BYTES) begin
                        // 全都是 0，直接結束
                        tx_busy  <= 1'b0;
                        cmd_done <= 1'b1;
                        state    <= S_IDLE;
                    end else begin
                        // 抓到有效字元，準備開始發送 UART
                        shift_byte <= shift_reg[8*MAX_BYTES-1 -: 8];
                        tx         <= 1'b0; // Start bit
                        bit_idx    <= 0;
                        if (baud_tick) state <= S_DATA;
                    end
                end

                S_DATA: begin
                    tx <= shift_byte[bit_idx];
                    if (baud_tick) begin
                        if (bit_idx == 3'd7) begin
                            state <= S_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1'b1;
                        end
                    end
                end

                S_STOP: begin
                    tx <= 1'b1; // Stop bit
                    if (baud_tick) begin
                        shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
                        byte_cnt  <= byte_cnt + 1'b1;

                        // 檢查下一個 Byte 是否已經全空，是的話直接結束
                        if (shift_reg[8*(MAX_BYTES-1)-1 -: 8] == 8'h00 || byte_cnt + 1 >= MAX_BYTES) begin
                            tx_busy  <= 1'b0;
                            cmd_done <= 1'b1;
                            state    <= S_IDLE;
                        end else begin
                            state    <= S_START;
                        end
                    end
                end
            endcase
        end
    end
endmodule