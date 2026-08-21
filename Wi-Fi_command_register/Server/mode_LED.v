module mode_LED #(
    parameter MAX_RX_LEN = 32
)(
    input  wire                   clk,
    input  wire                   rst_n,
    input  wire                   RECEIVE_END,
    input  wire                   Data_reg_busy,
    input  wire [8*MAX_RX_LEN-1:0]rx_Data_reg,
    input  wire                   SEND_END_cmd,
    output reg  [7:0]             LED,
    output reg  [15:0]            WiFi_signal
);

integer idx;

// 拆解 32 個 Byte (bytes[0] 為 lowest byte, 即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
    for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
        assign bytes[g] = rx_Data_reg[8*g +: 8];
    end
endgenerate

wire [7:0] target_byte = bytes[MAX_RX_LEN-1]; 

always@(posedge clk)begin
	for(i = 0)
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        WiFi_signal <= 16'hFFFF;
    end else begin
        if (target_byte >= "0" && target_byte <= "9") begin
            WiFi_signal <= target_byte - "0";
        end else if (target_byte >= "A" && target_byte <= "F") begin
            WiFi_signal <= target_byte - "A" + 10;
        end else if (target_byte >= "a" && target_byte <= "f") begin
            WiFi_signal <= target_byte - "a" + 10;
        end else begin
            WiFi_signal <= 16'hFFFF;
        end
    end
end
endmodule