module uart_rx_string #(
    parameter MAX_BYTES = 32,               // 接收 Buffer 最大位元組數 (32 Byte)
    parameter CLK_FREQ  = 50_000_000,
    parameter BAUD_RATE = 115200
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   rx,
    output reg [8*MAX_BYTES-1:0]  rx_buf,    // 對外輸出的平坦化 256-bit 向量
    output reg                    rx_ready,  // 資料接收完整旗標 (收到 '\n' 亮起 1 個週期)
    output reg                    buf_busy   // 1: 正在寫入 Buffer 中，禁止外部讀取
);

localparam DIV_NUM = CLK_FREQ / BAUD_RATE;

// 同步化去除亞穩態 (Metastability)
reg rx_sync0, rx_sync1;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        {rx_sync1, rx_sync0} <= 2'b11;
    else        
        {rx_sync1, rx_sync0} <= {rx_sync0, rx};
end

wire fall_edge = (rx_sync1 == 1'b1 && rx_sync0 == 1'b0); // 檢測 Start bit 下降沿

// 波特率計數器
reg [15:0] baud_cnt;
reg        rx_busy;
wire       sample_tick = (baud_cnt == DIV_NUM / 2);     // 在 Bit 中間點採樣
wire       baud_tick   = (baud_cnt == DIV_NUM - 1);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        baud_cnt <= 16'd0;
    else if (rx_busy) begin
        if (baud_tick) 
            baud_cnt <= 16'd0;
        else 
            baud_cnt <= baud_cnt + 1'b1;
    end else 
        baud_cnt <= 16'd0;
end

// 接收 FSM 狀態機
localparam S_IDLE = 2'd0, 
           S_DATA = 2'd1, 
           S_STOP = 2'd2;

reg [1:0] state;
reg [2:0] bit_idx;
reg [7:0] rx_byte;
reg [7:0] byte_cnt; // 計算目前寫入至第幾個 Byte

// 一維陣列：共 MAX_BYTES 個 Byte，每個 Byte 寬度為 8-bit
// rx_array[0] 儲存字串的第一個字元 (最高位字元)
reg [7:0] rx_array [0:MAX_BYTES-1];

// 逾時計數器 (防卡死: 放寬至約 50ms 無新 byte 才釋放 busy)
reg [22:0] timeout_cnt;

integer i;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state       <= S_IDLE;
        rx_busy     <= 1'b0;
        rx_ready    <= 1'b0;
        buf_busy    <= 1'b0;
        bit_idx     <= 3'd0;
        byte_cnt    <= 8'd0;
        rx_byte     <= 8'd0;
        timeout_cnt <= 23'd0;
        rx_buf      <= {8*MAX_BYTES{1'b0}};

        for (i = 0; i < MAX_BYTES; i = i + 1) begin
            rx_array[i] <= 8'h00;
        end
    end else begin
        rx_ready <= 1'b0; // 預設拉低 ready 脈衝

        // 防護機制：非接收期間停滯超過 50ms 強制解鎖
        if (buf_busy && !rx_busy) begin
            if (timeout_cnt < 23'd2_500_000)
                timeout_cnt <= timeout_cnt + 1'b1;
            else begin
                buf_busy    <= 1'b0;
                timeout_cnt <= 23'd0;
            end
        end else begin
            timeout_cnt <= 23'd0;
        end

        case (state)
            S_IDLE: begin
                if (fall_edge) begin
                    rx_busy <= 1'b1;
                    state   <= S_DATA;
                    bit_idx <= 3'd0;

                    // 當開啟新傳輸時，清空陣列與對外 Buffer
                    if (!buf_busy) begin
                        byte_cnt <= 8'd0;
                        buf_busy <= 1'b1;
                        rx_buf   <= {8*MAX_BYTES{1'b0}};
                        for (i = 0; i < MAX_BYTES; i = i + 1) begin
                            rx_array[i] <= 8'h00;
                        end
                    end
                end
            end

            S_DATA: begin
                if (sample_tick) begin
                    rx_byte[bit_idx] <= rx_sync1;
                end
                
                if (baud_tick) begin
                    if (bit_idx == 3'd7) begin
                        state <= S_STOP;
                    end else begin
                        bit_idx <= bit_idx + 1'b1;
                    end
                end
            end

            S_STOP: begin
                if (baud_tick) begin
                    rx_busy <= 1'b0;
                    state   <= S_IDLE;

                    // 1. 寫入一維陣列 (索引從 0 開始，依序往後儲存)
                    if (byte_cnt < MAX_BYTES) begin
                        rx_array[byte_cnt] <= rx_byte;

                        // 2. 同步將字元寫入對外 Port (rx_buf) 的高位元處 (MSB -> LSB)
                        rx_buf[8*(MAX_BYTES - byte_cnt) - 1 -: 8] <= rx_byte;

                        byte_cnt <= byte_cnt + 1'b1;
                    end

                    // 3. 收到 '\n' (0x0A) 或 陣列溢位時結束寫入
                    if (rx_byte == 8'h0A || byte_cnt + 1'b1 >= MAX_BYTES) begin
                        rx_ready <= 1'b1;
                        buf_busy <= 1'b0;
                    end
                end
            end

            default: state <= S_IDLE;
        endcase
    end
end

endmodule