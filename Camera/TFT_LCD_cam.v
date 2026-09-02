module TFT_LCD_cam (
    input  wire        clk,
    input  wire        rst_n,
    
    // BRAM 讀取介面
    input  wire [15:0] ram_rdata,
    output wire [14:0] ram_raddr,

    // TFT LCD 硬體引腳
    output reg         SCL, SDA, RES, DC, CS, BLK
);

    // -------------------------------------------------------------------------
    // 1. 座標轉換 (X: 0~127, Y: 0~159 -> BRAM 位址 0~20479)
    // -------------------------------------------------------------------------
    reg [7:0] x_cnt, y_cnt;
    assign ram_raddr = (y_cnt * 128) + x_cnt;

    // -------------------------------------------------------------------------
    // 2. 內部控制暫存器
    // -------------------------------------------------------------------------
    reg [3:0]  clk_div;
    reg [31:0] delay_cnt;
    reg [5:0]  state;
    reg [7:0]  cmd_idx;
    reg [7:0]  spi_data;
    reg [3:0]  bit_cnt;
    reg        p_idx;
    reg [15:0] pixel_buf;

    parameter CMD_SWRESET        = 8'h01;
    parameter CMD_SLPOUT         = 8'h11;
    parameter CMD_DISPON         = 8'h29;
    parameter CMD_CASET          = 8'h2A;
    parameter CMD_RASET          = 8'h2B;
    parameter CMD_RAMWR          = 8'h2C;
    parameter CMD_MADCTL         = 8'h36;
    parameter CMD_COLMOD         = 8'h3A;

    parameter ARG_COLMOD_16BIT   = 8'h05;
    parameter ARG_MADCTL_MX_MY   = 8'hC0;
    parameter ARG_X_START        = 8'd0;
    parameter ARG_X_END          = 8'd127;
    parameter ARG_Y_START        = 8'd0;
    parameter ARG_Y_END          = 8'd159;

    localparam STATE_HW_RESET  = 3'd0;
    localparam STATE_INIT_CMD  = 3'd1;
    localparam STATE_SEND_INIT = 3'd2;
    localparam STATE_SET_AXIS  = 3'd3;
    localparam STATE_SCAN_DRAW = 3'd4;

    // -------------------------------------------------------------------------
    // 3. LCD 主狀態機
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state     <= STATE_HW_RESET;
            delay_cnt <= 0;
            bit_cnt   <= 0;
            x_cnt     <= 0;
            y_cnt     <= 0;
            p_idx     <= 0;
            cmd_idx   <= 0;
            pixel_buf <= 0;
            SCL       <= 1;
            SDA       <= 0;
            RES       <= 1;
            DC        <= 0;
            CS        <= 1;
            BLK       <= 1;
            clk_div   <= 0;
        end else begin
            BLK <= 1'b1;
            CS  <= 1'b0;

            if (delay_cnt > 0) begin
                delay_cnt <= delay_cnt - 1;
            end else if (bit_cnt > 0) begin
                if (clk_div == 0) begin 
                    SCL     <= 0; 
                    SDA     <= spi_data[bit_cnt-1]; 
                    clk_div <= 1; 
                end else begin 
                    SCL     <= 1; 
                    bit_cnt <= bit_cnt - 1; 
                    clk_div <= 0; 
                end
            end else begin
                case (state)
                    STATE_HW_RESET: begin
                        RES       <= 0;
                        delay_cnt <= 32'd500_000;
                        state     <= STATE_INIT_CMD;
                    end

                    STATE_INIT_CMD: begin
                        RES       <= 1;
                        delay_cnt <= 32'd500_000;
                        state     <= STATE_SEND_INIT;
                        cmd_idx   <= 0;
                    end

                    STATE_SEND_INIT: begin
                        case (cmd_idx)
                            0: begin spi_data <= CMD_SWRESET;        DC <= 0; bit_cnt <= 8; cmd_idx <= 1; end
                            1: begin spi_data <= CMD_SLPOUT;         DC <= 0; bit_cnt <= 8; cmd_idx <= 2; delay_cnt <= 32'd500_000; end
                            2: begin spi_data <= CMD_COLMOD;         DC <= 0; bit_cnt <= 8; cmd_idx <= 3; end
                            3: begin spi_data <= ARG_COLMOD_16BIT;  DC <= 1; bit_cnt <= 8; cmd_idx <= 4; end
                            4: begin spi_data <= CMD_MADCTL;         DC <= 0; bit_cnt <= 8; cmd_idx <= 5; end
                            5: begin spi_data <= ARG_MADCTL_MX_MY;  DC <= 1; bit_cnt <= 8; cmd_idx <= 6; end
                            6: begin spi_data <= CMD_DISPON;         DC <= 0; bit_cnt <= 8; cmd_idx <= 7; end
                            default: state <= STATE_SET_AXIS;
                        endcase
                    end

                    STATE_SET_AXIS: begin
                        case (cmd_idx)
                            7:  begin spi_data <= CMD_CASET;    DC <= 0; bit_cnt <= 8; cmd_idx <= 8;  end
                            8:  begin spi_data <= 8'h00;        DC <= 1; bit_cnt <= 8; cmd_idx <= 9;  end
                            9:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
                            10: begin spi_data <= 8'h00;        DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
                            11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
                            12: begin spi_data <= CMD_RASET;    DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
                            13: begin spi_data <= 8'h00;        DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
                            14: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
                            15: begin spi_data <= 8'h00;        DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
                            16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
                            17: begin 
                                spi_data <= CMD_RAMWR; DC <= 0; bit_cnt <= 8; 
                                state    <= STATE_SCAN_DRAW; 
                                x_cnt    <= 0; 
                                y_cnt    <= 0; 
                                p_idx    <= 0;
                            end
                        endcase
                    end

                    STATE_SCAN_DRAW: begin
                        DC <= 1;
                        bit_cnt <= 8;

                        if (!p_idx) begin
                            pixel_buf <= ram_rdata;
                            spi_data  <= ram_rdata[15:8];
                        end else begin
                            spi_data  <= pixel_buf[7:0];

                            if (x_cnt < ARG_X_END) begin
                                x_cnt <= x_cnt + 1'b1;
                            end else begin
                                x_cnt <= 0;
                                if (y_cnt < ARG_Y_END) begin
                                    y_cnt <= y_cnt + 1'b1;
                                end else begin
                                    state   <= STATE_SET_AXIS;
                                    cmd_idx <= 17;
                                end
                            end
                        end

                        p_idx <= ~p_idx;
                    end

                    default: state <= STATE_HW_RESET;
                endcase
            end
        end
    end

endmodule