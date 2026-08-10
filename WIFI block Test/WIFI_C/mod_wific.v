module mod_wific(
 input  clk,res,

 input select_w,//
 input  [3:0]data,//
		
 input  start_up,//
 input  rx_c,
 output tx_c,
 
 input  [4:1]kcol,
 output [4:1]krow,
 
 output test_txd
);

wire [4:0]key; wire t; 

UART_Client p1(
					.iCLK(clk),
					.RST_n(res),
					.select_w(t),//select_w
					.tx_en(1),//start_up
					.SW(key),//data
					.rx(rx_c),
					.tx(tx_c),
					.Client_wifi_txd(test_txd),
					);

mod_button p2( .clk(clk),.kcol(kcol),.krow(krow),.key(key),.t(t) );

endmodule 