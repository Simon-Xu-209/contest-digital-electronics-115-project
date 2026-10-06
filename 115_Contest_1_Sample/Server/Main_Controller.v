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
reg [2:0] current_system_state;
reg [2:0] next_system_state;
parameter SYS_IDLE         = 3'd0,
          SYS_INITIAL      = 3'd1,
          SYS_TFT_LCD      = 3'd2,
          SYS_WiFi_CONNECT = 3'd3,
          SYS_JOYSTICK     = 3'd4,
          SYS_INTEGRATION  = 3'd5;

assign sys_state = current_system_state;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_system_state <= SYS_IDLE;
	end else begin
		current_system_state <= next_system_state;
	end
end

always @(*) begin
	next_system_state = current_system_state;
	
	if (switch_8bit[1:0] == 2'b00) begin
		next_system_state = SYS_TFT_LCD;
	end else if (switch_8bit[1:0] == 2'b01) begin
		next_system_state = SYS_WiFi_CONNECT;
	end else if (switch_8bit[1:0] == 2'b10) begin
		next_system_state = SYS_JOYSTICK;
	end else if (switch_8bit[1:0] == 2'b11) begin
		next_system_state = SYS_INTEGRATION;
	end else begin
		next_system_state = current_system_state;
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

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= {8{8'h80 | "8"}};
	end else begin
		case (current_system_state)
			SYS_WiFi_CONNECT: begin
				if (detected_num == "0")      seven_segment_chars <= {"INF", 8'h80, "  00"};
				else if (detected_num == "1") seven_segment_chars <= {"INF", 8'h80, "  01"};
				else if (detected_num == "2") seven_segment_chars <= {"INF", 8'h80, "  02"};
				else if (detected_num == "3") seven_segment_chars <= {"INF", 8'h80, "  03"};
			end
			default: ;
		endcase
	end
end

assign send_en = 1'b0;

endmodule