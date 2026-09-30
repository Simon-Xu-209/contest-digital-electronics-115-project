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

	output reg           ws_draw_en,
	output wire [1535:0] ws_led_grb_data,

	output reg                     send_en,
	output reg  [3:0]              send_target_id,
	output reg  [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                    rx_done,

	// --------------------------------------------------------------------
	// TFT LCD Command Bus API 驅動介面
	// --------------------------------------------------------------------
	output reg        lcd_cmd_valid,
	output reg [3:0]  lcd_cmd_type,
	output reg [7:0]  lcd_cmd_char_index,
	output reg [7:0]  lcd_cmd_ascii,
	output reg [7:0]  lcd_cmd_x,
	output reg [7:0]  lcd_cmd_y,
	output reg [15:0] lcd_cmd_color,
	output reg [3:0]  lcd_cmd_scale
);

parameter CLK_FREQ = 50_000_000; // 50MHz 時脈

// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
reg [2:0] current_system_state;
reg [2:0] next_system_state;
parameter SYS_IDLE         = 3'd0,
          SYS_INITIAL      = 3'd1,
			 SYS_KEYBOARD_2x2 = 3'd2,
          SYS_KEYBOARD_3x3 = 3'd3;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_system_state <= SYS_IDLE;
	end else begin
		current_system_state <= next_system_state;
	end
end

always @(*) begin
	next_system_state = current_system_state;
	if (KEY_Pressed_3x3) begin
		next_system_state = SYS_KEYBOARD_3x3;
	end else if (KEY_Pressed_2x2) begin
		next_system_state = SYS_KEYBOARD_2x2;
	end
end

// --------------------------------------------------------------------
// 1 秒脈衝生成器
// --------------------------------------------------------------------
reg [31:0] sys_timer;
reg one_sec_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sys_timer     <= 32'd0;
		one_sec_pulse <= 1'b0;
	end else begin
		if (sys_timer >= CLK_FREQ - 1) begin
			sys_timer     <= 32'd0;
			one_sec_pulse <= 1'b1;
		end else begin
			sys_timer     <= sys_timer + 32'd1;
			one_sec_pulse <= 1'b0;
		end
	end
end



reg key_pressed_2x2_d1, key_pressed_3x3_d1;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) key_pressed_2x2_d1 <= 1'b0;
    else        key_pressed_2x2_d1 <= KEY_Pressed_3x3;
	 if (!rst_n) key_pressed_3x3_d1 <= 1'b0;
    else        key_pressed_3x3_d1 <= KEY_Pressed_3x3;
end

wire key_pressed_2x2_pulse = KEY_Pressed_2x2 && !key_pressed_2x2_d1;
wire key_pressed_3x3_pulse = KEY_Pressed_3x3 && !key_pressed_3x3_d1; // 取得按下瞬間脈衝


// --------------------------------------------------------------------
// 搖桿邊緣脈衝偵測器
// --------------------------------------------------------------------
reg joy_z_d1;
wire joy_z_pulse;
reg integration_active; // 1: 解鎖跟隨搖桿, 0: 鎖定數值

wire joystick_up    = (joy_y < 1000);
wire joystick_down  = (joy_y > 10000);
wire joystick_right = (joy_x > 10000);
wire joystick_left  = (joy_x < 1000);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        joy_z_d1 <= 1'b0;
    end else begin
        joy_z_d1 <= joy_z;
    end
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

wire joy_up_pulse    = joystick_up    && !joystick_up_d1;
wire joy_down_pulse  = joystick_down  && !joystick_down_d1;
wire joy_left_pulse  = joystick_left  && !joystick_left_d1;
wire joy_right_pulse = joystick_right && !joystick_right_d1;

// --------------------------------------------------------------------
// 主邏輯匯總控制區塊 (單一順序驅動關鍵暫存器)
// --------------------------------------------------------------------
reg [4:0] cmd_seq;
reg [2:0] lcd_timer;
reg [3:0] coordinate_x_axis;
reg [3:0] coordinate_y_axis;
reg [2:0] prev_system_state; 

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		prev_system_state   <= SYS_IDLE;
		send_en <= 1'b0;
	end else begin
		prev_system_state <= current_system_state;
		
		// 偵測狀態切換瞬間，初始化參數
		if (current_system_state != prev_system_state) begin
			
		end else begin
			// 狀態運作主程序
			case (current_system_state)	
				SYS_KEYBOARD_3x3: begin
					send_en <= 1'b0;
					if (key_pressed_3x3_pulse) begin
						case (KEY_3x3)
							4'd0: send_data_reg <= "Num:0\r\n";
							4'd1: send_data_reg <= "Num:1\r\n";
							4'd2: send_data_reg <= "Num:2\r\n";
							4'd3: send_data_reg <= "Num:3\r\n";
							4'd4: send_data_reg <= "Num:4\r\n";
							4'd5: send_data_reg <= "Num:5\r\n";
							4'd6: send_data_reg <= "Num:6\r\n";
							4'd7: send_data_reg <= "Num:7\r\n";
							4'd8: send_data_reg <= "Num:8\r\n";
							default: send_data_reg <= "Num:?\r\n";
						endcase
						send_en <= 1'b1; // 發送 1 個週期的 Pulse
					end
				end
				
				SYS_KEYBOARD_2x2: begin
					send_en <= 1'b0;
					if (key_pressed_2x2_pulse) begin
						case (KEY_2x2)
							4'd0: send_data_reg <= "Num:PB[0]\r\n";
							4'd1: send_data_reg <= "Num:PB[1]\r\n";
							4'd2: send_data_reg <= "Num:PB[2]\r\n";
							4'd3: send_data_reg <= "Num:PB[3]\r\n";
							default: send_data_reg <= "Num:?\r\n";
						endcase
						send_en <= 1'b1; // 發送 1 個週期的 Pulse
					end
				end
			endcase
		end
	end
end

// --------------------------------------------------------------------
// 色彩常數與 WS2812B Framebuffer 畫面合成區塊 (組合邏輯)
// --------------------------------------------------------------------
localparam COLOR_RED    = 16'hF800;
localparam COLOR_GREEN  = 16'h07E0;
localparam COLOR_BLUE   = 16'h001F;
localparam COLOR_YELLOW = 16'hFFE0;
localparam COLOR_CYAN   = 16'h07FF;
localparam COLOR_WHITE  = 16'hFFFF;
localparam COLOR_BLACK  = 16'h0000;

localparam COLOR_OFF      = 24'h00_00_00;
localparam COLOR_WS_RED   = 24'h00_1F_00;
localparam COLOR_WS_GREEN = 24'h1F_00_00;
localparam COLOR_WS_BLUE  = 24'h00_00_1F;

endmodule