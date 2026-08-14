module mode_LED #(
    parameter MAX_RX_LEN = 32
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   RECEIVE_END,  // 來自 uart_rx_string 的 rx_ready (收到 '\n' 觸發 1 週期)
    input  wire [8*MAX_RX_LEN-1:0] rx_buf,       // 來自 uart_rx_string 的完整接收 Buffer
    input  wire                   SEND_END_cmd, // AT 指令全部發送完畢旗標
    output reg  [7:0]             LED,          // 8顆資料指示燈
    output reg  [15:0]            WiFi_signal   // 狀態/除錯選擇暫存器
);

    integer i;
    reg match_found;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            LED         <= 8'b0000_0000;
            WiFi_signal <= 16'd0;
        end else begin
            // 1. 若初始 AT 指令發送完成，但還沒收到控制指令時，亮起 LED[7] 當作 Server Ready 燈號
            if (SEND_END_cmd && (WiFi_signal == 16'h0000)) begin
                LED[7] <= 1'b1; // 預備狀態
            end

            // 2. 當收到完整的一行字串時
            if (RECEIVE_END && SEND_END_cmd) begin
                match_found = 0; // 重置搜尋旗標

                // 從第一個 Byte 掃描到倒數第二個 Byte
                for (i = 0; i < MAX_RX_LEN - 1; i = i + 1) begin
                    // 如果尚未找到匹配，且當前字元為 ':' (0x3A)
                    if (!match_found && (rx_buf[i*8 +: 8] == 8'h3A)) begin
                        // 檢查下一個字元 (i+1) 是否為有效的指令字元 ('0'~'F')
                        case (rx_buf[(i+1)*8 +: 8])
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
                            8'h41, 8'h61: begin LED <= 8'b0011_0000; WiFi_signal <= 16'd10; match_found = 1; end // 'A' or 'a'
                            8'h42, 8'h62: begin LED <= 8'b1100_0000; WiFi_signal <= 16'd11; match_found = 1; end // 'B' or 'b'
                            8'h43, 8'h63: begin LED <= 8'b0000_1111; WiFi_signal <= 16'd12; match_found = 1; end // 'C' or 'c'
                            8'h44, 8'h64: begin LED <= 8'b1111_0000; WiFi_signal <= 16'd13; match_found = 1; end // 'D' or 'd'
                            8'h45, 8'h65: begin LED <= 8'b0101_0101; WiFi_signal <= 16'd14; match_found = 1; end // 'E' or 'e'
                            8'h46, 8'h66: begin LED <= 8'b1010_1010; WiFi_signal <= 16'd15; match_found = 1; end // 'F' or 'f'
                            default: ; // 若 ':' 後面不是指令字元，則繼續往後找
                        endcase
                    end
                end
            end
        end
    end

endmodule