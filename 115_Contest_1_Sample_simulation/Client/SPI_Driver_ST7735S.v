// =========================================================================
// 模組名稱：SPI_Driver_ST7735S
// 功能描述：ST7735S 128x160 SPI 介面底層驅動器，負責 initialization 與逐點繪圖
// =========================================================================
module SPI_Driver_ST7735S #(
    parameter OFFSET_X = 8'd0, // 硬體 X 軸偏移 (例如某些 0.96 吋面板需 +2)
    parameter OFFSET_Y = 8'd0  // 硬體 Y 軸偏移 (例如需 +1)
)(
	input  wire        clk,          // 系統 Clock (50MHz)
	input  wire        rst_n,        // 低電位重置
	input  wire [15:0] pixel_color,  // 當前 (current_x, current_y) 點的 RGB565 顏色
	input  wire [7:0]  brightness,   // 8-bit 亮度控制 (0: 關閉, 255: 最亮)
	
	output reg  [7:0]  current_x,    // 目前掃描的 X 座標 (0~127)
	output reg  [7:0]  current_y,    // 目前掃描的 Y 座標 (0~159)
	
	// ST7735S 實體介面
	output reg         lcd_scl,
	output reg         lcd_sda,
	output reg         lcd_res,
	output reg         lcd_dc,
	output reg         lcd_cs,
	output reg         lcd_blk
);

// PWM 計數器 (50MHz / 256 約 195kHz PWM 頻率)
reg [7:0] pwm_cnt;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		pwm_cnt <= 8'd0;
		lcd_blk <= 1'b0;
	end else begin
		pwm_cnt <= pwm_cnt + 1'b1;
		// 佔空比比較：當計數器小於設定亮度時輸出高電位
		lcd_blk <= (pwm_cnt < brightness) ? 1'b1 : 1'b0;
	end
end

// --- ST7735S 控制指令碼 ---
localparam CMD_SWRESET = 8'h01;
localparam CMD_SLPOUT  = 8'h11;
localparam CMD_DISPON  = 8'h29;
localparam CMD_CASET   = 8'h2A;
localparam CMD_RASET   = 8'h2B;
localparam CMD_RAMWR   = 8'h2C;
localparam CMD_MADCTL  = 8'h36;
localparam CMD_COLMOD  = 8'h3A;

localparam ARG_COLMOD_16BIT = 8'h05;
localparam ARG_MADCTL_MX_MY = 8'hC0;

localparam LCD_WIDTH  = 8'd128;
localparam LCD_HEIGHT = 8'd160;

// --- FSM 狀態定義 ---
localparam FSM_HW_RESET  = 3'd0;
localparam FSM_INIT_CMD  = 3'd1;
localparam FSM_SEND_INIT = 3'd2;
localparam FSM_SET_AXIS  = 3'd3;
localparam FSM_SCAN_DRAW = 3'd4;

reg [2:0]  fsm_state;
reg [31:0] delay_counter;
reg [4:0]  cmd_step;
reg [7:0]  spi_tx_data;
reg [3:0]  bit_counter;
reg        clk_divider;
reg        byte_hi_lo_sel; // 16-bit 顏色高低 Byte 切換

