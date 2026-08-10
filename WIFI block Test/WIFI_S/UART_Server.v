module UART_Server(
			input iCLK,RST_n,
			input tx_en,
			input rx,
			output tx,
			output [7:0] LED,
			output Server_wifi_txd,
			output reg RST_WiFi,
			output rse_wifi,
			output [15:0]LED_select
			);

wire receive_ok_en, SEND_END_cmd;

wire [7:0] rxd;
wire RECEIVE_END;

wire receiver_OK_ser_w;
assign Server_wifi_txd = rx;
//assign RST_WiFi = RST_n;
assign rse_wifi = RST_n;

reg RST=0;

always@(posedge iCLK)begin
RST_WiFi=(RST)? 1:RST_n;
RST=1;
end
			
uart_tx1 uart_tx_u1(
					.iCLK(iCLK),
					.RST_n(RST_n),
					.tx_en(tx_en),//?
					.receiver_OK_ser(receiver_OK_ser_w),
					.tx(tx),
					.receive_ok_en(receive_ok_en),
					.SEND_END_cmd(SEND_END_cmd)
					);
					
uart_rx1 uart_rx_u1(
					.iCLK(iCLK),
					.RST_n(RST_n),
					.rxd_in(rx),
					.rxd(rxd),
					.RECEIVE_END(RECEIVE_END)
					);
					
receiver_OK_ser receiver_OK_ser_u1(
										.iCLK(iCLK),
										.RST_n(RST_n),
										.RECEIVE_END(RECEIVE_END),
										.receive_ok_en(receive_ok_en),
										.rxd(rxd),
										.receiver_OK_ser(receiver_OK_ser_w)
										);
										
mode_LED mode_LED_u1(
					.iCLK(iCLK),
					.RST_n(RST_n),
					.RECEIVE_END(RECEIVE_END),
					.rxd(rxd),//收到的資料
					.SEND_END_cmd(SEND_END_cmd),
					.LED(LED),
					.LED_select(LED_select)
					);

endmodule
