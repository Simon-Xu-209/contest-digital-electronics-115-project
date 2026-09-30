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

	output reg           ws_draw_en,
	output wire [1535:0] ws_led_grb_data,

	output wire                    send_en,
	output wire [3:0]              send_target_id,
	output wire [8*MAX_TX_LEN-1:0] send_data_reg,
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
          SYS_TFT_LCD      = 3'd2,
          SYS_WiFi_CONNECT = 3'd3,
          SYS_JOYSTICK     = 3'd4,
          SYS_INTEGRATION  = 3'd5;

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
// 走馬燈動畫內部暫存器
// --------------------------------------------------------------------
reg [5:0] anim_head_idx;
reg [23:0] anim_timer;
reg animation_done;
parameter ANIM_SPEED = (CLK_FREQ / 10 * 3); // 約 100ms 移動一格

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
		seven_segment_chars <= {8{8'h80 | "8"}};
		ws_draw_en          <= 1'b0;
		cmd_seq             <= 5'd0;
		lcd_cmd_valid       <= 1'b0;
		prev_system_state   <= SYS_IDLE;
		lcd_timer           <= 3'd0;
		coordinate_x_axis   <= 4'd0;
		coordinate_y_axis   <= 4'd1;
		animation_done      <= 1'b0;
		anim_head_idx       <= 6'd0;
		anim_timer          <= 24'd0;
		integration_active  <= 1'b0;
	end else begin
		lcd_cmd_valid     <= 1'b0; // 預設清除觸發脈衝
		ws_draw_en        <= 1'b0; // 預設清除繪圖脈衝
		prev_system_state <= current_system_state;
		
		// 偵測狀態切換瞬間，初始化參數
		if (current_system_state != prev_system_state) begin
			cmd_seq <= 5'd0;

			if (current_system_state == SYS_TFT_LCD) begin
				lcd_timer         <= 3'd0;
				coordinate_x_axis <= 4'd0;
				coordinate_y_axis <= 4'd1;
			end else if (current_system_state == SYS_WiFi_CONNECT) begin
				lcd_timer         <= 3'd0;
				coordinate_x_axis <= 4'd0;
				coordinate_y_axis <= 4'd0;
			end else if (current_system_state == SYS_JOYSTICK) begin
				lcd_timer          <= 3'd0;
				coordinate_x_axis  <= 4'd4;
				coordinate_y_axis  <= 4'd4;
				animation_done     <= 1'b0;
				anim_head_idx      <= 6'd0;
				anim_timer         <= 24'd0;
				integration_active <= 1'b0;
				ws_draw_en         <= 1'b1; // 初次繪製動畫第一頁
			end else if (current_system_state == SYS_INTEGRATION) begin
				lcd_timer          <= 3'd0;
				coordinate_x_axis  <= 4'd0;
				coordinate_y_axis  <= 4'd0;
				integration_active <= 1'b0;
			end
		end else begin
			// 狀態運作主程序
			case (current_system_state)
			
				SYS_TFT_LCD: begin
					ws_draw_en          <= 1'b1;
					seven_segment_chars <= 64'd0;
					
					if (one_sec_pulse) begin
						if (lcd_timer < 6)
							lcd_timer <= lcd_timer + 3'd1;
						else
							lcd_timer <= 3'd0;
						
						if (coordinate_y_axis < 8) begin
							coordinate_y_axis <= coordinate_y_axis + 4'd1;
						end else begin
							coordinate_y_axis <= 4'd1;
							if (coordinate_x_axis >= 4'd8)
								coordinate_x_axis <= 4'd0;
							else
								coordinate_x_axis <= coordinate_x_axis + 4'd1;
						end
					end
					
					lcd_cmd_valid <= 1'b1;
					case (cmd_seq)
						5'd0: begin
							lcd_cmd_type  <= 4'd0;
							lcd_cmd_color <= COLOR_BLACK;
							cmd_seq       <= 5'd1;
						end
						5'd1: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd0; 
							lcd_cmd_ascii <= "A" + (lcd_timer * 4); 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd6;  lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd2; 
						end
						5'd2: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd1; 
							lcd_cmd_ascii <= "B" + (lcd_timer * 4); 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd36; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd3; 
						end
						5'd3: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd2; 
							lcd_cmd_ascii <= (lcd_timer < 6) ? "C" + (lcd_timer * 4) : " "; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd66; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd4; 
						end
						5'd4: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd3; 
							lcd_cmd_ascii <= (lcd_timer < 6) ? "D" + (lcd_timer * 4) : " "; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd96; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd5; 
						end
						5'd5: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd4; 
							lcd_cmd_ascii <= "["; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd19; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd6; 
						end
						5'd6: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd5; 
							lcd_cmd_ascii <= coordinate_x_axis + "0"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd35; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd7; 
						end
						5'd7: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd6; 
							lcd_cmd_ascii <= ","; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd51; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd8; 
						end
						5'd8: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd7; 
							lcd_cmd_ascii <= coordinate_y_axis + "0"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd67; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd9; 
						end
						5'd9: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd8; 
							lcd_cmd_ascii <= "]"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd83; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd1; 
						end
						default: cmd_seq <= 5'd0;
					endcase
				end
				
				SYS_WiFi_CONNECT: begin
					ws_draw_en    <= 1'b1;
					lcd_cmd_valid <= 1'b1;
					lcd_cmd_type  <= 4'd0;
					lcd_cmd_color <= COLOR_WHITE;
				end
				
				SYS_JOYSTICK: begin
					if (!animation_done) begin
						// --------------------------------------------
						// 走馬燈動畫階段
						// --------------------------------------------
						if (anim_timer >= ANIM_SPEED - 1) begin
							anim_timer <= 24'd0;
							if (anim_head_idx >= 6'd63) begin
								animation_done <= 1'b1; // 動畫結束
								ws_draw_en     <= 1'b1; // 刷新最後畫面切換為搖桿圖案
							end else begin
								anim_head_idx <= anim_head_idx + 6'd1;
								ws_draw_en    <= 1'b1; // 觸發 WS2812B 刷新
							end
						end else begin
							anim_timer <= anim_timer + 24'd1;
						end
					end else begin
						// --------------------------------------------
						// 搖桿操控 2x2 紅色方塊階段
						// --------------------------------------------
						if (joy_z_pulse) begin
							if (!integration_active) begin
								integration_active <= 1'b1;
								coordinate_x_axis  <= 4'd4;
								coordinate_y_axis  <= 4'd4;
								ws_draw_en         <= 1'b1;
							end else begin
								integration_active <= 1'b0;
							end
						end else if (integration_active) begin
							if (joy_up_pulse && (coordinate_y_axis < 4'd7)) begin
								coordinate_y_axis <= coordinate_y_axis + 4'd1;
								ws_draw_en        <= 1'b1;
							end else if (joy_down_pulse && (coordinate_y_axis > 4'd1)) begin
								coordinate_y_axis <= coordinate_y_axis - 4'd1;
								ws_draw_en        <= 1'b1;
							end
							
							if (joy_right_pulse && (coordinate_x_axis > 4'd1)) begin
								coordinate_x_axis <= coordinate_x_axis - 4'd1;
								ws_draw_en        <= 1'b1;
							end else if (joy_left_pulse && (coordinate_x_axis < 4'd7)) begin
								coordinate_x_axis <= coordinate_x_axis + 4'd1;
								ws_draw_en        <= 1'b1;
							end
						end
					end
				end
				
				SYS_INTEGRATION: begin
					ws_draw_en    <= 1'b0;
					lcd_cmd_valid <= 1'b1;
					case (cmd_seq)
						5'd0: begin
							lcd_cmd_type  <= 4'd0;
							lcd_cmd_color <= COLOR_BLACK;
							cmd_seq       <= 5'd1;
						end
						5'd1: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd0; 
							lcd_cmd_ascii <= "A"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd6;  lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd2; 
						end
						5'd2: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd1; 
							lcd_cmd_ascii <= "B"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd36; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd3; 
						end
						5'd3: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd2; 
							lcd_cmd_ascii <= "C"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd66; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd4; 
						end
						5'd4: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd3; 
							lcd_cmd_ascii <= "D"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd96; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd5; 
						end
						5'd5: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd4; 
							lcd_cmd_ascii <= "["; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd19; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd6; 
						end
						5'd6: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd5; 
							lcd_cmd_ascii <= coordinate_x_axis + "0"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd35; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd7; 
						end
						5'd7: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd6; 
							lcd_cmd_ascii <= ","; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd51; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd8; 
						end
						5'd8: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd7; 
							lcd_cmd_ascii <= coordinate_y_axis + "0"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd67; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd9; 
						end
						5'd9: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd8; 
							lcd_cmd_ascii <= "]"; 
							lcd_cmd_scale <= 4'd2; lcd_cmd_x <= 8'd83; lcd_cmd_y <= 8'd65; lcd_cmd_color <= COLOR_BLUE; 
							cmd_seq <= 5'd1; 
						end
						default: cmd_seq <= 5'd0;
					endcase
					
					if (joy_z_pulse) begin
						if (!integration_active) begin
							integration_active <= 1'b1;
							coordinate_x_axis  <= 4'd1;
							coordinate_y_axis  <= 4'd1;
						end else begin
							integration_active <= 1'b0;
						end
					end else if (integration_active) begin
						if (joy_up_pulse && (coordinate_y_axis < 4'd7)) begin
							coordinate_y_axis <= coordinate_y_axis + 4'd1;
							ws_draw_en        <= 1'b1;
						end else if (joy_down_pulse && (coordinate_y_axis > 4'd1)) begin
							coordinate_y_axis <= coordinate_y_axis - 4'd1;
							ws_draw_en        <= 1'b1;
						end
						if (joy_right_pulse && (coordinate_x_axis > 4'd1)) begin
							coordinate_x_axis <= coordinate_x_axis - 4'd1;
							ws_draw_en        <= 1'b1;
						end else if (joy_left_pulse && (coordinate_x_axis < 4'd7)) begin
							coordinate_x_axis <= coordinate_x_axis + 4'd1;
							ws_draw_en        <= 1'b1;
						end
					end
				end
				
				default: begin end
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

reg [1535:0] frame_buffer;
assign ws_led_grb_data = frame_buffer;
assign send_en         = 1'b0;

integer x, y;
reg [3:0] cur_x, cur_y;

always @(*) begin
	frame_buffer = {1536{1'b0}}; // 預設全黑
	
	if (current_system_state == SYS_JOYSTICK) begin
		if (!animation_done) begin
			// 走馬燈 RGB 三色列車
			if (anim_head_idx < 64)
				frame_buffer[anim_head_idx * 24 +: 24] = COLOR_WS_RED;
				
			if (anim_head_idx >= 1 && (anim_head_idx - 1) < 64)
				frame_buffer[(anim_head_idx - 1) * 24 +: 24] = COLOR_WS_GREEN;
				
			if (anim_head_idx >= 2 && (anim_head_idx - 2) < 64)
				frame_buffer[(anim_head_idx - 2) * 24 +: 24] = COLOR_WS_BLUE;

		end else begin
			// 動畫播放完畢：2x2 紅色方塊跟隨搖桿移動
			cur_x = coordinate_x_axis;
			cur_y = coordinate_y_axis;

			for (y = 0; y < 8; y = y + 1) begin
				for (x = 0; x < 8; x = x + 1) begin
					if ((x >= cur_x - 1) && (x <= cur_x) &&
					    (y >= cur_y - 1) && (y <= cur_y)) begin
						frame_buffer[(y * 8 + x) * 24 +: 24] = COLOR_WS_RED;
					end
				end
			end
		end
	end else if (current_system_state == SYS_INTEGRATION) begin
		if (!integration_active && (coordinate_x_axis == 4'd0) && (coordinate_y_axis == 4'd0)) begin
			cur_x = 4'd1;
			cur_y = 4'd1;
		end else begin
			cur_x = coordinate_x_axis;
			cur_y = coordinate_y_axis;
		end

		for (y = 0; y < 8; y = y + 1) begin
			for (x = 0; x < 8; x = x + 1) begin
				if ((x >= cur_x - 1) && (x <= cur_x) &&
					(y >= cur_y - 1) && (y <= cur_y)) begin
					frame_buffer[(y * 8 + x) * 24 +: 24] = COLOR_WS_RED;
				end
			end
		end
	end
end

endmodule