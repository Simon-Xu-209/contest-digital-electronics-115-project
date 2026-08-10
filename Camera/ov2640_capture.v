module ov2640_capture (
    input  wire        pclk,        // 鏡頭 Pixel Clock
    input  wire        rst_n,
    input  wire        vsync,       // 場同步
    input  wire        href,        // 行同步
    input  wire [7:0]  din,         // J2 傳入的 8-bit 資料
    
    output reg  [15:0] pixel_data,  // 合成後的 RGB565 像素
    output reg         pixel_valid, // 寫入 RAM 致能訊號
    output reg  [14:0] ram_addr     // 0 ~ 20479 (128x160 - 1)
);

    reg       byte_flag;
    reg [7:0] high_byte;
    // 修正後程式碼：
reg vsync_d;
always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) vsync_d <= 1'b0;
    else        vsync_d <= vsync;
end

// 檢測 VSYNC 下降沿 (代表場同步結束，新的一幀影像正式開始)
wire vsync_negedge = (vsync_d == 1'b1 && vsync == 1'b0);

always @(posedge pclk or negedge rst_n) begin
    if (!rst_n) begin
        byte_flag   <= 1'b0;
        pixel_valid <= 1'b0;
        ram_addr    <= 15'd0;
        pixel_data  <= 16'd0;
        high_byte   <= 8'd0;
    end else if (vsync_negedge) begin
        // 僅在新幀開始瞬間重置指標
        byte_flag   <= 1'b0;
        pixel_valid <= 1'b0;
        ram_addr    <= 15'b0;
    end else if (href) begin
        if (ram_addr < 15'd20480) begin
            if (byte_flag == 1'b0) begin
                high_byte   <= din;
                byte_flag   <= 1'b1;
                pixel_valid <= 1'b0;
            end else begin
                pixel_data  <= {high_byte, din};
                pixel_valid <= 1'b1;
                ram_addr    <= ram_addr + 1'b1;
                byte_flag   <= 1'b0;
            end
        end else begin
            pixel_valid <= 1'b0;
        end
    end else begin
        pixel_valid <= 1'b0;
        byte_flag   <= 1'b0;
    end
end

endmodule