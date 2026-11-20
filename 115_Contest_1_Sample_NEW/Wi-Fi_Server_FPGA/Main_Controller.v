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

	output reg [63:0] seven_segment_chars,

	output reg  [3:0]  previous_system_state, current_system_state, next_system_state,
	output reg  [31:0] system_timer,
	
	output reg  [2:0] coordinate_x, coordinate_y,
	output reg  [2:0] coordinate_state,
	
	output reg  [7:0] brightness,
	
	input  wire [7:0] detected_num,
	
	input  wire       rx_data_done,
	output reg  [3:0] WiFi_send_types, // Wi-Fi 連續資料流種類選擇
	output reg        start_send,      // Wi-Fi 連續資料流開始發送旗標(高態觸發)
	input  wire       start_send_ack,  // Wi-Fi 連續資料流開始發送旗標重置旗標
	output reg        WiFi_restart     // Wi-Fi 強制重置訊號
);

reg KEY_Pressed_2x2_d1,      KEY_Pressed_3x3_d1;
reg KEY_Pressed_2x2_rising,  KEY_Pressed_3x3_rising;
reg KEY_Pressed_2x2_falling, KEY_Pressed_3x3_falling;
reg [2:0] KEY_2x2_d1, KEY_2x2_d2;
reg [3:0] KEY_3x3_d1, KEY_3x3_d2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		KEY_Pressed_2x2_d1      <= 1'b0;
		KEY_Pressed_2x2_rising  <= 1'b0;
		KEY_Pressed_2x2_falling <= 1'b0;
		KEY_2x2_d1              <= 3'd7;
		KEY_2x2_d2              <= 3'd7;
		KEY_Pressed_3x3_d1      <= 1'b0;
		KEY_Pressed_3x3_rising  <= 1'b0;
		KEY_Pressed_2x2_falling <= 1'b0;
		KEY_3x3_d1              <= 4'd15;
		KEY_3x3_d2              <= 4'd15;
	end else begin
		KEY_Pressed_2x2_d1 <= KEY_Pressed_2x2;
		KEY_2x2_d1         <= KEY_2x2;
		KEY_2x2_d2         <= KEY_2x2_d1;
		KEY_Pressed_3x3_d1 <= KEY_Pressed_3x3;
		KEY_3x3_d1         <= KEY_3x3;
		KEY_3x3_d2         <= KEY_3x3_d1;
		
		KEY_Pressed_2x2_rising  <= (KEY_Pressed_2x2  && !KEY_Pressed_2x2_d1); // 正緣觸發
		KEY_Pressed_2x2_falling <= (!KEY_Pressed_2x2 && KEY_Pressed_2x2_d1);  // 負緣觸發
		KEY_Pressed_3x3_rising  <= (KEY_Pressed_3x3  && !KEY_Pressed_3x3_d1); // 正緣觸發
		KEY_Pressed_3x3_falling <= (!KEY_Pressed_3x3 && KEY_Pressed_3x3_d1);  // 負緣觸發
	end
