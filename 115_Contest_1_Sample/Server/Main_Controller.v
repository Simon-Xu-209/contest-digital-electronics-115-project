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

	// 搖桿輸入訊號
	input  wire joystick_z_pulse,     // 搖桿按下脈衝
	input  wire joystick_up_pulse,    // 搖桿上脈衝
	input  wire joystick_down_pulse,  // 搖桿下脈衝
	input  wire joystick_left_pulse,  // 搖桿左脈衝
	input  wire joystick_right_pulse, // 搖桿右脈衝

	output reg [63:0] seven_segment_chars,

	output reg  [3:0] previous_system_state, current_system_state, next_system_state,
	
	output reg  [2:0] coordinate_x, coordinate_y,
	output reg  [1:0] coordinate_state,

	output wire                    send_en,
	output wire [3:0]              send_target_id,
	output wire [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                    rx_done
);

parameter CLK_FREQ = 50_000_000; // 50MHz 時脈

// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
parameter SYS_RESET        = 4'd0,
			 SYS_INITIAL      = 4'd1,
			 SYS_IDLE         = 4'd2,
			 SYS_TFT_LCD      = 4'd3,
			 SYS_WiFi_CONNECT = 4'd4,
			 SYS_JOYSTICK     = 4'd5,
			 SYS_INTEGRATION  = 4'd6;



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
	
	if ((KEY_2x2 == 3'd0) && KEY_Pressed_2x2) begin
		if (switch_8bit[1:0] == 2'b00) begin
			next_system_state = SYS_TFT_LCD;
		end else if (switch_8bit[1:0] == 2'b01) begin
			next_system_state = SYS_WiFi_CONNECT;
		end else if (switch_8bit[1:0] == 2'b10) begin
			next_system_state = SYS_JOYSTICK;
		end else if (switch_8bit[1:0] == 2'b11) begin
			next_system_state = SYS_INTEGRATION;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= "";
		coordinate_x        <= 3'd0;
		coordinate_y        <= 3'd0;
		coordinate_state    <= 2'd0;
	end else begin
		if (next_system_state != current_system_state) begin
			if (next_system_state == SYS_JOYSTICK) begin
				coordinate_x     <= 3'd3;
				coordinate_y     <= 3'd3;
				coordinate_state <= 2'd0;
			end else if (next_system_state == SYS_INTEGRATION) begin
				coordinate_x     <= 3'd0;
				coordinate_y     <= 3'd0;
				coordinate_state <= 2'd0;
			end
		end
		
		case (current_system_state)
			SYS_JOYSTICK: begin
				if (previous_system_state != SYS_JOYSTICK) begin
					
				end else begin
					if (joystick_z_pulse) begin
						if (coordinate_state == 2'd0) begin
							coordinate_state <= 2'd1;
						end else if	(coordinate_state == 2'd1) begin
							coordinate_state <= 2'd2;
						end
					end else begin
						if (coordinate_state == 2'd1) begin
							if (joystick_up_pulse && (coordinate_y < 6)) begin
								coordinate_y <= coordinate_y + 3'd1;
							end else if (joystick_down_pulse && (coordinate_y > 0)) begin
								coordinate_y <= coordinate_y - 3'd1;
							end
							if (joystick_left_pulse && (coordinate_x < 6)) begin
								coordinate_x <= coordinate_x + 3'd1;
							end else if (joystick_right_pulse && (coordinate_x > 0)) begin
								coordinate_x <= coordinate_x - 3'd1;
							end
						end
					end
				end
			end
			
			SYS_INTEGRATION: begin
				if (previous_system_state != SYS_INTEGRATION) begin
					
				end else begin
					if (joystick_z_pulse) begin
						coordinate_state <= 2'd1;
						if (coordinate_state == 2'd0) begin
							coordinate_state <= 2'd1;
						end else if	(coordinate_state == 2'd1) begin
							coordinate_state <= 2'd2;
						end
					end else begin
						if (coordinate_state == 2'd1) begin
							if (joystick_up_pulse && (coordinate_y < 6)) begin
								coordinate_y <= coordinate_y + 3'd1;
							end else if (joystick_down_pulse && (coordinate_y > 0)) begin
								coordinate_y <= coordinate_y - 3'd1;
							end
							if (joystick_left_pulse && (coordinate_x < 6)) begin
								coordinate_x <= coordinate_x + 3'd1;
							end else if (joystick_right_pulse && (coordinate_x > 0)) begin
								coordinate_x <= coordinate_x - 3'd1;
							end
						end
					end
				end
			end
			
			default: ;
		endcase
		
		if      (detected_num == "0") seven_segment_chars <= {"INF", 8'h80, "  00"};
		else if (detected_num == "1") seven_segment_chars <= {"INF", 8'h80, "  01"};
		else if (detected_num == "2") seven_segment_chars <= {"INF", 8'h80, "  02"};
		else if (detected_num == "3") seven_segment_chars <= {"INF", 8'h80, "  03"};
	end
end



// --------------------------------------------------------------------
// UART 與 七段顯示器 邏輯
// --------------------------------------------------------------------
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_data_reg[8*g +: 8];
	end
endgenerate

wire [MAX_RX_LEN-1:0] match_num;
reg  [8:0]            detected_num;
reg                   num_found;

generate
	for (g = 0; g < MAX_RX_LEN-4; g = g + 1) begin : MATCH_GEN
		assign match_num[g] = (bytes[g+4] == "N") && 
									(bytes[g+3] == "u") && 
									(bytes[g+2] == "m") && 
									(bytes[g+1] == ":");
	end
endgenerate

integer k;
always @(*) begin
	num_found    = 1'b0;
	detected_num = 8'd0;
	for (k = 0; k < MAX_RX_LEN; k = k + 1) begin
		if (match_num[k] && !num_found) begin
			num_found    = 1'b1;
			detected_num = bytes[k];
		end
	end
end

assign send_en = 1'b0;

endmodule