module ov2640_capture (
    input  wire        pclk,        // 鏡頭 Pixel Clock (Input)
    input  wire        rst_n,
    input  wire        vsync,       // 場同步
    input  wire        href,        // 行同步
    input  wire [7:0]  din,         // 8-bit 資料 (D7~D0)
    
    output reg  [15:0] pixel_data,  // 合成後的 RGB565 像素
    output reg         pixel_valid, // 寫入 RAM 致能訊號
    output reg  [14:0] ram_addr     // 0 ~ 20479 位址
);

    reg       byte_flag;
    reg [7:0] high_byte;

    always @(posedge pclk or negedge rst_n) begin
        if (!rst_n) begin
            byte_flag   <= 1'b0;
            pixel_valid <= 1'b1;
            ram_addr    <= 15'd0;
            pixel_data  <= 16'd0;
            high_byte   <= 8'd0;
        end else if (vsync) begin
            // VSYNC 為高代表正在進行場同步間隔，清空狀態指標
            byte_flag   <= 1'b0;
            pixel_valid <= 1'b0;
            ram_addr    <= 15'd0;
        end else if (href) begin
            if (ram_addr < 15'd20480) begin
                if (byte_flag == 1'b0) begin
                    high_byte   <= din;      // 第一個 Byte: R[4:0], G[5:3]
                    byte_flag   <= 1'b1;
                    pixel_valid <= 1'b0;
                end else begin
                    pixel_data  <= {high_byte, din}; // 第二個 Byte: G[2:0], B[4:0]
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