end

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
	
	if (KEY_Pressed_2x2_falling) begin
		if (KEY_2x2_d2 == 3'd0) begin
			if (switch_8bit[1:0] == 2'b00) begin
				next_system_state = SYS_TFT_LCD;
			end else if (switch_8bit[1:0] == 2'b01) begin
				next_system_state = SYS_WiFi_CONNECT;
			end else if (switch_8bit[1:0] == 2'b10) begin
				next_system_state = SYS_JOYSTICK;
			end else if (switch_8bit[1:0] == 2'b11) begin
				next_system_state = SYS_INTEGRATION;
			end
		end else if(KEY_2x2_d2 == 3'd1) begin
			next_system_state = SYS_IDLE;
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= "";
		coordinate_x        <= 3'd0;
		coordinate_y        <= 3'd0;
		coordinate_state    <= 3'd0;
		brightness          <= 8'd31;
	end else begin
		if (next_system_state != current_system_state) begin
			brightness <= 8'd31;
			if (next_system_state == SYS_JOYSTICK) begin
				coordinate_x     <= 3'd3;
				coordinate_y     <= 3'd3;
				coordinate_state <= 3'd0;
			end else if (next_system_state == SYS_INTEGRATION) begin
				coordinate_x     <= 3'd3;
				coordinate_y     <= 3'd3;
				coordinate_state <= 3'd0;
			end
		end
		
		case (current_system_state)
			SYS_WiFi_CONNECT: begin
				if      (detected_num == "0") seven_segment_chars <= {"INF", 8'h80, "  00"};
				else if (detected_num == "1") seven_segment_chars <= {"INF", 8'h80, "  01"};
				else if (detected_num == "2") seven_segment_chars <= {"INF", 8'h80, "  02"};
				else if (detected_num == "3") seven_segment_chars <= {"INF", 8'h80, "  03"};
			end
			
			SYS_JOYSTICK: begin
				seven_segment_chars <= "";
				if (joystick_z_pulse) begin
					if (coordinate_state == 3'd0) begin
						coordinate_state <= 3'd1;
					end
				end else begin
					if (coordinate_state == 3'd0) begin
						if (joystick_up_pulse && (coordinate_y > 0)) begin
							coordinate_y <= coordinate_y - 3'd1;
						end else if (joystick_down_pulse && (coordinate_y < 6)) begin
							coordinate_y <= coordinate_y + 3'd1;
						end else if (joystick_left_pulse && (coordinate_x > 0)) begin
							coordinate_x <= coordinate_x - 3'd1;
						end else if (joystick_right_pulse && (coordinate_x < 6)) begin
							coordinate_x <= coordinate_x + 3'd1;
						end
					end
				end
			end
			
			SYS_INTEGRATION: begin
				if (coordinate_state == 3'd3) begin
					if      (detected_num == "0") seven_segment_chars <= {"INF", 8'h80, " R", {"1" + coordinate_x}, {"1" + coordinate_y}};
					else if (detected_num == "1") seven_segment_chars <= {"INF", 8'h80, " G", {"2" + coordinate_x}, {"1" + coordinate_y}};
					else if (detected_num == "2") seven_segment_chars <= {"INF", 8'h80, " B", {"1" + coordinate_x}, {"2" + coordinate_y}};
					else if (detected_num == "3") seven_segment_chars <= {"INF", 8'h80, " Y", {"2" + coordinate_x}, {"2" + coordinate_y}};
				end else begin
					seven_segment_chars <= "";
				end
				
				if (coordinate_state == 3'd0) begin
					if (rx_data_done) begin
						if ((detected_num == "0") || (detected_num == "2") || (detected_num == "6") || (detected_num == "8")) begin
							coordinate_state <= 3'd1;
						end
						case(detected_num)
							"0": begin
								coordinate_x <= 3'd0;
								coordinate_y <= 3'd0;
							end
							"2": begin
								coordinate_x <= 3'd6;
								coordinate_y <= 3'd0;
							end
							"6": begin
								coordinate_x <= 3'd0;
								coordinate_y <= 3'd6;
							end
							"8": begin
								coordinate_x <= 3'd6;
								coordinate_y <= 3'd6;
							end
						endcase
					end
				end if (joystick_z_pulse) begin 
					if	(coordinate_state == 3'd1) begin
						coordinate_state <= 3'd2;
					end else if	(coordinate_state == 3'd3) begin
						coordinate_state <= 3'd4;
					end
				end else if (coordinate_state == 3'd2) begin
					if (rx_data_done && ((detected_num == "0") || (detected_num == "2") || (detected_num == "6") || (detected_num == "8"))) begin
						coordinate_state <= 3'd3;
					end
				end else begin
					if (coordinate_state == 3'd1) begin
						if (joystick_up_pulse && (coordinate_y > 0)) begin
							coordinate_y <= coordinate_y - 3'd1;
						end else if (joystick_down_pulse && (coordinate_y < 6)) begin
							coordinate_y <= coordinate_y + 3'd1;
						end else if (joystick_left_pulse && (coordinate_x > 0)) begin
							coordinate_x <= coordinate_x - 3'd1;
						end else if (joystick_right_pulse && (coordinate_x < 6)) begin
							coordinate_x <= coordinate_x + 3'd1;
						end
						if (KEY_Pressed_2x2_falling) begin
							if ((KEY_2x2_d2 == 3'd2) && (brightness < 8'd255)) begin
								brightness <= brightness + {8'd32};
							end else if ((KEY_2x2_d2 == 3'd3) && (brightness > 8'd32)) begin
								brightness <= brightness - {8'd32};
							end
						end
					end
				end
			end
			
			default: ;
		endcase
	end
end



endmodule