// --- SPI 發送與初始化狀態機 ---
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		fsm_state     <= FSM_HW_RESET;
		delay_counter <= 32'd0;
		bit_counter   <= 4'd0;
		clk_divider   <= 1'b0;
		current_x     <= 8'd0;
		current_y     <= 8'd0;
		byte_hi_lo_sel<= 1'b0;
		cmd_step      <= 5'd0;

		lcd_scl       <= 1'b1;
		lcd_sda       <= 1'b0;
		lcd_res       <= 1'b1;
		lcd_dc        <= 1'b0;
		lcd_cs        <= 1'b1;
	end else begin
		lcd_cs  <= 1'b0;

		if (delay_counter > 0) begin
			delay_counter <= delay_counter - 1'b1;
		end else if (bit_counter > 0) begin
			// SPI 位元發送邏輯
			if (clk_divider == 1'b0) begin 
				lcd_scl     <= 1'b0; 
				lcd_sda     <= spi_tx_data[bit_counter - 1'b1];
				clk_divider <= 1'b1;
			end else begin 
				lcd_scl     <= 1'b1; 
				bit_counter <= bit_counter - 1'b1;
				clk_divider <= 1'b0;
			end
		end else begin
			case (fsm_state)
				FSM_HW_RESET: begin 
					lcd_res       <= 1'b0; 
					delay_counter <= 32'd1_000_000; 
					fsm_state     <= FSM_INIT_CMD; 
				end

				FSM_INIT_CMD: begin 
					lcd_res       <= 1'b1; 
					delay_counter <= 32'd1_000_000; 
					fsm_state     <= FSM_SEND_INIT; 
					cmd_step      <= 5'd0; 
				end

				FSM_SEND_INIT: begin 
					case (cmd_step)
						5'd0: begin spi_tx_data <= CMD_SWRESET;      lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd1; end
						5'd1: begin spi_tx_data <= CMD_SLPOUT;       lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd2; delay_counter <= 32'd500_000; end
						5'd2: begin spi_tx_data <= CMD_COLMOD;       lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd3; end
						5'd3: begin spi_tx_data <= ARG_COLMOD_16BIT; lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd4; end
						5'd4: begin spi_tx_data <= CMD_MADCTL;       lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd5; end
						5'd5: begin spi_tx_data <= ARG_MADCTL_MX_MY; lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd6; end
						5'd6: begin spi_tx_data <= CMD_DISPON;       lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd7; end
						default: fsm_state <= FSM_SET_AXIS;
					endcase
				end

				FSM_SET_AXIS: begin 
					case (cmd_step)
						5'd7:  begin spi_tx_data <= CMD_CASET;                     lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd8;  end
						5'd8:  begin spi_tx_data <= 8'h00;                         lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd9;  end
						5'd9:  begin spi_tx_data <= 8'h00 + OFFSET_X;              lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd10; end
						5'd10: begin spi_tx_data <= 8'h00;                         lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd11; end
						5'd11: begin spi_tx_data <= LCD_WIDTH - 1'b1 + OFFSET_X;   lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd12; end
						5'd12: begin spi_tx_data <= CMD_RASET;                     lcd_dc <= 1'b0; bit_counter <= 4'd8; cmd_step <= 5'd13; end
						5'd13: begin spi_tx_data <= 8'h00;                         lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd14; end
						5'd14: begin spi_tx_data <= 8'h00 + OFFSET_Y;              lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd15; end
						5'd15: begin spi_tx_data <= 8'h00;                         lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd16; end
						5'd16: begin spi_tx_data <= LCD_HEIGHT - 1'b1 + OFFSET_Y;  lcd_dc <= 1'b1; bit_counter <= 4'd8; cmd_step <= 5'd17; end
						5'd17: begin
							spi_tx_data    <= CMD_RAMWR;
							lcd_dc         <= 1'b0;
							bit_counter    <= 4'd8;
							fsm_state      <= FSM_SCAN_DRAW;
							current_x      <= 8'd0;
							current_y      <= 8'd0;
							byte_hi_lo_sel <= 1'b0;
						end
					endcase
				end

				FSM_SCAN_DRAW: begin 
					spi_tx_data <= byte_hi_lo_sel ? pixel_color[7:0] : pixel_color[15:8];
					lcd_dc      <= 1'b1; 
					bit_counter <= 4'd8;

					if (byte_hi_lo_sel) begin
						if (current_x < (LCD_WIDTH - 1'b1)) begin
							current_x <= current_x + 1'b1;
						end else begin
							current_x <= 8'd0;
							if (current_y < (LCD_HEIGHT - 1'b1)) begin
								current_y <= current_y + 1'b1;
							end else begin
								fsm_state <= FSM_SET_AXIS;
								cmd_step  <= 5'd17; 
							end
						end
					end
					byte_hi_lo_sel <= ~byte_hi_lo_sel;
				end

				default: fsm_state <= FSM_HW_RESET;
			endcase
		end
	end
end

endmodule