module mode_LED #(
    parameter MAX_RX_LEN = 32
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   RECEIVE_END,  // 來自 uart_rx_string 的 rx_ready
    input  wire                   buf_busy,     // 來自 uart_rx_string 的 buf_busy
    input  wire [8*MAX_RX_LEN-1:0] rx_buf,       // 完整接收到的資料 Buffer (MSB 到 LSB 填入)
    input  wire                   SEND_END_cmd, // AT 初始化指令全部完成旗標
    output reg  [7:0]             LED,
    output reg  [15:0]            WiFi_signal
);

integer i;
reg [7:0] cmd_char;
reg match_found;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        LED         <= 8'b0000_0000;
        WiFi_signal <= 16'hFFFF; // 預設值
    end else begin
        // 1. 初始化完成但尚未收到控制指令時，亮起 LED[7] 提示 Server Ready
        if (SEND_END_cmd && (WiFi_signal == 16'hFFFF)) begin
            LED[7] <= 1'b1;
        end

        // 2. 當收到一串完整的字串 (RECEIVE_END 脈衝) 且初始化完成時進行解析
        if (RECEIVE_END && SEND_END_cmd) begin
            match_found = 0;
            
            // 由高位元組 (MSB) 向低位元組 (LSB) 掃描
            // i=0 表示最高位 Byte，i=MAX_RX_LEN-2 確保 i+1 不會溢位
            for (i = 0; i < MAX_RX_LEN - 1; i = i + 1) begin
                if (!match_found) begin
                    // 尋找冒號 ':' (ASCII: 0x3A)
                    if (rx_buf[8*(MAX_RX_LEN - i) - 1 -: 8] == 8'h3A) begin
                        // 冒號右邊第一個字元（更低位的 Byte）為命令字元
                        cmd_char = rx_buf[8*(MAX_RX_LEN - i - 1) - 1 -: 8];

                        case (cmd_char)
                            8'h30: begin LED <= 8'b0000_0001; WiFi_signal <= 16'd0;  match_found = 1; end // '0'
                            8'h31: begin LED <= 8'b0000_0010; WiFi_signal <= 16'd1;  match_found = 1; end // '1'
                            8'h32: begin LED <= 8'b0000_0100; WiFi_signal <= 16'd2;  match_found = 1; end // '2'
                            8'h33: begin LED <= 8'b0000_1000; WiFi_signal <= 16'd3;  match_found = 1; end // '3'
                            8'h34: begin LED <= 8'b0001_0000; WiFi_signal <= 16'd4;  match_found = 1; end // '4'
                            8'h35: begin LED <= 8'b0010_0000; WiFi_signal <= 16'd5;  match_found = 1; end // '5'
                            8'h36: begin LED <= 8'b0100_0000; WiFi_signal <= 16'd6;  match_found = 1; end // '6'
                            8'h37: begin LED <= 8'b1000_0000; WiFi_signal <= 16'd7;  match_found = 1; end // '7'
                            8'h38: begin LED <= 8'b0000_0011; WiFi_signal <= 16'd8;  match_found = 1; end // '8'
                            8'h39: begin LED <= 8'b0000_1100; WiFi_signal <= 16'd9;  match_found = 1; end // '9'
                            8'h41, 8'h61: begin LED <= 8'b0011_0000; WiFi_signal <= 16'd10; match_found = 1; end // 'A'/'a'
                            8'h42, 8'h62: begin LED <= 8'b1100_0000; WiFi_signal <= 16'd11; match_found = 1; end // 'B'/'b'
                            default: ; // 若無匹配的 command 則保持原狀
                        endcase
                    end
                end
            end
        end
    end
end

endmodule