 module UART_Client(
			input iCLK,RST_n,
			input select_w,tx_en,
			input [4:0] SW,
			input rx,
			output tx,
			output Client_wifi_txd,
			output reg  [7:0] data_count,
			output RST_WiFi,
			output reg[7:0]length_REG = 8'b0
			
			);
		
wire receive_ok_en,receiver_OK_w;
wire [7:0] rxd;	
wire RECEIVE_END;
wire [7:0]length;
wire [4:0] LED_select;
		
assign Client_wifi_txd = rx;	
assign RST_WiFi = RST_n;
wire [7:0] data_count_wire;

always @(posedge iCLK or negedge RST_n) begin
    if (!RST_n)
        length_REG <= 0;
    else
        length_REG <= length;   // ⭐ 這就是轉換
end

					
uart_tx2 uart_tx_u1(
					.iCLK(iCLK),
					.RST_n(RST_n),
					.select_w(select_w),
					.tx_en(tx_en),
					.LED_select(LED_select),
					.receiver_OK(receiver_OK_w),
					.tx(tx),
					.receive_ok_en(receive_ok_en)
					);
					
uart_rx2 uart_rx_u2(
					.iCLK(iCLK),
					.RST_n(RST_n),
					.rx(rx),
					.rxd(rxd),
					.RECEIVE_END(RECEIVE_END),
					.data_count(data_count_wire),
					.length_reg(length)
					);
					
receiver_OK receiver_OK_u1(
								.iCLK(iCLK),
								.RST_n(RST_n),
								.RECEIVE_END(RECEIVE_END),
								.receive_ok_en(receive_ok_en),
								.rxd(rxd),
								.receiver_OK(receiver_OK_w)
								);
								
Select_mode Select_mode_u1(
								.iCLK(iCLK),
								.RST_n(RST_n),
								.select_w(select_w),
								.SW(SW),
								.LED_select(LED_select)
								
								);

endmodule
