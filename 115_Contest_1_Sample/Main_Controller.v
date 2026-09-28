module Main_Controller #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN = 32
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

	output wire [63:0] seven_segment_chars,

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

// RGB565 色彩常數
localparam COLOR_RED    = 16'hF800;
localparam COLOR_GREEN  = 16'h07E0;
localparam COLOR_YELLOW = 16'hFFE0;
localparam COLOR_CYAN   = 16'h07FF;
localparam COLOR_WHITE  = 16'hFFFF;
localparam COLOR_BLACK  = 16'h0000;

// --------------------------------------------------------------------
// BCD 碼轉轉換 (16-bit Binary to 5-digit BCD)
// --------------------------------------------------------------------
function [19:0] bin16_to_bcd;
	input [15:0] bin;
	integer i;
	reg [19:0] bcd;
	begin
		bcd = 20'b0;
		for (i = 15; i >= 0; i = i - 1) begin
			if (bcd[3:0]   >= 5) bcd[3:0]   = bcd[3:0]   + 3;
			if (bcd[7:4]   >= 5) bcd[7:4]   = bcd[7:4]   + 3;
			if (bcd[11:8]  >= 5) bcd[11:8]  = bcd[11:8]  + 3;
			if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
			if (bcd[19:16] >= 5) bcd[19:16] = bcd[19:16] + 3;
			bcd = {bcd[18:0], bin[i]};
		end
		bin16_to_bcd = bcd;
	end
endfunction

wire [19:0] bcd_x = bin16_to_bcd(joy_x);
wire [19:0] bcd_y = bin16_to_bcd(joy_y);

// --------------------------------------------------------------------
// LCD 繪圖 API 發送狀態機 (Command Pipeline)
// --------------------------------------------------------------------
reg [4:0]  cmd_seq;
reg [15:0] prev_joy_x, prev_joy_y;
reg        prev_joy_z;
reg [1:0]  prev_sw_mode;

