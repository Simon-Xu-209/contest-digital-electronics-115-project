// ============================================================================
// Module Name: i2c_master (修正版)
// Description: 支持標準 I2C 寫暫存器與讀暫存器流程
// ============================================================================
module i2c_master (
    input  wire       clk,        // 50MHz 系統時脈
    input  wire       rst_n,      // 低電位重置
    input  wire       start,      // 啟動脈衝
    input  wire [7:0] slave_addr, // 7-bit 設備位址
    input  wire       rw,         // 0: Write, 1: Read
    input  wire [7:0] reg_addr,   // 暫存器位址
    input  wire [7:0] wr_data,    // 寫入資料
    output reg  [7:0] rd_data,    // 讀取資料
    output reg        busy,       // 忙碌訊號
    output reg        done,       // 完成脈衝
    
    output reg        scl,        // I2C SCL
    inout  wire       sda         // I2C SDA
);

    // 分頻產生 100kHz SCL (50MHz / 500 = 100kHz)
    reg [8:0] clk_cnt;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) clk_cnt <= 0;
        else if (clk_cnt == 499) clk_cnt <= 0;
        else clk_cnt <= clk_cnt + 1'b1;
    end

    // 產生四個採樣與切換相位 (每一週期 10us)
    wire p0 = (clk_cnt == 0);   // SCL 低電位中點 (改變 SDA)
    wire p1 = (clk_cnt == 125); // SCL 拉高邊緣
    wire p2 = (clk_cnt == 250); // SCL 高電位中點 (讀取 SDA)
    wire p3 = (clk_cnt == 375); // SCL 拉低邊緣

    reg sda_out;
    reg sda_oe;
    assign sda = sda_oe ? sda_out : 1'bz;

    localparam IDLE=0, START1=1, ADDR1=2, ACK1=3, REG=4, ACK2=5, 
               START2=6, ADDR2=7, ACK3=8, READ=9, ACK4=10, WRITE=11, ACK5=12, STOP=13;

    reg [3:0] state;
    reg [2:0] bit_cnt;
    reg [7:0] shift_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            scl <= 1'b1;
            sda_out <= 1'b1;
            sda_oe <= 1'b1;
            busy <= 1'b0;
            done <= 1'b0;
            bit_cnt <= 3'd7;
            rd_data <= 8'd0;
        end else begin
            done <= 1'b0;

            case (state)
                IDLE: begin
                    scl <= 1'b1;
                    sda_out <= 1'b1;
                    sda_oe <= 1'b1;
                    if (start) begin
                        busy <= 1'b1;
                        state <= START1;
                    end else busy <= 1'b0;
                end

                START1: begin
                    if (p0) begin sda_out <= 1'b1; scl <= 1'b1; end
                    if (p2) sda_out <= 1'b0; // START
                    if (p3) begin
                        scl <= 1'b0;
                        shift_reg <= {slave_addr, 1'b0}; // 首階段皆為寫入暫存器位址
                        bit_cnt <= 3'd7;
                        state <= ADDR1;
                    end
                end

                ADDR1: begin
                    if (p0) sda_out <= shift_reg[bit_cnt];
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        if (bit_cnt == 0) state <= ACK1;
                        else bit_cnt <= bit_cnt - 1'b1;
                    end
                end

                ACK1: begin
                    if (p0) sda_oe <= 1'b0; // 釋放 SDA
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        sda_oe <= 1'b1;
                        shift_reg <= reg_addr;
                        bit_cnt <= 3'd7;
                        state <= REG;
                    end
                end

                REG: begin
                    if (p0) sda_out <= shift_reg[bit_cnt];
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        if (bit_cnt == 0) state <= ACK2;
                        else bit_cnt <= bit_cnt - 1'b1;
                    end
                end

                ACK2: begin
                    if (p0) sda_oe <= 1'b0;
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        sda_oe <= 1'b1;
                        if (rw) state <= START2; // 讀取模式：送出 Repeated START
                        else begin
                            shift_reg <= wr_data; // 寫入模式
                            bit_cnt <= 3'd7;
                            state <= WRITE;
                        end
                    end
                end

                // Repeated START for Read
                START2: begin
                    if (p0) begin sda_out <= 1'b1; sda_oe <= 1'b1; end
                    if (p1) scl <= 1'b1;
                    if (p2) sda_out <= 1'b0; // Re-START
                    if (p3) begin
                        scl <= 1'b0;
                        shift_reg <= {slave_addr, 1'b1}; // 變更為 Read 標誌
                        bit_cnt <= 3'd7;
                        state <= ADDR2;
                    end
                end

                ADDR2: begin
                    if (p0) sda_out <= shift_reg[bit_cnt];
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        if (bit_cnt == 0) state <= ACK3;
                        else bit_cnt <= bit_cnt - 1'b1;
                    end
                end

                ACK3: begin
                    if (p0) sda_oe <= 1'b0;
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        bit_cnt <= 3'd7;
                        state <= READ;
                    end
                end

                READ: begin
                    if (p1) scl <= 1'b1;
                    if (p2) rd_data[bit_cnt] <= sda; // 在 SCL 高電位中點採樣
                    if (p3) begin
                        scl <= 1'b0;
                        if (bit_cnt == 0) state <= ACK4;
                        else bit_cnt <= bit_cnt - 1'b1;
                    end
                end

                ACK4: begin // Master 發送 NACK
                    if (p0) begin sda_oe <= 1'b1; sda_out <= 1'b1; end
                    if (p1) scl <= 1'b1;
                    if (p3) begin scl <= 1'b0; state <= STOP; end
                end

                WRITE: begin
                    if (p0) sda_out <= shift_reg[bit_cnt];
                    if (p1) scl <= 1'b1;
                    if (p3) begin
                        scl <= 1'b0;
                        if (bit_cnt == 0) state <= ACK5;
                        else bit_cnt <= bit_cnt - 1'b1;
                    end
                end

                ACK5: begin
                    if (p0) sda_oe <= 1'b0;
                    if (p1) scl <= 1'b1;
                    if (p3) begin scl <= 1'b0; state <= STOP; end
                end

                STOP: begin
                    if (p0) begin sda_oe <= 1'b1; sda_out <= 1'b0; end
                    if (p1) scl <= 1'b1;
                    if (p2) sda_out <= 1'b1; // STOP
                    if (p3) begin
                        done <= 1'b1;
                        busy <= 1'b0;
                        state <= IDLE;
                    end
                end
            endcase
        end
    end
endmodule