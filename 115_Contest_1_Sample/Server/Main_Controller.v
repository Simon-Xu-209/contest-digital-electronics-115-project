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
	
	case (current_system_state)
		default: begin end
	endcase
	
	if	(switch_8bit[1:0] == 2'b00) begin
		next_system_state = SYS_TFT_LCD;
	end else if	(switch_8bit[1:0] == 2'b01) begin
		next_system_state = SYS_WiFi_CONNECT;
	end else if	(switch_8bit[1:0] == 2'b10) begin
		next_system_state = SYS_JOYSTICK;
	end else if	(switch_8bit[1:0] == 2'b11) begin
		next_system_state = SYS_INTEGRATION;
	end else begin
		next_system_state = current_system_state;
	end
end



// 產生 1 秒到達的單時脈脈衝 Signal
reg [31:0] sys_timer;
reg one_sec_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sys_timer     <= 32'd0;
		one_sec_pulse <= 1'b0;
	end else begin
		if (sys_timer >= CLK_FREQ - 1) begin
			sys_timer     <= 32'd0;
			one_sec_pulse <= 1'b1; // 每秒拉高 1 個週期
		end else begin
			sys_timer     <= sys_timer + 32'd1;
			one_sec_pulse <= 1'b0;
		end
	end
end

// --------------------------------------------------------------------
// LCD 繪圖 API 發送狀態機 (Command Pipeline)
// --------------------------------------------------------------------
reg [4:0]  cmd_seq;
reg [2:0] lcd_timer;
reg [3:0] coordinate_x_axis;
reg [3:0] coordinate_y_axis;
reg [2:0] prev_system_state; // 記錄上一個 Clock 的系統模式，用來偵測「模式切換瞬間」

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= {8{8'h80 | "8"}}; // 七段顯示器預設值 (全亮)
		ws_draw_en          <= 1'b0;
		cmd_seq             <= 5'd0;
		lcd_cmd_valid       <= 1'b0;
		prev_system_state   <= SYS_IDLE;
		lcd_timer           <= 3'd0;
		coordinate_x_axis   <= 4'd0;
		coordinate_y_axis   <= 4'd1;
	end else begin
		lcd_cmd_valid     <= 1'b0; // 預設清除觸發脈衝
		prev_system_state <= current_system_state; // 更新上一次模式記錄
		
		// 判斷是否為「剛切換模式的瞬間」
		if (current_system_state != prev_system_state) begin
			cmd_seq <= 5'd0; // 切換模式時，將指令步驟重置為 0 (準備設定背景顏色)

			// 若剛切換進 SYS_TFT_LCD 模式，重置計數器與座標
			if (current_system_state == SYS_TFT_LCD) begin
				lcd_timer         <= 3'd0;
				coordinate_x_axis <= 4'd0;
				coordinate_y_axis <= 4'd1;
			end else if (current_system_state == SYS_WiFi_CONNECT) begin
				lcd_timer         <= 3'd0;
				coordinate_x_axis <= 4'd0;
				coordinate_y_axis <= 4'd0;
			end else if (current_system_state == SYS_JOYSTICK) begin
				lcd_timer         <= 3'd0;
				coordinate_x_axis <= 4'd0;
				coordinate_y_axis <= 4'd0;
			end else if (current_system_state == SYS_INTEGRATION) begin
				lcd_timer          <= 3'd0;
				coordinate_x_axis  <= 4'd0; // 剛進入模式時，預設顯示 [0,0]
				coordinate_y_axis  <= 4'd0;
				integration_active <= 1'b0; // 預設為鎖定/未觸發狀態
			end
			
			
		end else begin
			case (current_system_state)
			
				SYS_TFT_LCD: begin
					ws_draw_en    <= 1'b1;
					
					seven_segment_chars <= 64'd0; // 將七段顯示器清空
					
					if (one_sec_pulse) begin
						if (lcd_timer < 6) begin
							lcd_timer <= lcd_timer + 3'd1;
						end else if (lcd_timer >= 6) begin
							lcd_timer <= 3'd0;
						end
						
						if (coordinate_y_axis < 8) begin
							coordinate_y_axis <= coordinate_y_axis + 4'd1;
						end else begin
							coordinate_y_axis <= 4'd1;
							if (coordinate_x_axis >= 4'd8) begin
								coordinate_x_axis <= 4'd0;
							end else if (coordinate_y_axis >= 4'd8) begin
								coordinate_x_axis <= coordinate_x_axis + 4'd1;
							end
						end
					end
					
					lcd_cmd_valid <= 1'b1;
					case (cmd_seq)
					
						5'd0: begin
							lcd_cmd_type  <= 4'd0;
							lcd_cmd_color <= COLOR_BLACK;
							cmd_seq       <= 5'd1; // 設完背景後切換到文字刷頁步驟 1
						end
						
						// --- 第一列: "ABCD" ---
						5'd1:begin 
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
						
						// --- 第二列: "[0,1]" ---
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
							cmd_seq <= 5'd1; // 刷新完後回到 5'd1，實現循環刷新，但不重複執行 5'd0 的背景設定
						end
						
						default: cmd_seq <= 5'd0;
					endcase
				end
				
				SYS_WiFi_CONNECT: begin
					ws_draw_en    <= 1'b1;
					
					lcd_cmd_valid <= 1'b1;
					lcd_cmd_type  <= 4'd0;  // 更新背景指令
					lcd_cmd_color <= COLOR_WHITE;
				end
				
				SYS_JOYSTICK: begin
				
					if (animation_done) begin
						if (joy_z_pulse) begin
							if (!integration_active) begin
								// 第一次按下：解鎖並強制定位在 [1,1] (WS2812B 右下角)
								integration_active <= 1'b1;
								coordinate_x_axis  <= 4'd4;
								coordinate_y_axis  <= 4'd4;
							end else begin
								// 第二次按下：重新鎖定數值（保留當前 x, y）
								integration_active <= 1'b0;
							end
						end else if (integration_active) begin // 只有在 integration_active == 1 時，才跟隨搖桿改變座標
							if (joy_up_pulse && (coordinate_y_axis < 4'd7)) begin
								coordinate_y_axis <= coordinate_y_axis + 4'd1;
								ws_draw_en <= 1'b1;
							end else if (joy_down_pulse && (coordinate_y_axis > 4'd1)) begin
								coordinate_y_axis <= coordinate_y_axis - 4'd1;
								ws_draw_en <= 1'b1;
							end
							if (joy_right_pulse && (coordinate_x_axis > 4'd1)) begin
								coordinate_x_axis <= coordinate_x_axis - 4'd1;
								ws_draw_en <= 1'b1;
							end else if (joy_left_pulse && (coordinate_x_axis < 4'd7)) begin
								coordinate_x_axis <= coordinate_x_axis + 4'd1;
								ws_draw_en <= 1'b1;
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
							cmd_seq       <= 5'd1; // 設完背景後切換到文字刷頁步驟 1
						end
						
						// --- 第一列: "ABCD" ---
						5'd1:begin 
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
							lcd_cmd_ascii <="C"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd66; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd4; 
						end
						5'd4: begin 
							lcd_cmd_type <= 4'd1; lcd_cmd_char_index <= 8'd3; 
							lcd_cmd_ascii <= "D"; 
							lcd_cmd_scale <= 4'd3; lcd_cmd_x <= 8'd96; lcd_cmd_y <= 8'd10; lcd_cmd_color <= COLOR_RED; 
							cmd_seq <= 5'd5; 
						end
						
						// --- 第二列: "[0,1]" ---
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
							cmd_seq <= 5'd1; // 刷新完後回到 5'd1，實現循環刷新，但不重複執行 5'd0 的背景設定
						end
						
						default: cmd_seq <= 5'd0;
					endcase
					
					// ------------------------------------------------
					// Z 軸按下的開關/鎖定邏輯
					// ------------------------------------------------
					if (joy_z_pulse) begin
						if (!integration_active) begin
							// 第一次按下：解鎖並強制定位在 [1,1] (WS2812B 右下角)
							integration_active <= 1'b1;
							coordinate_x_axis  <= 4'd1;
							coordinate_y_axis  <= 4'd1;
						end else begin
							// 第二次按下：重新鎖定數值（保留當前 x, y）
							integration_active <= 1'b0;
						end
					end else if (integration_active) begin // 只有在 integration_active == 1 時，才跟隨搖桿改變座標
						if (joy_up_pulse && (coordinate_y_axis < 4'd7)) begin
							coordinate_y_axis <= coordinate_y_axis + 4'd1;
							ws_draw_en <= 1'b1;
						end else if (joy_down_pulse && (coordinate_y_axis > 4'd1)) begin
							coordinate_y_axis <= coordinate_y_axis - 4'd1;
							ws_draw_en <= 1'b1;
						end
						if (joy_right_pulse && (coordinate_x_axis > 4'd1)) begin
							coordinate_x_axis <= coordinate_x_axis - 4'd1;
							ws_draw_en <= 1'b1;
						end else if (joy_left_pulse && (coordinate_x_axis < 4'd7)) begin
							coordinate_x_axis <= coordinate_x_axis + 4'd1;
							ws_draw_en <= 1'b1;
						end
					end
				end
				
				default: begin end
			endcase
		end
	end
end



// RGB565 色彩常數
localparam COLOR_RED    = 16'hF800;
localparam COLOR_GREEN  = 16'h07E0;
localparam COLOR_BLUE   = 16'h001F;
localparam COLOR_YELLOW = 16'hFFE0;
localparam COLOR_CYAN   = 16'h07FF;
localparam COLOR_WHITE  = 16'hFFFF;
localparam COLOR_BLACK  = 16'h0000;



// --- 保留原有七段顯示器與 WS2812B 邏輯 ---
reg [1535:0] frame_buffer;
assign ws_led_grb_data = frame_buffer;

localparam COLOR_OFF = 24'h00_00_00;
localparam COLOR_WS_RED   = 24'h00_1F_00;
localparam COLOR_WS_GREEN = 24'h1F_00_00;
localparam COLOR_WS_BLUE  = 24'h00_00_1F;

assign send_en = 1'b0;

// --------------------------------------------------------------------
// WS2812B 2x2 紅色方塊動態繪製邏輯
// --------------------------------------------------------------------
integer led_idx;
reg [3:0] cur_x, cur_y; // 2x2 方塊當前基準座標
reg animation_done = 1; // WS2812B RGB 移動動畫旗標

always @(*) begin
	// 預設將 64 顆 LED 全部清空 (關閉)
	frame_buffer = {1536{1'b0}};
	
	if (current_system_state == SYS_JOYSTICK) begin
		if (!integration_active && (coordinate_x_axis == 4'd4) && (coordinate_y_axis == 4'd4)) begin
			cur_x = 4'd4;
			cur_y = 4'd4;
		end else begin
			cur_x = coordinate_x_axis;
			cur_y = coordinate_y_axis;
		end

		// 將 2x2 範圍內的 4 顆 LED ( (x, y), (x+1, y), (x, y+1), (x+1, y+1) ) 設為紅色
		for (led_idx = 0; led_idx < 64; led_idx = led_idx + 1) begin
			// 計算 8x8 矩陣的 X (0~7) 與 Y (0~7)
			if (((led_idx % 8) >= (cur_x - 1)) && ((led_idx % 8) <= cur_x) &&
				((led_idx / 8) >= (cur_y - 1)) && ((led_idx / 8) <= cur_y)) begin
				frame_buffer[led_idx*24 +: 24] = COLOR_WS_RED;
			end
		end
	end else	if (current_system_state == SYS_INTEGRATION) begin
		// 未觸發 Z 軸前 (integration_active == 0)，強制定位在右下角 [1,1]
		// 第一次按下 Z 軸解鎖或鎖定後，則跟隨 coordinate_x_axis / coordinate_y_axis
		if (!integration_active && (coordinate_x_axis == 4'd0) && (coordinate_y_axis == 4'd0)) begin
			cur_x = 4'd1;
			cur_y = 4'd1;
		end else begin
			cur_x = coordinate_x_axis;
			cur_y = coordinate_y_axis;
		end

		// 將 2x2 範圍內的 4 顆 LED ( (x, y), (x+1, y), (x, y+1), (x+1, y+1) ) 設為紅色
		for (led_idx = 0; led_idx < 64; led_idx = led_idx + 1) begin
			// 計算 8x8 矩陣的 X (0~7) 與 Y (0~7)
			// LED 0 代表右下角 [1,1] 區域，以此類推
			if (((led_idx % 8) >= (cur_x - 1)) && ((led_idx % 8) <= cur_x) &&
				((led_idx / 8) >= (cur_y - 1)) && ((led_idx / 8) <= cur_y)) begin
				frame_buffer[led_idx*24 +: 24] = COLOR_WS_RED;
			end
		end
	end
end



// --------------------------------------------------------------------
// Integration 模式專用控制暫存器
// --------------------------------------------------------------------
reg        joy_z_d1;
wire       joy_z_pulse;
reg        integration_active; // 1: 解鎖跟隨搖桿, 0: 鎖定數值 / 預設模式

wire joystick_up    = (joy_y < 1000);
wire joystick_down  = (joy_y > 10000);
wire joystick_right = (joy_x > 10000);
wire joystick_left  = (joy_x < 1000);

// z 軸正邊緣觸發脈衝 (0 -> 1)
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        joy_z_d1 <= 1'b0;
    end else begin
        joy_z_d1 <= joy_z;
    end
end
assign joy_z_pulse = joy_z && !joy_z_d1;

// 搖桿方向採樣與脈衝（防止過快滾動）
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

endmodule