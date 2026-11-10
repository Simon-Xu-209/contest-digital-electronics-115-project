module Main_Controller #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN = 32,
	parameter MAX_CHARS  = 32
)(
	input  wire clk,
	input  wire rst_n,

	input  wire [7:0] switch_8bit, // 8Bit 指撥開關 (SW1 ~ SW8)

	input  wire [2:0] KEY_2x2,
	input  wire       KEY_Pressed_2x2,
	input  wire [3:0] KEY_3x3,
	input  wire       KEY_Pressed_3x3,

	// 搖桿輸入訊號
	input  wire joystick_z_pulse,     // 搖桿按下脈衝
	input  wire joystick_up_pulse,    // 搖桿上脈衝
	input  wire joystick_down_pulse,  // 搖桿下脈衝
	input  wire joystick_left_pulse,  // 搖桿左脈衝
	input  wire joystick_right_pulse, // 搖桿右脈衝

	output reg  [63:0] seven_segment_chars,

	output reg  [3:0]  previous_system_state, current_system_state, next_system_state,
	output reg  [31:0] system_timer,
	
	// 訂單資料
	output reg  [23:0] orderQuantity, // 訂購數量
	output reg  [23:0] bidAmount,     // 出價金額
	output reg  [23:0] productQuota,  // 商品配額
	output wire [47:0] grandTotal,    // 付款總額
	output reg  [31:0] new_orderID_confirm,
	
	output reg  [2:0] coordinate_x, coordinate_y,
	output reg  [1:0] coordinate_state,

	output reg                     send_en,
	output reg  [3:0]              send_target_id,
	output reg  [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire                    send_done,
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	output reg                     WiFi_restart,
	input  wire                    rx_done
);

parameter CLK_FREQ = 50_000_000; // 50MHz 時脈

reg KEY_Pressed_2x2_d1, KEY_Pressed_3x3_d1;
reg KEY_Pressed_2x2_pulse, KEY_Pressed_3x3_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		KEY_Pressed_2x2_d1    <= 1'b0;
		KEY_Pressed_2x2_pulse <= 1'b0;
		KEY_Pressed_3x3_d1    <= 1'b0;
		KEY_Pressed_3x3_pulse <= 1'b0;
	end else begin
		KEY_Pressed_2x2_d1 <= KEY_Pressed_3x3;
		KEY_Pressed_3x3_d1 <= KEY_Pressed_3x3;
		if (KEY_Pressed_2x2 && !KEY_Pressed_2x2_d1) begin
			KEY_Pressed_2x2_pulse <= 1'b1;
		end else begin
			KEY_Pressed_2x2_pulse <= 1'b0;
		end
		if (KEY_Pressed_3x3 && !KEY_Pressed_3x3_d1) begin
			KEY_Pressed_3x3_pulse <= 1'b1;
		end else begin
			KEY_Pressed_3x3_pulse <= 1'b0;
		end
	end
end




// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
parameter SYS_RESET           = 4'd0,
			 SYS_INITIAL         = 4'd1,
			 SYS_INIT_DONE       = 4'd2,
			 SYS_WiFi_CONNECT    = 4'd3,
			 SYS_EDIT_ORDER_03   = 4'd4,
			 SYS_EDIT_ORDER_02   = 4'd5,
			 SYS_EDIT_ORDER_xx   = 4'd6,
			 SYS_EDIT_ORDER_DONE = 4'd7;



always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		previous_system_state <= SYS_RESET;
		current_system_state  <= SYS_RESET;
	end else begin
		previous_system_state <= current_system_state;
		current_system_state  <= next_system_state;
	end
end

always @(*) begin
	next_system_state = current_system_state;
	
	if ((KEY_3x3 == 4'd6) && KEY_Pressed_3x3) begin
		if (switch_8bit == 8'b0000_0000) begin
			next_system_state = SYS_INITIAL;
		end else if (switch_8bit[7:4] == 4'b0100) begin
			if (switch_8bit[3:0] == 4'b0011) begin
				next_system_state = SYS_EDIT_ORDER_03;
			end else if (switch_8bit[3:0] == 4'b0010) begin
				next_system_state = SYS_EDIT_ORDER_02;
			end else if (switch_8bit[3:0] == new_orderID_confirm[7:0] - "0") begin
				next_system_state = SYS_EDIT_ORDER_xx;
			end
		end
	end else if (system_timer >= CLK_FREQ * 5) begin
		next_system_state = SYS_INIT_DONE;
	end else if ((KEY_3x3 == 4'd8) && KEY_Pressed_3x3) begin
		if (switch_8bit == 8'b0001_0000) begin
			next_system_state = current_system_state;
		end else if (switch_8bit[7:4] == 4'b0100) begin
			next_system_state = SYS_EDIT_ORDER_DONE;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= "";
		system_timer        <= 32'd0;
		
		WiFi_restart <= 1'b0;
		
		// 訂單ID03, 訂單ID02, 訂單IDxx
		orderQuantity <= {8'd55, 8'd30, 8'd0};    // 訂購數量
		bidAmount     <= {8'd80, 8'd50, 8'd0};    // 出價金額
		productQuota  <= {8'd0,  8'd0,  8'd0};    // 商品配額
		
		new_orderID_confirm <= 32'd0;
		
		coordinate_x        <= 3'd0;
		coordinate_y        <= 3'd0;
		coordinate_state    <= 2'd0;
	end else begin
		if (next_system_state != current_system_state) begin
			system_timer <= 32'd0;
		end else if ((current_system_state == SYS_EDIT_ORDER_03) || (current_system_state == SYS_EDIT_ORDER_02) || (current_system_state == SYS_EDIT_ORDER_xx)) begin
			seven_segment_chars <= "0080TS80";
			if (system_timer < CLK_FREQ*2) begin
				system_timer <= system_timer + 32'd1;
			end else begin
				system_timer <= 32'd0;
			end
		end
		
		case (current_system_state)
			SYS_INITIAL: begin
				seven_segment_chars <= {"WAIT", {4{8'h80}}};
				if (system_timer < CLK_FREQ * 5) begin
					system_timer <= system_timer + 32'd1;
				end
			end
			
			SYS_INIT_DONE: begin
				seven_segment_chars <= "80-50-00";
			end
			
			SYS_EDIT_ORDER_03: begin
				if (KEY_Pressed_3x3_pulse) begin
					case (KEY_3x3)
						// +10
						4'd0: begin
							if ((productQuota[23:16] + 8'd10 <= orderQuantity[23:16]) && ((productQuota[23:16] + 8'd10) + productQuota[15:8] + productQuota[7:0] <= 8'd80))
								productQuota[23:16] <= productQuota[23:16] + 8'd10;
						end
						// -10
						4'd3: begin
							if (productQuota[23:16] >= 8'd10)
								productQuota[23:16] <= productQuota[23:16] - 8'd10;
						end
								// +1 (KEY 2)
						4'd2: begin
							if ((productQuota[23:16] < orderQuantity[23:16]) && ((productQuota[23:16] + 8'd1) + productQuota[15:8] + productQuota[7:0] <= 8'd80))
								productQuota[23:16] <= productQuota[23:16] + 8'd1;
						end
						// -1 (KEY 5)
						4'd5: begin
							if (productQuota[23:16] > 8'd0)
								productQuota[23:16] <= productQuota[23:16] - 8'd1;
						end
						default: ;
					endcase
				end
			end
			
			SYS_EDIT_ORDER_02: begin
				if (KEY_Pressed_3x3_pulse) begin
					case (KEY_3x3)
						// +10
						4'd0: begin
							if ((productQuota[15:8] + 8'd10 <= orderQuantity[15:8]) && (productQuota[23:16] + (productQuota[15:8] + 8'd10) + productQuota[7:0] <= 8'd80))
								productQuota[15:8] <= productQuota[15:8] + 8'd10;
						end
						// -10
						4'd3: begin
							if (productQuota[15:8] >= 8'd10)
								productQuota[15:8] <= productQuota[15:8] - 8'd10;
						end
								// +1 (KEY 2)
						4'd2: begin
							if ((productQuota[15:8] < orderQuantity[15:8]) && (productQuota[23:16] + (productQuota[15:8] + 8'd1) + productQuota[7:0] <= 8'd80))
								productQuota[15:8] <= productQuota[15:8] + 8'd1;
						end
						// -1 (KEY 5)
						4'd5: begin
							if (productQuota[15:8] > 8'd0)
								productQuota[15:8] <= productQuota[15:8] - 8'd1;
						end
						default: ;
					endcase
				end
			end
			
			SYS_EDIT_ORDER_xx: begin
				if (KEY_Pressed_3x3_pulse) begin
					case (KEY_3x3)
						// +10
						4'd0: begin
							if ((productQuota[7:0] + 8'd10 <= orderQuantity[7:0]) && (productQuota[23:16] + productQuota[15:8] + (productQuota[7:0] + 8'd10) <= 8'd80))
								productQuota[7:0] <= productQuota[7:0] + 8'd10;
						end
						// -10
						4'd3: begin
							if (productQuota[7:0] >= 8'd10)
								productQuota[7:0] <= productQuota[7:0] - 8'd10;
						end
								// +1 (KEY 2)
						4'd2: begin
							if ((productQuota[7:0] < orderQuantity[7:0]) && (productQuota[23:16] + productQuota[15:8] + (productQuota[7:0] + 8'd1) <= 8'd80))
								productQuota[7:0] <= productQuota[7:0] + 8'd1;
						end
						// -1 (KEY 5)
						4'd5: begin
							if (productQuota[7:0] > 8'd0)
								productQuota[7:0] <= productQuota[7:0] - 8'd1;
						end
						default: ;
					endcase
				end
			end
			
			SYS_EDIT_ORDER_DONE: begin
				seven_segment_chars[63:16] <= "80-50-";
				seven_segment_chars[15:8]  <= "0" + bidAmount[7:0] / 10;
				seven_segment_chars[7:0]   <= "0" + bidAmount[7:0] % 10;
			end
			
			default: ;
		endcase
		
		WiFi_restart <= 1'b0;
		if (switch_8bit == 8'b0001_0000) begin
			if (KEY_3x3 == 4'd8) begin
				WiFi_restart <= 1'b1;
			end else begin
				WiFi_restart <= 1'b0;
			end
		end
		
		
		if (new_orderID_confirm == 32'd0) begin
			new_orderID_confirm <= detected_new_order_ID;
		end
		
		if (rx_done && new_quantity_amount_found) begin
			// 訂購數量後兩位數運算 (十位數 * 10 + 個位數)
			orderQuantity[7:0] <= (detected_new_quantity_amount[47:40] - "0") * 4'd10 + 
										(detected_new_quantity_amount[39:32] - "0");
			
			// 出價金額後兩位數運算 (十位數 * 10 + 個位數)
			bidAmount[7:0]     <= (detected_new_quantity_amount[15:8]  - "0") * 4'd10 + 
									(detected_new_quantity_amount[7:0]   - "0");
		end
	end
end



localparam WiFi_SEND_IDLE = 4'd0;
localparam WiFi_SEND_EN   = 4'd1;
localparam WiFi_SEND_ID   = 4'd2;
localparam WiFi_SEND_OQ   = 4'd3;
localparam WiFi_SEND_NONE = 4'd4;

reg [3:0] current_WiFi_send_state, next_WiFi_send_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		send_en                 <= 1'b0;
		send_target_id          <= 4'd0;
		send_data_reg           <= "";
		current_WiFi_send_state <= WiFi_SEND_IDLE;
		next_WiFi_send_state    <= WiFi_SEND_IDLE;
	end else begin
		if (connect_done_pulse) begin
			next_WiFi_send_state <= WiFi_SEND_ID;
		end else if (rx_done && (detected_order_ID[31:8] == "990")) begin
			next_WiFi_send_state <= WiFi_SEND_ID;
		end else if (rx_done && (detected_new_order_ID == new_orderID_confirm)) begin
			next_WiFi_send_state <= WiFi_SEND_ID;
		end
		
		send_en <= 1'b0;
		case(current_WiFi_send_state)
			WiFi_SEND_IDLE: begin
				if (!tx_busy) begin
					current_WiFi_send_state <= next_WiFi_send_state;
				end
			end
			
			WiFi_SEND_ID: begin
				if (detected_order_ID == "9903") begin
					send_data_reg <= detected_order_ID;
				end else if (detected_order_ID == "9902") begin
					send_data_reg <= detected_order_ID;
				end else if (detected_order_ID[31:16] == "99") begin
					send_data_reg <= detected_order_ID;
				end else if (detected_new_order_ID == new_orderID_confirm) begin
					send_data_reg <= detected_new_order_ID;
				end else if (detected_new_order_ID != new_orderID_confirm) begin
					send_data_reg <= detected_new_order_ID;
				end else begin
					send_data_reg <= "ID:0302\r\n";
				end
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_OQ;
			end
			
			WiFi_SEND_OQ: begin
				if (detected_order_ID == "9903") begin
					send_data_reg <= {"QA:00", quantity_03_tens, quantity_03_ones, "00", amount_03_tens, amount_03_ones, "\r\n"};
				end else if (detected_order_ID == "9902") begin
					send_data_reg <= {"QA:00", quantity_02_tens, quantity_02_ones, "00", amount_02_tens, amount_02_ones, "\r\n"};
				end else if (detected_order_ID[31:16] == "99") begin
					send_data_reg <= {"QA: \r\n"};
				end else if (detected_new_order_ID == new_orderID_confirm) begin
					send_data_reg <= {"QT: \r\n"};
				end else if (detected_new_order_ID != new_orderID_confirm) begin
					send_data_reg <= {"QT: \r\n"};
				end else begin
					send_data_reg <= {"QA:00", quantity_03_tens, quantity_03_ones, "00", quantity_02_tens, quantity_02_ones, "\r\n"};
				end
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_NONE;
			end
			
			WiFi_SEND_NONE: begin
				if (detected_order_ID == "9903") begin
					send_data_reg <= {"QT:#", quota_03_tens, quota_03_ones, "$", total_03_thousands, total_03_hundreds, total_03_tens, total_03_ones, "\r\n"};
				end else if (detected_order_ID == "9902") begin
					send_data_reg <= {"QT:#", quota_02_tens, quota_02_ones, "$", total_02_thousands, total_02_hundreds, total_02_tens, total_02_ones, "\r\n"};
				end else if (detected_order_ID[31:16] == "99") begin
					send_data_reg <= {"QT:NO\r\n"};
				end else if (detected_new_order_ID == new_orderID_confirm) begin
					send_data_reg <= {"QT:NO\r\n"};
				end else if (detected_new_order_ID != new_orderID_confirm) begin
					send_data_reg <= {"QT:YES\r\n"};
				end else begin
					send_data_reg <= "QT:0000\r\n";
				end
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_IDLE;
			end
			
			WiFi_SEND_EN: begin
				send_en <= 1'b1;
				if (send_done)	begin
					current_WiFi_send_state <= WiFi_SEND_IDLE;
				end
			end
		endcase
	end
end



// --------------------------------------------------------------------
// UART 與 七段顯示器 邏輯
// --------------------------------------------------------------------
wire [7:0] WiFi_data_bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign WiFi_data_bytes[g] = rx_data_reg[8*g +: 8];
	end
endgenerate

wire [MAX_RX_LEN-1:0] connect_done;

wire [MAX_RX_LEN-1:0] order_ID;
reg  [31:0]           detected_order_ID;
reg                   order_ID_found;

wire [MAX_RX_LEN-1:0] new_order_ID, new_quantity_amount;
reg  [31:0] detected_new_order_ID;
reg  [63:0] detected_new_quantity_amount;
reg  new_order_ID_found;
reg  new_quantity_amount_found;

//reg  [31:0] new_orderID_confirm;

generate
	for (g = 0; g < MAX_RX_LEN-3; g = g + 1) begin : MATCH_DONE
		assign connect_done[g] = (WiFi_data_bytes[g+3] == "D") && 
										 (WiFi_data_bytes[g+2] == "o") && 
										 (WiFi_data_bytes[g+1] == "n") && 
										 (WiFi_data_bytes[g]   == "e");
	end
	for (g = 0; g < MAX_RX_LEN-6; g = g + 1) begin : MATCH_ID
		assign order_ID[g] = (WiFi_data_bytes[g+6] == "I") && 
									(WiFi_data_bytes[g+5] == "D") && 
									(WiFi_data_bytes[g+4] == ":") && 
									(WiFi_data_bytes[g+3] == "9") && 
									(WiFi_data_bytes[g+2] == "9");
	end
	
	for (g = 0; g < MAX_RX_LEN-9; g = g + 1) begin : MATCH_NEW_ID
		assign new_order_ID[g] = (WiFi_data_bytes[g+9] == "N") && 
										 (WiFi_data_bytes[g+8] == "e") && 
										 (WiFi_data_bytes[g+7] == "w") && 
										 (WiFi_data_bytes[g+6] == "I") && 
										 (WiFi_data_bytes[g+5] == "D") && 
										 (WiFi_data_bytes[g+4] == ":");
	end
	for (g = 0; g < MAX_RX_LEN-13; g = g + 1) begin : MATCH_NEW_QA
		assign new_quantity_amount[g] = (WiFi_data_bytes[g+13] == "N") && 
												  (WiFi_data_bytes[g+12] == "e") && 
												  (WiFi_data_bytes[g+11] == "w") && 
												  (WiFi_data_bytes[g+10] == "Q") && 
												  (WiFi_data_bytes[g+9]  == "A") &&
												  (WiFi_data_bytes[g+8]  == ":");
	end
endgenerate

integer k;
always @(*) begin
	order_ID_found    = 1'b0;
	detected_order_ID = 32'd0;
	
	detected_new_order_ID = 32'd0;
	new_order_ID_found    = 1'b0;
	
	detected_new_quantity_amount = 64'd0;
	new_quantity_amount_found = 1'b0;
	
	for (k = 0; k < MAX_RX_LEN - 3; k = k + 1) begin
		if (order_ID[k] && !order_ID_found) begin
			order_ID_found           = 1'b1;
			detected_order_ID[31:24] = WiFi_data_bytes[k+3];
			detected_order_ID[23:16] = WiFi_data_bytes[k+2];
			detected_order_ID[15:8]  = WiFi_data_bytes[k+1];
			detected_order_ID[7:0]   = WiFi_data_bytes[k];
		end
	end
	for (k = 0; k < MAX_RX_LEN - 3; k = k + 1) begin
		if (new_order_ID[k] && !new_order_ID_found) begin
			new_order_ID_found           = 1'b1;
			detected_new_order_ID[31:24] = WiFi_data_bytes[k+3];
			detected_new_order_ID[23:16] = WiFi_data_bytes[k+2];
			detected_new_order_ID[15:8]  = WiFi_data_bytes[k+1];
			detected_new_order_ID[7:0]   = WiFi_data_bytes[k];
		end
	end
	for (k = 0; k < MAX_RX_LEN - 13; k = k + 1) begin
		if (new_quantity_amount[k] && !new_quantity_amount_found) begin
			new_quantity_amount_found           = 1'b1;
			detected_new_quantity_amount[63:56] = WiFi_data_bytes[k+7];
			detected_new_quantity_amount[55:48] = WiFi_data_bytes[k+6];
			detected_new_quantity_amount[47:40] = WiFi_data_bytes[k+5];
			detected_new_quantity_amount[39:32] = WiFi_data_bytes[k+4];
			detected_new_quantity_amount[31:24] = WiFi_data_bytes[k+3];
			detected_new_quantity_amount[23:16] = WiFi_data_bytes[k+2];
			detected_new_quantity_amount[15:8]  = WiFi_data_bytes[k+1];
			detected_new_quantity_amount[7:0]   = WiFi_data_bytes[k];
		end
	end
end

wire any_connect_done = |connect_done; // 只要有任何一個位置對應到 "Done" 即可

reg connect_done_pulse;
reg connection_handled; // 記錄當次連線是否已處理過

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		connect_done_pulse <= 1'b0;
	end else begin
		connect_done_pulse <= 1'b0;
		
		// 只有當 rx_done 發生（收到新封包）、內容包含 "Done"、且目前沒有在發送時，才產生 1 個 clock 的脈衝
		if (rx_done && any_connect_done && !connection_handled && (current_WiFi_send_state == WiFi_SEND_IDLE) && !tx_busy) begin
			connect_done_pulse <= 1'b1;
			connection_handled <= 1'b1; // 鎖定旗標，避免單次連線內重複觸發
		end
		
		// 關鍵修改：當第三筆資料（QT:0000）傳送完畢（send_done 且即將回到 IDLE）時，自動解鎖旗標
		if ((current_WiFi_send_state == WiFi_SEND_EN) && send_done && (next_WiFi_send_state == WiFi_SEND_IDLE)) begin
			connection_handled <= 1'b0;
		end
		
		// 手動重啟時也同步歸零
		if (WiFi_restart) begin
			connection_handled <= 1'b0;
		end
	end
end



// orderQuantity 的十位數與個位數 ASCII
wire [7:0] quantity_03_tens = "0" + (orderQuantity[23:16] / 10);
wire [7:0] quantity_03_ones = "0" + (orderQuantity[23:16] % 10);
wire [7:0] quantity_02_tens = "0" + (orderQuantity[15:8]  / 10);
wire [7:0] quantity_02_ones = "0" + (orderQuantity[15:8]  % 10);
wire [7:0] quantity_xx_tens = "0" + (orderQuantity[7:0]   / 10);
wire [7:0] quantity_xx_ones = "0" + (orderQuantity[7:0]   % 10);

// bidAmount 的十位數與個位數 ASCII
wire [7:0] amount_03_tens = "0" + (bidAmount[23:16] / 10);
wire [7:0] amount_03_ones = "0" + (bidAmount[23:16] % 10);
wire [7:0] amount_02_tens = "0" + (bidAmount[15:8]  / 10);
wire [7:0] amount_02_ones = "0" + (bidAmount[15:8]  % 10);
wire [7:0] amount_xx_tens = "0" + (bidAmount[7:0]   / 10);
wire [7:0] amount_xx_ones = "0" + (bidAmount[7:0]   % 10);

// productQuota 的十位數與個位數 ASCII
wire [7:0] quota_03_tens = "0" + (productQuota[23:16] / 10);
wire [7:0] quota_03_ones = "0" + (productQuota[23:16] % 10);
wire [7:0] quota_02_tens = "0" + (productQuota[15:8]  / 10);
wire [7:0] quota_02_ones = "0" + (productQuota[15:8]  % 10);
wire [7:0] quota_xx_tens = "0" + (productQuota[7:0]   / 10);
wire [7:0] quota_xx_ones = "0" + (productQuota[7:0]   % 10);

// grandTotal 的十位數與個位數 ASCII
wire [7:0] total_03_thousands = "0" + ((grandTotal[47:32] % 10000) / 1000);
wire [7:0] total_03_hundreds  = "0" + ((grandTotal[47:32] % 1000) / 100);
wire [7:0] total_03_tens      = "0" + ((grandTotal[47:32] % 100) / 10);
wire [7:0] total_03_ones      = "0" + (grandTotal[47:32]  % 10);

wire [7:0] total_02_thousands = "0" + ((grandTotal[31:16] % 10000) / 1000);
wire [7:0] total_02_hundreds  = "0" + ((grandTotal[31:16] % 1000) / 100);
wire [7:0] total_02_tens      = "0" + ((grandTotal[31:16] % 100) / 10);
wire [7:0] total_02_ones      = "0" + (grandTotal[31:16]  % 10);

wire [7:0] total_xx_thousands = "0" + ((grandTotal[15:0] % 10000) / 1000);
wire [7:0] total_xx_hundreds  = "0" + ((grandTotal[15:0] % 1000) / 100);
wire [7:0] total_xx_tens      = "0" + ((grandTotal[15:0] % 100) / 10);
wire [7:0] total_xx_ones      = "0" + (grandTotal[15:0]  % 10);

assign grandTotal[47:32] = productQuota[23:16] * bidAmount[23:16];
assign grandTotal[31:16] = productQuota[15:8] * bidAmount[15:8];
assign grandTotal[15:0]  = productQuota[7:0] * bidAmount[7:0];



endmodule