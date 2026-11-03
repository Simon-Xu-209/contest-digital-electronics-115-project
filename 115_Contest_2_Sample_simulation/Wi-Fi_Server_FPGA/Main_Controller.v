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
	output reg  [15:0] orderQuantity, // 訂購數量
	output reg  [15:0] bidAmount,     // 出價金額
	output reg  [15:0] productQuota,  // 商品配額
	output reg  [31:0] grandTotal,    // 付款總額
	
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

// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
parameter SYS_RESET        = 4'd0,
			 SYS_INITIAL      = 4'd1,
			 SYS_INIT_DONE    = 4'd2,
			 SYS_WiFi_CONNECT = 4'd3,
			 SYS_EDIT_ORDER_1 = 4'd4,
			 SYS_EDIT_ORDER_2 = 4'd5;



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
			if (switch_8bit[3:0] == 4'b0001) begin
				next_system_state = SYS_EDIT_ORDER_1;
			end else if (switch_8bit[3:0] == 4'b0010) begin
				next_system_state = SYS_EDIT_ORDER_2;
			end
		end
	end else if (system_timer >= CLK_FREQ * 5) begin
		next_system_state = SYS_INIT_DONE;
	end else if ((KEY_3x3 == 4'd8) && KEY_Pressed_3x3) begin
		if (switch_8bit == 8'b0001_0000) begin
			next_system_state = current_system_state;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= "";
		system_timer        <= 32'd0;
		
		WiFi_restart <= 1'b0;
		
		orderQuantity <= {8'd65, 8'd40};
		bidAmount     <= {8'd70, 8'd30};
		productQuota  <= {8'd0, 8'd0};
		grandTotal    <= {16'd65, 16'd40};
		
		coordinate_x        <= 3'd0;
		coordinate_y        <= 3'd0;
		coordinate_state    <= 2'd0;
	end else begin
		if (next_system_state != current_system_state) begin
			system_timer <= 32'd0;
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
			
			SYS_EDIT_ORDER_1: begin
				
			end
			
			SYS_EDIT_ORDER_2: begin
				
			end
			
			default: ;
		endcase
		
		WiFi_restart <= 1'b0;
		if (KEY_3x3 == 4'd8) begin
			if (switch_8bit == 8'b0001_0000) begin
				WiFi_restart <= 1'b1;
			end
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
		send_data_reg           <= "NULL";
		current_WiFi_send_state <= WiFi_SEND_IDLE;
		next_WiFi_send_state    <= WiFi_SEND_IDLE;
	end else begin
		if ((KEY_2x2 == 3'd2)/*connect_done_fond && !connect_done_fond_d1*/) begin
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
				send_data_reg           <= "0302\r\n";
				send_en                 <= 1'b1;
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_OQ;
			end
			
			WiFi_SEND_OQ: begin
				send_data_reg           <= "00550030\r\n";
				send_en                 <= 1'b1;
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_NONE;
			end
			
			WiFi_SEND_NONE: begin
				send_data_reg           <= "0000\r\n";
				send_en                 <= 1'b1;
				current_WiFi_send_state <= WiFi_SEND_EN;
				next_WiFi_send_state    <= WiFi_SEND_IDLE;
			end
			
			WiFi_SEND_EN: begin
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
reg                   connect_done_fond;

wire [MAX_RX_LEN-1:0] order_ID;
reg  [31:0]           detected_order_ID;
reg                   order_ID_found;

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
									(WiFi_data_bytes[g+4] == ":");
	end
endgenerate

integer k;
always @(*) begin
	order_ID_found    = 1'b0;
	detected_order_ID = 32'd0;
	for (k = 0; k < MAX_RX_LEN - 3; k = k + 1) begin
		if (order_ID[k] && !order_ID_found) begin
			order_ID_found           = 1'b1;
			detected_order_ID[31:24] = WiFi_data_bytes[k+3];
			detected_order_ID[23:16] = WiFi_data_bytes[k+2];
			detected_order_ID[15:8]  = WiFi_data_bytes[k+1];
			detected_order_ID[7:0]   = WiFi_data_bytes[k];
		end
	end
	
	connect_done_fond <= 1'b0;
	for (k = 0; k < MAX_RX_LEN - 3; k = k + 1) begin
		if (connect_done[k] && !connect_done_fond) begin
			connect_done_fond <= 1'b1;
		end
	end
end

reg connect_done_fond_d1;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		connect_done_fond_d1 <= 1'b0;
	end else begin
		connect_done_fond_d1 <= connect_done_fond;
	end
end

endmodule