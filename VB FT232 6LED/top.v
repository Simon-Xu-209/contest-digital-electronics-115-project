module top(
    input clk,           // FPGA 系統時鐘，例如 50MHz
    input rst_n,         // 重置，低有效
    input uart_rx,       // FT232 TX 腳
    output [5:0] led,    // LED 0~5 控制
    output [5:0] debug_led // debug 用，顯示接收到的低6位
);

wire [7:0] rx_data;
wire rx_done;

// ----------------------
// UART 接收模組
// ----------------------
uart_rx #(
    .CLK_FREQ(50000000),
    .BAUD_RATE(9600)
) uart_rx_inst (
    .clk(clk),
    .rst_n(rst_n),
    .rx(uart_rx),
    .data(rx_data),
    .done(rx_done)
);

// ----------------------
// LED 控制模組
// ----------------------
led_uart_ctrl led_ctrl_inst (
    .clk(clk),
    .rst_n(rst_n),
    .rx_data(rx_data),
    .rx_done(rx_done),
    .led(led)
);

// ----------------------
// debug LED，顯示 rx_data[5:0]
// ----------------------
assign debug_led = rx_data[5:0];

endmodule
