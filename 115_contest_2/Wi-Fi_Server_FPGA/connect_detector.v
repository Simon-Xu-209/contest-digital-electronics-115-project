module connect_detector #(
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       rx,                // UART RX 輸入
    input  wire       init_done,         // AT 初始化完成旗標
    output reg  [3:0] client_id,         // 連線的 Client ID (0~4)
    output reg        client_connected,  // 連線成功脈衝 (高電位 1 cycle)
    output reg        client_closed      // 斷線脈衝 (高電位 1 cycle)
);

// =========================================================
// 1. UART RX Byte 接收引擎
// =========================================================
localparam SAMPLE_TICKS = CLK_FREQ / BAUD_RATE;

reg [15:0] cnt;
reg [3:0]  bit_cnt;
reg [7:0]  rdata;
reg [1:0]  rx_state;
reg        rx_done;
reg [7:0]  rx_byte;

localparam S_IDLE  = 2'd0,
           S_START = 2'd1,
           S_DATA  = 2'd2,
           S_STOP  = 3'd3;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        cnt      <= 0;
        bit_cnt  <= 0;
        rdata    <= 0;
        rx_done  <= 0;
        rx_state <= S_IDLE;
        rx_byte  <= 0;
    end else begin
        rx_done <= 0;
        case (rx_state)
            S_IDLE: begin
                if (!rx) begin
                    rx_state <= S_START;
                    cnt      <= SAMPLE_TICKS / 2;
                end
            end
            S_START: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt      <= 0;
                    bit_cnt  <= 0;
                    rx_state <= S_DATA;
                end else cnt <= cnt + 1'b1;
            end
            S_DATA: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt            <= 0;
                    rdata[bit_cnt] <= rx;
                    bit_cnt        <= bit_cnt + 1'b1;
                    if (bit_cnt == 7)
                        rx_state <= S_STOP;
                end else cnt <= cnt + 1'b1;
            end
            S_STOP: begin
                if (cnt == SAMPLE_TICKS - 1) begin
                    cnt      <= 0;
                    rx_byte  <= rdata;
                    rx_done  <= 1'b1;
                    rx_state <= S_IDLE;
                end else cnt <= cnt + 1'b1;
            end
            default: rx_state <= S_IDLE;
        endcase
    end
end

// =========================================================
// 2. 狀態機：比對 "<ID>,CONNECT" 與 "<ID>,CLOSED"
// =========================================================
reg [3:0] parse_state;
reg [3:0] temp_id;

localparam ST_IDLE    = 4'd0,
           ST_ID      = 4'd1,
           ST_COMMA   = 4'd2,
           ST_C       = 4'd3,
           ST_O       = 4'd4,
           ST_N1      = 4'd5,
           ST_N2      = 4'd6,
           ST_E       = 4'd7,
           ST_C2      = 4'd8,
           ST_T       = 4'd9,
           ST_L       = 4'd10,
           ST_S       = 4'd11,
           ST_ED      = 4'd12;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        parse_state      <= ST_IDLE;
        temp_id          <= 4'd0;
        client_id        <= 4'd0;
        client_connected <= 1'b0;
        client_closed    <= 1'b0;
    end else begin
        client_connected <= 1'b0;
        client_closed    <= 1'b0;

        if (init_done && rx_done) begin
            case (parse_state)
                ST_IDLE: begin
                    if (rx_byte >= "0" && rx_byte <= "9") begin
                        temp_id     <= rx_byte - "0";
                        parse_state <= ST_COMMA;
                    end
                end

                ST_COMMA: begin
                    if (rx_byte == ",")
                        parse_state <= ST_C;
                    else
                        parse_state <= ST_IDLE;
                end

                ST_C: begin
                    if (rx_byte == "C") parse_state <= ST_O;
                    else parse_state <= ST_IDLE;
                end

                ST_O: begin
                    if (rx_byte == "O") parse_state <= ST_N1;
                    else if (rx_byte == "L") parse_state <= ST_L; // 比對 CLOSED 中的 L
                    else parse_state <= ST_IDLE;
                end

                // --- 比對 CONNECT ---
                ST_N1: begin if (rx_byte == "N") parse_state <= ST_N2; else parse_state <= ST_IDLE; end
                ST_N2: begin if (rx_byte == "N") parse_state <= ST_E;  else parse_state <= ST_IDLE; end
                ST_E:  begin if (rx_byte == "E") parse_state <= ST_C2; else parse_state <= ST_IDLE; end
                ST_C2: begin if (rx_byte == "C") parse_state <= ST_T;  else parse_state <= ST_IDLE; end
                ST_T:  begin
                    if (rx_byte == "T") begin
                        client_id        <= temp_id;
                        client_connected <= 1'b1; // 成功偵測到連線
                    end
                    parse_state <= ST_IDLE;
                end

                // --- 比對 CLOSED ---
                ST_L:  begin if (rx_byte == "O") parse_state <= ST_S;  else parse_state <= ST_IDLE; end
                ST_S:  begin if (rx_byte == "S") parse_state <= ST_ED; else parse_state <= ST_IDLE; end
                ST_ED: begin
                    if (rx_byte == "E") begin
                        client_id     <= temp_id;
                        client_closed <= 1'b1; // 成功偵測到斷線
                    end
                    parse_state <= ST_IDLE;
                end

                default: parse_state <= ST_IDLE;
            endcase
        end
    end
end

endmodule