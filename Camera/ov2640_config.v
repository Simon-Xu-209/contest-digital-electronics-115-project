module ov2640_config (
    input  wire clk,         // 50MHz 板載時脈
    input  wire rst_n,       // 低準位重置
    output wire sccb_scl,    // SCCB 時脈
    inout  wire sccb_sda,    // SCCB 資料
    output reg  config_done  // 設定完成標誌
);

    // -------------------------------------------------------------------------
    // 1. 產生 200kHz 內部驅動時脈 (100kHz SCCB)
    // -------------------------------------------------------------------------
    reg [8:0] clk_cnt;
    reg       scl_clk;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            clk_cnt <= 0;
            scl_clk <= 0;
        end else if (clk_cnt == 9'd249) begin
            clk_cnt <= 0;
            scl_clk <= ~scl_clk;
        end else begin
            clk_cnt <= clk_cnt + 1'b1;
        end
    end

    // -------------------------------------------------------------------------
    // 2. OV2640 初始化 ROM
    // -------------------------------------------------------------------------
    reg [7:0]  rom_addr;
    reg [15:0] reg_data;

    always @(*) begin
        case (rom_addr)
            // Bank 1 軟體重置
            8'd0:  reg_data = 16'hFF01; // Select Bank 1
            8'd1:  reg_data = 16'h1280; // System Reset
            
            // Bank 0 輸出格式與 Timing 設定
            8'd2:  reg_data = 16'hFF00; // Select Bank 0
            8'd3:  reg_data = 16'h2CFF;
            8'd4:  reg_data = 16'h2EDF;
            8'd5:  reg_data = 16'hDA09; // Enable RGB565 Output
            8'd6:  reg_data = 16'hD703;
            8'd7:  reg_data = 16'hE004;
            8'd8:  reg_data = 16'h0500;
            
            // Bank 1 Clock 分頻與 DSP 選項
            8'd9:  reg_data = 16'hFF01; // Select Bank 1
            8'd10: reg_data = 16'h1100; // PCLK Prescaler
            8'd11: reg_data = 16'h1206; // Select RGB565 / CIF Windowing
            8'd12: reg_data = 16'h4C00;
            8'd13: reg_data = 16'h0D00;
            8'd14: reg_data = 16'h0E00;
            8'd15: reg_data = 16'h1080;
            
            // Bank 0 窗格點與尺寸微調
            8'd16: reg_data = 16'hFF00; // Select Bank 0
            8'd17: reg_data = 16'h0C38;
            8'd18: reg_data = 16'h0D40;
            8'd19: reg_data = 16'h1438;
            8'd20: reg_data = 16'h1540;
            8'd21: reg_data = 16'h8C00;
            8'd22: reg_data = 16'h1711; // HSTART
            8'd23: reg_data = 16'h1875; // HSTOP
            8'd24: reg_data = 16'h1901; // VSTART
            8'd25: reg_data = 16'h1A97; // VSTOP
            8'd26: reg_data = 16'h3209; // Pixel Clock timing
            default: reg_data = 16'hFFFF; // 設定結束
        endcase
    end

    // -------------------------------------------------------------------------
    // 3. SCCB 狀態機
    // -------------------------------------------------------------------------
    reg [3:0]  state;
    reg [4:0]  bit_idx;
    reg [23:0] sccb_data;
    reg [15:0] delay_cnt;
    
    reg scl_reg, sda_reg, sda_oe;
    assign sccb_scl = scl_reg;
    assign sccb_sda = sda_oe ? sda_reg : 1'bz;

    localparam IDLE       = 4'd0,
               START      = 4'd1,
               CLK_LOW    = 4'd2,
               CLK_HIGH   = 4'd3,
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
                        sccb_data <= {8'h60, reg_data[15:8], reg_data[7:0]}; // ID 0x60
                        state     <= START;
                    end
                end

                START: begin
                    sda_reg <= 0;
                    scl_reg <= 1;
                    bit_idx <= 23;
                    state   <= CLK_LOW;
                end

                CLK_LOW: begin
                    scl_reg <= 0;
                    if (bit_idx == 15 || bit_idx == 7 || bit_idx == 0) begin
                        sda_oe <= 0; // Release SDA for ACK
                    end else begin
                        sda_oe  <= 1;
                        sda_reg <= sccb_data[bit_idx];
                    end
                    state <= CLK_HIGH;
                end

                CLK_HIGH: begin
                    scl_reg <= 1;
                    if (bit_idx == 0) begin
                        state <= STOP;
                    end else begin
                        bit_idx <= bit_idx - 1'b1;
                        state   <= CLK_LOW;
                    end
                end

                STOP: begin
                    scl_reg <= 0;
                    sda_reg <= 0;
                    sda_oe  <= 1;
                    state   <= DELAY;
                    delay_cnt <= (rom_addr == 8'd1) ? 16'd10000 : 16'd500;
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

                default: state <= IDLE;
            endcase
        end
    end

endmodule