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
	
	output reg        WiFi_restart
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