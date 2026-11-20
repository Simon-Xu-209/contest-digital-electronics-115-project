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
	
	output reg  [3:0]  previous_system_state, current_system_state, next_system_state,
	output reg  [31:0] system_timer,
	
	output reg [63:0] seven_segment_chars,
	
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
reg one_sec_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		system_timer     <= 32'd0;
		one_sec_pulse <= 1'b0;
	end else begin
		if (system_timer >= CLK_FREQ - 1) begin
			system_timer     <= 32'd0;
			one_sec_pulse <= 1'b1;
		end else begin
			system_timer     <= system_timer + 32'd1;
			one_sec_pulse <= 1'b0;
		end
	end
end



// --------------------------------------------------------------------
// 主邏輯匯總控制區塊 (單一順序驅動關鍵暫存器)
// --------------------------------------------------------------------
reg [3:0] coordinate_x_axis;
reg [3:0] coordinate_y_axis;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		previous_system_state   <= SYS_IDLE;
	end else begin
		previous_system_state <= current_system_state;
		
		// 偵測狀態切換瞬間，初始化參數
		if (current_system_state != previous_system_state) begin
			
		end else begin
			// 狀態運作主程序
			case (current_system_state)	
				default: ;
			endcase
		end
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		WiFi_send_types <= 4'd0;
		start_send      <= 1'b0;
	end else begin
		if (KEY_Pressed_3x3_falling) begin
			case(KEY_3x3_d2)
				4'd13, 4'd14, 4'd14: WiFi_send_types <= 4'd15;
				default: WiFi_send_types <= KEY_3x3_d2;
			endcase
			start_send <= 1'b1;
		end else if (KEY_Pressed_2x2_falling) begin
			case(KEY_2x2_d2)
				3'd0:    WiFi_send_types <= 4'd9;
				3'd1:    WiFi_send_types <= 4'd10;
				3'd2:    WiFi_send_types <= 4'd11;
				3'd3:    WiFi_send_types <= 4'd12;
				default: WiFi_send_types <= 4'd15;
			endcase
			start_send <= 1'b1;
		end
		
		if (start_send_ack) begin // 將 start_send 歸零
			WiFi_send_types <= 4'd0;
			start_send      <= 1'b0;
		end
	end
end

endmodule