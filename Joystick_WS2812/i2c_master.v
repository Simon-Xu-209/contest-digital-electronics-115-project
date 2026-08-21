module i2c_master (
    input  wire        clk,        // 50MHz 系統時脈
    input  wire        rst_n,      // 非同步低電位復位
    
    input  wire        start,      // 啟動脈衝
    input  wire        stop,       // 結束脈衝
    input  wire        write,      // 寫入脈衝
    input  wire        read,       // 讀取脈衝
    input  wire        ack_in,     // 主機讀取資料後發送之 ACK/NACK (0: ACK, 1: NACK)
    input  wire [7:0]  data_in,    // 欲寫入資料
    
    output reg  [7:0]  data_out,   // 讀回資料
    output reg         ack_out,    // 從機回應之 ACK (0: ACK, 1: NACK)
    output reg         busy,       // 忙碌訊號
    
    output reg         scl,
    inout  wire        sda
);

    localparam IDLE  = 3'd0,
               START = 3'd1,
               WRITE = 3'd2,
               RACK  = 3'd3,
               READ  = 3'd4,
               WACK  = 3'd5,
               STOP  = 3'd6;

    reg [2:0] state;
    reg [3:0] bit_cnt;
    reg [7:0] shift_reg;

    // 400kHz Tick 產生器 (50MHz / 125)
    reg [7:0] clk_cnt;
    reg       i2c_tick;
    reg [1:0] phase;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_cnt  <= 0;
            i2c_tick <= 0;
        end else if (clk_cnt == 8'd124) begin
            clk_cnt  <= 0;
            i2c_tick <= 1;
        end else begin
            clk_cnt  <= clk_cnt + 1;
            i2c_tick <= 0;
        end
    end

    // 三態閘控制
    reg sda_out;
    reg sda_oe;
    assign sda = sda_oe ? sda_out : 1'bz;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= IDLE;
            busy     <= 0;
            scl      <= 1;
            sda_out  <= 1;
            sda_oe   <= 1;
            bit_cnt  <= 0;
            ack_out  <= 0;
            phase    <= 0;
            data_out <= 0;
        end else if (i2c_tick) begin
            case (state)
                IDLE: begin
                    busy  <= 0;
                    phase <= 0;
                    if (start) begin 
                        state <= START; 
                        busy  <= 1; 
                    end else if (write) begin 
                        state     <= WRITE; 
                        shift_reg <= data_in; 
                        bit_cnt   <= 0; 
                        busy      <= 1; 
                    end else if (read) begin 
                        state   <= READ; 
                        bit_cnt <= 0; 
                        busy    <= 1; 
                    end else if (stop) begin 
                        state <= STOP; 
                        busy  <= 1; 
                    end
                end

                START: begin
                    phase <= phase + 1;
                    if (phase == 2'd0) begin sda_out <= 1; scl <= 1; sda_oe <= 1; end
                    if (phase == 2'd1) begin sda_out <= 0; end
                    if (phase == 2'd3) begin scl <= 0; state <= IDLE; end
                end

                WRITE: begin
                    phase <= phase + 1;
                    if (phase == 2'd0) begin scl <= 0; sda_out <= shift_reg[7 - bit_cnt]; sda_oe <= 1; end
                    if (phase == 2'd1) begin scl <= 1; end
                    if (phase == 2'd3) begin
                        scl <= 0;
                        if (bit_cnt == 4'd7) state <= RACK;
                        else bit_cnt <= bit_cnt + 1;
                    end
                end

                RACK: begin // 讀取從機 ACK
                    phase <= phase + 1;
                    if (phase == 2'd0) begin scl <= 0; sda_oe <= 0; end // 釋放 SDA
                    if (phase == 2'd1) begin scl <= 1; end
                    if (phase == 2'd2) begin ack_out <= sda; end       // 採樣 ACK
                    if (phase == 2'd3) begin 
                        scl     <= 0; 
                        sda_oe  <= 1; 
                        sda_out <= 1; 
                        state   <= IDLE; 
                    end
                end

                READ: begin
                    phase <= phase + 1;
                    if (phase == 2'd0) begin scl <= 0; sda_oe <= 0; end
                    if (phase == 2'd1) begin scl <= 1; end
                    if (phase == 2'd2) begin data_out[7 - bit_cnt] <= sda; end
                    if (phase == 2'd3) begin
                        scl <= 0;
                        if (bit_cnt == 4'd7) state <= WACK;
                        else bit_cnt <= bit_cnt + 1;
                    end
                end

                WACK: begin // 主機發送 ACK/NACK 給從機
                    phase <= phase + 1;
                    if (phase == 2'd0) begin 
                        scl     <= 0; 
                        sda_out <= ack_in; 
                        sda_oe  <= 1; 
                    end
                    if (phase == 2'd1) begin scl <= 1; end
                    if (phase == 2'd3) begin 
                        scl     <= 0; 
                        sda_out <= 1; 
                        state   <= IDLE; 
                    end
                end

                STOP: begin
                    phase <= phase + 1;
                    if (phase == 2'd0) begin scl <= 0; sda_out <= 0; sda_oe <= 1; end
                    if (phase == 2'd1) begin scl <= 1; end
                    if (phase == 2'd2) begin sda_out <= 1; end
                    if (phase == 2'd3) begin state <= IDLE; end
                end

                default: state <= IDLE;
            endcase
        end
    end
endmodule