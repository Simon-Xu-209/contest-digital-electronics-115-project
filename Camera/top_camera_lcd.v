module top_camera_lcd (
    input  wire        clk,          // 板載 50MHz 時脈
    input  wire        rst_n,        // 低準位重置

    // J2 鏡頭介面
    input  wire        J2_PCLK,
    input  wire        J2_HREF,
    input  wire        J2_VSYNC,
    input  wire [9:0]  J2_Y,         // J2_Y9 ~ J2_Y2 (8-bit 資料)
    inout  wire        J2_SIO_D,     // SCCB Data
    output wire        J2_SIO_C,     // SCCB Clock
    output wire        J2_RESET,
    output wire        J2_PWDN,
    output wire        J2_XCLK,

    // TFT LCD 介面
    output wire        SCL,
    output wire        SDA,
    output wire        RES,
    output wire        DC,
    output wire        CS,
    output wire        BLK
);

    // -------------------------------------------------------------------------
    // 1. 鏡頭基本控制訊號
    // -------------------------------------------------------------------------
    reg xclk_reg;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) xclk_reg <= 1'b0;
        else        xclk_reg <= ~xclk_reg; // 50MHz / 2 = 25MHz XCLK
    end
    
    assign J2_XCLK  = xclk_reg;
    assign J2_RESET = 1'b1; // 正常工作 (High Active/Inactive 視模組而定，一般拉高)
    assign J2_PWDN  = 1'b0; // 禁用 Power Down

    // -------------------------------------------------------------------------
    // 2. 內部內部介面連線
    // -------------------------------------------------------------------------
    wire        ram_we;
    wire [14:0] ram_waddr;
    wire [15:0] ram_wdata;
    wire [14:0] ram_raddr;
    wire [15:0] ram_rdata;

    // -------------------------------------------------------------------------
    // 3. 實例化 SCCB 設定模組
    // -------------------------------------------------------------------------
    ov2640_config u_config (
        .clk        (clk),
        .rst_n      (rst_n),
        .sccb_scl   (J2_SIO_C),
        .sccb_sda   (J2_SIO_D),
        .config_done()
    );

    // -------------------------------------------------------------------------
    // 4. 實例化鏡頭擷取模組
    // -------------------------------------------------------------------------
    ov2640_capture u_capture (
        .pclk       (J2_PCLK),
        .rst_n      (rst_n),
        .vsync      (J2_VSYNC),
        .href       (J2_HREF),
        .din        ({J2_Y[9], J2_Y[8], J2_Y[7], J2_Y[6], J2_Y[5], J2_Y[4], J2_Y[3], J2_Y[2]}),
        .pixel_data (ram_wdata),
        .pixel_valid(ram_we),
        .ram_addr   (ram_waddr)
    );

    // -------------------------------------------------------------------------
    // 5. 實例化 Dual-Port BRAM 影像緩衝區
    // -------------------------------------------------------------------------
    frame_buffer u_buffer (
    .wr_clk     (J2_PCLK),  // 寫入時脈：鏡頭輸出的 PCLK
    .we         (ram_we),
    .waddr      (ram_waddr),
    .wdata      (ram_wdata),
    
    .rd_clk     (clk),      // 讀取時脈：板載 50MHz
    .raddr      (ram_raddr),
    .rdata      (ram_rdata)
);

    // -------------------------------------------------------------------------
    // 6. 實例化 LCD 驅動模組
    // -------------------------------------------------------------------------
    TFT_LCD_cam u_lcd (
        .clk        (clk),
        .rst_n      (rst_n),
        .ram_rdata  (ram_rdata),
        .ram_raddr  (ram_raddr),
        .SCL(SCL), .SDA(SDA), .RES(RES), .DC(DC), .CS(CS), .BLK(BLK)
    );

endmodule