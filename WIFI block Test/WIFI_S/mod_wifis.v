module mod_wifis(     
 input  clk,res,			
 output RST_WiFi,
 output [7:0]data,		
 input  start_up,
 input  rx,
 output tx,
 
 output test_txd
			);
			
wire [7:0]ram;
assign data=~ram; 

UART_Server UART_Server_u1(
			.iCLK(clk),
			.RST_n(res),
			.tx_en(1),//start_up
			.rx(rx),
			.tx(tx),
			.LED(ram),
			.Server_wifi_txd(test_txd),
			.RST_WiFi(RST_WiFi)
			);
			
endmodule 