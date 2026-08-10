module frame_buffer (
    // Port A: 鏡頭寫入 (PCLK Domain)
    input  wire        wr_clk,
    input  wire        we,
    input  wire [14:0] waddr,
    input  wire [15:0] wdata,

    // Port B: LCD 讀出 (System Clock Domain)
    input  wire        rd_clk,
    input  wire [14:0] raddr,
    output reg  [15:0] rdata
);

    // 指定 Quartus 使用 M9K Block RAM
    (* ramstyle = "M9K", syn_ramstyle = "no_rw_check, M9K" *) reg [15:0] mem [0:20479];

    // Port A 寫入
    always @(posedge wr_clk) begin
        if (we) begin
            mem[waddr] <= wdata;
        end
    end

    // Port B 讀出
    always @(posedge rd_clk) begin
        rdata <= mem[raddr];
    end

endmodule