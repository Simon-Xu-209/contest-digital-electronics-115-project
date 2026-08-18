module uart_rx #(
    parameter CLK_FREQ = 50000000,
    parameter BAUD_RATE = 9600
)(
    input clk,
    input rst_n,
    input rx,            // FT232 TX
    output reg [7:0] data,
    output reg done
);

localparam SAMPLE_TICKS = CLK_FREQ / BAUD_RATE;

reg [15:0] cnt;
reg [3:0] bit_cnt;
reg [7:0] rdata;
reg [1:0] state;

localparam IDLE  = 2'd0,
           START = 2'd1,
           DATA  = 2'd2,
           STOP  = 2'd3;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt <= 0;
        bit_cnt <= 0;
        rdata <= 0;
        done <= 0;
        state <= IDLE;
        data <= 0;
    end else begin
        done <= 0;
        case(state)
            IDLE: begin
                if (!rx) begin // start bit
                    state <= START;
                    cnt <= SAMPLE_TICKS / 2; // 取樣 start bit 中點
                end
            end
            START: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt <= 0;
                    bit_cnt <= 0;
                    state <= DATA;
                end else cnt <= cnt + 1;
            end
            DATA: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt <= 0;
                    rdata[bit_cnt] <= rx;
                    bit_cnt <= bit_cnt + 1;
                    if (bit_cnt == 7)
                        state <= STOP;
                end else cnt <= cnt + 1;
            end
            STOP: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt <= 0;
                    data <= rdata;
                    done <= 1;
                    state <= IDLE;
                end else cnt <= cnt + 1;
            end
        endcase
    end
end

endmodule
