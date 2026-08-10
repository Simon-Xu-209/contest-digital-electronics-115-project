module ov2640_config (
    input  wire clk,         // 50MHz
    input  wire rst_n,
    output wire sccb_scl,
    inout  wire sccb_sda,
    output reg  config_done
);

    // 100kHz SCCB 時脈產生器
    reg [8:0] clk_cnt;
    reg       scl_clk; // 400kHz 狀態機觸發脈衝
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_cnt <= 0;
            scl_clk <= 0;
        end else if (clk_cnt == 9'd124) begin // 50MHz / 125 = 400kHz
            clk_cnt <= 0;
            scl_clk <= ~scl_clk;
        end else begin
            clk_cnt <= clk_cnt + 1'b1;
        end
    end

    // OV2640 初始化暫存器序列 (RGB565 Mode)
    reg [7:0]  rom_addr;
    reg [15:0] reg_data;

    always @(*) begin
        case (rom_addr)
            // --- Software Reset & Select Bank 1 ---
            8'd0:  reg_data = 16'hFF01; // Select Bank 1 (Sensor)
            8'd1:  reg_data = 16'h1280; // Reset All Registers
            
            // --- Bank 0 Clock & DSP Configuration ---
            8'd2:  reg_data = 16'hFF00; // Select Bank 0 (DSP)
            8'd3:  reg_data = 16'h2CFF;
            8'd4:  reg_data = 16'h2EDF;
            8'd5:  reg_data = 16'hDA09; // Enable RGB565 / YUV Output
            8'd6:  reg_data = 16'hD703;
            8'd7:  reg_data = 16'hE004; // ISP enable
            8'd8:  reg_data = 16'h0500;
            
            // --- Bank 1 Timing & Analog Configuration ---
            8'd9:  reg_data = 16'hFF01; // Select Bank 1
            8'd10: reg_data = 16'h1100; // CLKRC: Internal Clock Direct
            8'd11: reg_data = 16'h1206; // COM7: Output Format RGB565
            8'd12: reg_data = 16'h4C00;
            8'd13: reg_data = 16'h0D00;
            8'd14: reg_data = 16'h0E00;
            8'd15: reg_data = 16'h1080;
            
            // --- Select Bank 0 for Size & Color ---
            8'd16: reg_data = 16'hFF00; // Select Bank 0
            8'd17: reg_data = 16'h0C38; // ZMOW
            8'd18: reg_data = 16'h0D40; // ZMOH
            8'd19: reg_data = 16'h1438;
            8'd20: reg_data = 16'h1540;
            8'd21: reg_data = 16'h8C00;
            
            default: reg_data = 16'hFFFF; // 結束標誌
        endcase
    end

    // SCCB 狀態機控制
    reg [3:0]  state;
    reg [5:0]  bit_idx;
    reg [23:0] sccb_data;
    reg [19:0] delay_cnt;
    
    reg scl_reg, sda_reg, sda_oe;
    assign sccb_scl = scl_reg;
    assign sccb_sda = sda_oe ? sda_reg : 1'bz;

    localparam IDLE       = 4'd0,
               START      = 4'd1,
               BYTE_SEND  = 4'd2,
               ACK        = 4'd3,
               STOP       = 4'd4,
               DELAY      = 4'd5,
               DONE       = 4'd6;

    always @(posedge scl_clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= IDLE;
            rom_addr    <= 0;
            scl_reg     <= 1;
            sda_reg     <= 1;
            sda_oe      <= 1;
            config_done <= 0;
            delay_cnt   <= 0;
            bit_idx     <= 0;
        end else begin
            case (state)
                IDLE: begin
                    scl_reg <= 1;
                    sda_reg <= 1;
                    sda_oe  <= 1;
                    if (reg_data == 16'hFFFF) begin
                        state <= DONE;
                    end else begin
                        sccb_data <= {8'h60, reg_data[15:8], reg_data[7:0]}; // Address 0x60
                        state     <= START;
                    end
                end

                START: begin
                    sda_reg <= 0;
                    scl_reg <= 1;
                    bit_idx <= 23;
                    state   <= BYTE_SEND;
                end

                BYTE_SEND: begin
                    scl_reg <= 0;
                    sda_reg <= sccb_data[bit_idx];
                    sda_oe  <= 1;
                    state   <= ACK;
                end

                ACK: begin
                    scl_reg <= 1;
                    if (bit_idx == 15 || bit_idx == 7 || bit_idx == 0) begin
                        sda_oe <= 0;
                    end
                    
                    if (bit_idx == 0) begin
                        state <= STOP;
                    end else begin
                        bit_idx <= bit_idx - 1'b1;
                        state   <= BYTE_SEND;
                    end
                end

                STOP: begin
                    scl_reg <= 0;
                    sda_reg <= 0;
                    sda_oe  <= 1;
                    state   <= DELAY;
                    // Reset 暫存器 (16'h1280) 需要較長復位延遲
                    delay_cnt <= (rom_addr == 8'd1) ? 20'd500_000 : 20'd50_000;
                end

                DELAY: begin
                    scl_reg <= 1;
                    sda_reg <= 1;
                    if (delay_cnt > 0) begin
                        delay_cnt <= delay_cnt - 1'b1;
                    end else begin
                        rom_addr <= rom_addr + 1'b1;
                        state    <= IDLE;
                    end
                end

                DONE: begin
                    scl_reg     <= 1;
                    sda_reg     <= 1;
                    sda_oe      <= 0;
                    config_done <= 1'b1;
                end
            endcase
        end
    end

endmodule