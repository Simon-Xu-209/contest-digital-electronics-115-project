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
	input  wire [15:0] joy_x,      // 16-bit ADC X 軸
	input  wire [15:0] joy_y,      // 16-bit ADC Y 軸
	input  wire        joy_z,      // 搖桿按鈕 (1 表示按下)

	output reg [63:0] seven_segment_chars,

	// WS2812B 控制介面
	output wire [2:0] sys_state,
	output wire       joy_z_pulse_out,
	output wire       joy_up_pulse_out,
	output wire       joy_down_pulse_out,
	output wire       joy_left_pulse_out,
	output wire       joy_right_pulse_out,
	
	output reg [2:0] coordinate_x, coordinate_y,

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
reg [31:0] system_timer;

// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
reg [2:0] previous_system_state, current_system_state, next_system_state;
parameter SYS_IDLE          = 3'd0,
			 SYS_INITIAL       = 3'd1,
			 SYS_LCD_WiFi_TEST = 3'd2,
			 SYS_SEG_TEST      = 3'd3,
			 SYS_IMG_TEST      = 3'd4,
			 SYS_INTEGRATION   = 3'd5;

assign sys_state = current_system_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		previous_system_state <= SYS_IDLE;
		current_system_state  <= SYS_IDLE;
	end else begin
		previous_system_state <= current_system_state;
		current_system_state  <= next_system_state;
	end
end

always @(*) begin
	next_system_state = current_system_state;
	
	if (switch_8bit[1:0] ==  2'b0) begin
		next_system_state = SYS_LCD_WiFi_TEST;
	end else if (switch_8bit[1:0] ==  2'b01) begin
		next_system_state = SYS_SEG_TEST;
	end else if (switch_8bit[1:0] ==  2'b10) begin
		next_system_state = SYS_IMG_TEST;
	end else if (switch_8bit[1:0] ==  2'b11) begin
		next_system_state = SYS_INTEGRATION;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		system_timer <= 32'd0;
		coordinate_x <= 3'd0;
		coordinate_y <= 3'd0;
	end else begin
		case(current_system_state)
			SYS_INITIAL: begin
				coordinate_x <= 3'd0;
				coordinate_y <= 3'd0;
			end
			
			SYS_LCD_WiFi_TEST: begin
				if (joy_right_pulse_out && (coordinate_x > 0)) begin
					coordinate_x <= coordinate_x - 1;
				end else if (joy_left_pulse_out && (coordinate_x < 6)) begin
					coordinate_x <= coordinate_x + 1;
				end
				if (joy_up_pulse_out && (coordinate_y < 6)) begin
					coordinate_y <= coordinate_y + 1;
				end else if (joy_down_pulse_out && (coordinate_y > 0)) begin
					coordinate_y <= coordinate_y - 1;
				end
			end
			
			SYS_SEG_TEST: begin
				if (previous_system_state != SYS_SEG_TEST) begin
					system_timer <= 32'd0;
					seven_segment_chars <= "";
				end else if ((KEY_3x3 == 4'd0)) begin
					seven_segment_chars <= {"START", {2{8'h80 | "!"}}, " "};
				end else if ((KEY_3x3 == 4'd4)) begin
					seven_segment_chars <= {"CMD", "1", "UP",{8'h80 | "!"}, " "};
				end else if ((KEY_3x3 == 4'd5)) begin
					seven_segment_chars <= {"CMD", "1", "DW",{8'h80 | "!"}, " "};
				end else if ((KEY_3x3 == 4'd7)) begin
					seven_segment_chars <= {"CMD", "1", "LF",{8'h80 | "!"}, " "};
				end else if ((KEY_3x3 == 4'd8)) begin
					seven_segment_chars <= {"CMD", "1", "RT",{8'h80 | "!"}, " "};
				end
				if (system_timer < (CLK_FREQ + CLK_FREQ/2)) begin
					system_timer <= system_timer + 1;
					if (system_timer <= CLK_FREQ) begin
						seven_segment_chars <= {"START", {2{8'h80 | "!"}}, " "};
					end else begin
						seven_segment_chars <= "";
					end
				end else begin
					system_timer <= 32'd0;
				end
			end
			
			default:;
		endcase
	end
end






// --------------------------------------------------------------------
// 搖桿邊緣脈衝偵測器
// --------------------------------------------------------------------
reg joy_z_d1;
wire joy_z_pulse;

wire joystick_up    = (joy_y < 1000);
wire joystick_down  = (joy_y > 10000);
wire joystick_right = (joy_x > 10000);
wire joystick_left  = (joy_x < 1000);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) joy_z_d1 <= 1'b0;
    else        joy_z_d1 <= joy_z;
end
assign joy_z_pulse = joy_z && !joy_z_d1;

reg joystick_up_d1, joystick_down_d1, joystick_left_d1, joystick_right_d1;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        joystick_up_d1    <= 1'b0;
        joystick_down_d1  <= 1'b0;
        joystick_left_d1  <= 1'b0;
        joystick_right_d1 <= 1'b0;
    end else begin
        joystick_up_d1    <= joystick_up;
        joystick_down_d1  <= joystick_down;
        joystick_left_d1  <= joystick_left;
        joystick_right_d1 <= joystick_right;
    end
end

assign joy_z_pulse_out     = joy_z_pulse;
assign joy_up_pulse_out    = joystick_up    && !joystick_up_d1;
assign joy_down_pulse_out  = joystick_down  && !joystick_down_d1;
assign joy_left_pulse_out  = joystick_left  && !joystick_left_d1;
assign joy_right_pulse_out = joystick_right && !joystick_right_d1;

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