module TFT_LCD (
	input wire clk,
	input wire rst_n,
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// 控制與計數器
reg [3:0]  clk_div;
reg [31:0] delay_cnt;
reg [5:0]  state;
reg [7:0]  cmd_idx, x_cnt, y_cnt;
reg [7:0]  spi_data;
reg [3:0]  bit_cnt;
reg        p_idx; // 0: 準備送高位元組, 1: 準備送低位元組

// =============================================================================
// 1. 圖像 ROM 宣告與初始化 (8-bit 寬度，深度 40960)
// =============================================================================
reg [7:0] image_rom [0:40959];

initial begin
    // 💡 請確保 image_data.mem 有 40960 行 8-bit 資料
    $readmemh("image_data.txt", image_rom);
end

// =============================================================================
// 2. 圖像定址邏輯 (配合 8-bit ROM)
// =============================================================================
// 基礎像素位址：(y_cnt * 128) + x_cnt -> (y_cnt << 7) + x_cnt
// 因為一個像素佔 2 個 bytes，所以基礎位址要乘以 2 -> << 1
// 再加上 p_idx (0 讀取高位元組，1 讀取低位元組)
wire [15:0] img_addr = (((y_cnt * 8'd128) + x_cnt) << 1) + p_idx;
reg  [7:0]  pixel_byte;

always @(posedge clk) begin
	pixel_byte <= image_rom[img_addr];
end

// =============================================================================
// SPI 與主控狀態機
// =============================================================================
localparam STATE_HW_RESET  = 3'd0;
localparam STATE_INIT_CMD  = 3'd1; 
localparam STATE_SEND_INIT = 3'd2; 
localparam STATE_SET_AXIS  = 3'd3;
localparam STATE_SCAN_DRAW = 3'd4; 

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state     <= 0;
		delay_cnt <= 0;
		bit_cnt   <= 0;
		x_cnt     <= 0;
		y_cnt     <= 0;
		p_idx     <= 0;
		cmd_idx   <= 0;
		SCL       <= 1;
		SDA       <= 0;
		RES       <= 1;
		DC        <= 0;
		CS        <= 1;
		BLK       <= 0;
	end else begin
		BLK <= 1; CS <= 0;
		if (delay_cnt > 0) begin
			delay_cnt <= delay_cnt - 1;
		end else if (bit_cnt > 0) begin
			if (clk_div == 0) begin 
				SCL <= 0; 
				SDA <= spi_data[bit_cnt-1];
				clk_div <= 1;
			end else begin 
				SCL <= 1; 
				bit_cnt <= bit_cnt - 1;
				clk_div <= 0;
			end
		end else begin
			case (state)
				STATE_HW_RESET: begin RES <= 0; delay_cnt <= 1000000; state <= STATE_INIT_CMD; end
				STATE_INIT_CMD: begin RES <= 1; delay_cnt <= 1000000; state <= STATE_SEND_INIT; cmd_idx <= 0; end
				STATE_SEND_INIT: begin 
					case (cmd_idx)
						0: begin spi_data <= CMD_SWRESET;      DC <= 0; bit_cnt <= 8; cmd_idx <= 1; end 
						1: begin spi_data <= CMD_SLPOUT;       DC <= 0; bit_cnt <= 8; cmd_idx <= 2; delay_cnt <= 500000; end
						2: begin spi_data <= CMD_COLMOD;       DC <= 0; bit_cnt <= 8; cmd_idx <= 3; end 
						3: begin spi_data <= ARG_COLMOD_16BIT; DC <= 1; bit_cnt <= 8; cmd_idx <= 4; end 
						4: begin spi_data <= CMD_MADCTL;       DC <= 0; bit_cnt <= 8; cmd_idx <= 5; end 
						5: begin spi_data <= ARG_MADCTL_MX_MY; DC <= 1; bit_cnt <= 8; cmd_idx <= 6; end 
						6: begin spi_data <= CMD_DISPON;       DC <= 0; bit_cnt <= 8; cmd_idx <= 7; end 
						default: state <= STATE_SET_AXIS;
					endcase
				end
				STATE_SET_AXIS: begin 
					case (cmd_idx)
						7:  begin spi_data <= CMD_CASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 8; end
						8:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 9; end
						9:  begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= CMD_RASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin 
							spi_data <= CMD_RAMWR;   
							DC       <= 0; 
							bit_cnt  <= 8; 
							cmd_idx  <= 18; 
							x_cnt    <= 0; 
							y_cnt    <= 0; 
							p_idx    <= 0; 
						end
						18: begin 
							// 空轉一格，讓 ROM 預讀第一個 byte (高位元組)
							state    <= STATE_SCAN_DRAW; 
						end
					endcase
				end
				STATE_SCAN_DRAW: begin 
					// 直接送出當前從 ROM 讀到的單個 Byte
					spi_data <= pixel_byte;
					DC <= 1; 
					bit_cnt <= 8;
					
					// 座標與高低 byte 切換邏輯
					if (p_idx == 1'b1) begin
						// 低位元組送出完畢，推進到下一個像素
						if (x_cnt < ARG_X_END) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < ARG_Y_END) begin
								y_cnt <= y_cnt + 1;
							end else begin
								// 全螢幕刷完，重新迴圈
								state   <= STATE_SET_AXIS;
								cmd_idx <= 17; 
							end
						end
					end
					
					p_idx <= ~p_idx; // 0 變 1, 1 變 0
				end
				default: state <= STATE_HW_RESET;
			endcase
		end
	end
end

// =============================================================================
// ST7735S 指令與參數常數宣告
// =============================================================================
parameter CMD_SWRESET   = 8'h01; 
parameter CMD_SLPOUT    = 8'h11; 
parameter CMD_DISPON    = 8'h29; 
parameter CMD_CASET     = 8'h2A; 
parameter CMD_RASET     = 8'h2B; 
parameter CMD_RAMWR     = 8'h2C; 
parameter CMD_MADCTL    = 8'h36; 
parameter CMD_COLMOD    = 8'h3A; 

parameter ARG_COLMOD_16BIT = 8'h05; 

// 💡 關鍵修正：改為 8'h00，代表 MX=0, MY=0 (由左而右，由上至下刷屏)，完全對齊你的取模圖片！
parameter ARG_MADCTL_MX_MY = 8'hC0; 

parameter ARG_X_START      = 8'd0;
parameter ARG_X_END        = 8'd127;
parameter ARG_Y_START      = 8'd0;
parameter ARG_Y_END        = 8'd159;

endmodule