// 監聽模式與數值變更，觸發刷新
wire sw_mode_changed = (switch_8bit[1:0] != prev_sw_mode);
wire joy_changed     = (joy_x != prev_joy_x) || (joy_y != prev_joy_y) || (joy_z != prev_joy_z);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		cmd_seq       <= 5'd0;
		lcd_cmd_valid <= 1'b0;
		prev_joy_x    <= 16'hFFFF;
		prev_joy_y    <= 16'hFFFF;
		prev_joy_z    <= 1'b0;
		prev_sw_mode  <= 2'b11;
	end else begin
		lcd_cmd_valid <= 1'b0; // 預設清除觸發脈衝

		// 開關切換或數值變化時，啟動指令序列
		if (sw_mode_changed || (switch_8bit[1:0] == 2'b01 && joy_changed)) begin
			cmd_seq      <= 5'd1;
			prev_sw_mode <= switch_8bit[1:0];
			prev_joy_x   <= joy_x;
			prev_joy_y   <= joy_y;
			prev_joy_z   <= joy_z;
		end else if (cmd_seq > 0) begin
			case (switch_8bit[1:0])
				// ----------------------------------------------------
				// 模式 01：在畫面上方顯示 X, Y, Z 軸狀態
				// ----------------------------------------------------
				2'b01: begin
					lcd_cmd_valid <= 1'b1;
					lcd_cmd_type  <= 4'd1;  // 更新字元指令
					lcd_cmd_scale <= 4'd1;  // 1 倍大小 (8x16 像素)

					case (cmd_seq)
						// --- Y=5: 第一行 "X: [萬][千][百][十][個]" ---
						5'd1:  begin lcd_cmd_char_index <= 8'd0;  lcd_cmd_ascii <= "X";                   lcd_cmd_x <= 8'd8;  lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_YELLOW; end
						5'd2:  begin lcd_cmd_char_index <= 8'd1;  lcd_cmd_ascii <= ":";                   lcd_cmd_x <= 8'd16; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_YELLOW; end
						5'd3:  begin lcd_cmd_char_index <= 8'd2;  lcd_cmd_ascii <= {4'h3, bcd_x[19:16]}; lcd_cmd_x <= 8'd32; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_WHITE;  end
						5'd4:  begin lcd_cmd_char_index <= 8'd3;  lcd_cmd_ascii <= {4'h3, bcd_x[15:12]}; lcd_cmd_x <= 8'd40; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_WHITE;  end
						5'd5:  begin lcd_cmd_char_index <= 8'd4;  lcd_cmd_ascii <= {4'h3, bcd_x[11:8]};  lcd_cmd_x <= 8'd48; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_WHITE;  end
						5'd6:  begin lcd_cmd_char_index <= 8'd5;  lcd_cmd_ascii <= {4'h3, bcd_x[7:4]};   lcd_cmd_x <= 8'd56; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_WHITE;  end
						5'd7:  begin lcd_cmd_char_index <= 8'd6;  lcd_cmd_ascii <= {4'h3, bcd_x[3:0]};   lcd_cmd_x <= 8'd64; lcd_cmd_y <= 8'd5;  lcd_cmd_color <= COLOR_WHITE;  end

						// --- Y=25: 第二行 "Y: [萬][千][百][十][個]" ---
						5'd8:  begin lcd_cmd_char_index <= 8'd7;  lcd_cmd_ascii <= "Y";                   lcd_cmd_x <= 8'd8;  lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_GREEN;  end
						5'd9:  begin lcd_cmd_char_index <= 8'd8;  lcd_cmd_ascii <= ":";                   lcd_cmd_x <= 8'd16; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_GREEN;  end
						5'd10: begin lcd_cmd_char_index <= 8'd9;  lcd_cmd_ascii <= {4'h3, bcd_y[19:16]}; lcd_cmd_x <= 8'd32; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_WHITE;  end
						5'd11: begin lcd_cmd_char_index <= 8'd10; lcd_cmd_ascii <= {4'h3, bcd_y[15:12]}; lcd_cmd_x <= 8'd40; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_WHITE;  end
						5'd12: begin lcd_cmd_char_index <= 8'd11; lcd_cmd_ascii <= {4'h3, bcd_y[11:8]};  lcd_cmd_x <= 8'd48; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_WHITE;  end
						5'd13: begin lcd_cmd_char_index <= 8'd12; lcd_cmd_ascii <= {4'h3, bcd_y[7:4]};   lcd_cmd_x <= 8'd56; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_WHITE;  end
						5'd14: begin lcd_cmd_char_index <= 8'd13; lcd_cmd_ascii <= {4'h3, bcd_y[3:0]};   lcd_cmd_x <= 8'd64; lcd_cmd_y <= 8'd25; lcd_cmd_color <= COLOR_WHITE;  end

						// --- Y=45: 第三行 "Z: ON" / "Z: OFF" ---
						5'd15: begin lcd_cmd_char_index <= 8'd14; lcd_cmd_ascii <= "Z";                   lcd_cmd_x <= 8'd8;  lcd_cmd_y <= 8'd45; lcd_cmd_color <= COLOR_CYAN;   end
						5'd16: begin lcd_cmd_char_index <= 8'd15; lcd_cmd_ascii <= ":";                   lcd_cmd_x <= 8'd16; lcd_cmd_y <= 8'd45; lcd_cmd_color <= COLOR_CYAN;   end
						5'd17: begin lcd_cmd_char_index <= 8'd16; lcd_cmd_ascii <= joy_z ? "O" : "O";     lcd_cmd_x <= 8'd32; lcd_cmd_y <= 8'd45; lcd_cmd_color <= joy_z ? COLOR_RED : COLOR_WHITE; end
						5'd18: begin lcd_cmd_char_index <= 8'd17; lcd_cmd_ascii <= joy_z ? "N" : "F";     lcd_cmd_x <= 8'd40; lcd_cmd_y <= 8'd45; lcd_cmd_color <= joy_z ? COLOR_RED : COLOR_WHITE; end
						5'd19: begin lcd_cmd_char_index <= 8'd18; lcd_cmd_ascii <= joy_z ? " " : "F";     lcd_cmd_x <= 8'd48; lcd_cmd_y <= 8'd45; lcd_cmd_color <= joy_z ? COLOR_RED : COLOR_WHITE; end

						default: cmd_seq <= 5'd0; // 發送完成，回到 Idle
					endcase

					if (cmd_seq < 5'd19) cmd_seq <= cmd_seq + 1'b1;
					else cmd_seq <= 5'd0;
				end

				// ----------------------------------------------------
				// 非 01 模式：清空 LCD 畫面 (CMD 0)
				// ----------------------------------------------------
				default: begin
					lcd_cmd_valid <= 1'b1;
					lcd_cmd_type  <= 4'd0;         // 清空畫面
					lcd_cmd_color <= COLOR_BLACK;
					cmd_seq       <= 5'd0;         // 清空只需 1 個週期
				end
			endcase
		end
	end
end

// --- 保留原有七段顯示器與 WS2812B 邏輯 ---
reg [1535:0] frame_buffer;
assign ws_led_grb_data = frame_buffer;

localparam COLOR_OFF = 24'h00_00_00;
localparam COLOR_WS_RED   = 24'h00_1F_00;
localparam COLOR_WS_GREEN = 24'h1F_00_00;
localparam COLOR_WS_BLUE  = 24'h00_00_1F;

reg [7:0] switch_d1;
reg       key_2x2_d1;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		switch_d1    <= 8'd0;
		key_2x2_d1   <= 1'b0;
		ws_draw_en   <= 1'b0;
		frame_buffer <= {1536{1'b0}};
	end else begin
		switch_d1  <= switch_8bit;
		key_2x2_d1 <= KEY_Pressed_2x2;

		if ((switch_8bit != switch_d1) || (KEY_Pressed_2x2 && !key_2x2_d1)) begin
			ws_draw_en <= 1'b1;
		end else begin
			ws_draw_en <= 1'b0;
	end

		case (switch_8bit[1:0])
			2'b00: frame_buffer <= {64{COLOR_OFF}};
			2'b01: frame_buffer <= {
				COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF,
				COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED,
				COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF,
				COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED,
				COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF,
				COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED,
				COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF,
				COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED, COLOR_OFF, COLOR_WS_RED
			};
			2'b10:   frame_buffer <= {64{COLOR_WS_GREEN}};
			default: frame_buffer <= {64{COLOR_WS_BLUE}};
		endcase
	end
end

assign seven_segment_chars = 64'd0;
assign send_en             = 1'b0;

endmodule