module led_uart_ctrl(
    input clk,
    input rst_n,
    input [7:0] rx_data,
    input rx_done,
    output reg [5:0] led
);
initial begin
led[5:0]=6'b111111;
end
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        led <= 6'b000000;
    else if(rx_done) begin
        case(rx_data)
            "A": led[0] <= 0;
            "a": led[0] <= 1;
            "B": led[1] <= 0;
            "b": led[1] <= 1;
            "C": led[2] <= 0;
            "c": led[2] <= 1;
            "D": led[3] <= 0;
            "d": led[3] <= 1;
            "E": led[4] <= 0;
            "e": led[4] <= 1;
            "F": led[5] <= 0;
            "f": led[5] <= 1;
            default: led <= 6'b111111; // 其他不改變
        endcase
    end
end

endmodule
