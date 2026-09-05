module TFT_LCD (
	input wire clk,
	input wire rst_n,
	input wire [7:0] switch_8bit,
	//input wire [3:0] PB,  // 2x2
	input wire [3:0] KEY, // 3x3
	input wire       Pressed,

	input [31:0] orderID,       // 訂單 ID
	input [15:0] orderQuantity, // 訂購數量
	input [15:0] bidAmount,     // 出價金額
	input [15:0] productQuota,  // 商品配額
	input [15:0] grandTotal,    // 付款總額
	output reg  SCL, SDA, RES, DC, CS, BLK
);

reg Pressed_reg1, Pressed_reg2;
wire Pressed_posedge = (Pressed_reg1 && !Pressed_reg2);
wire Pressed_negedge = (!Pressed_reg1 && Pressed_reg2);
always@(posedge clk) begin
	if (!rst_n) begin
		Pressed_reg1 <= 0;
		Pressed_reg2 <= 0;
	end else begin
		Pressed_reg1 <= Pressed;
		Pressed_reg2 <= Pressed_reg1;
	end
end

reg [3:0] key_latched;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_latched <= 4'd15;
	end else if (Pressed && !Pressed_reg1) begin // 只在剛按下的正緣鎖存 KEY
		key_latched <= KEY;
	end else begin
		key_latched <= 4'd15;
	end
end

reg [3:0] key_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_pulse <= 4'b1111;
	end else begin
		// 當 Pressed 產生正緣（剛按下的瞬間）
		if (Pressed && !Pressed_reg1) begin
			key_pulse <= KEY;       // 存入當前按下的 key 值
		end else begin
			key_pulse <= 4'b1111;   // 1 個 Clock 後自動歸位為預設值 15
		end
	end
end

parameter CLK_FREQ = 32'd50_000_000; // 1s 所需週期(50MHz)

// =========================================================================
// 基本參數配置
// =========================================================================
parameter MAX_CHARS = 12; // 文字上限
parameter FONT_W = 4'd8;  // 原始字寬
parameter FONT_H = 5'd16; // 原始字高

parameter COLOR_RED   = 16'hF800; // 紅色 (RGB565)
parameter COLOR_GREEN = 16'h07E0; // 綠色 (RGB565)
parameter COLOR_BLUE  = 16'h001F; // 藍色 (RGB565)
parameter COLOR_WHITE = 16'hFFFF; // 白色 (RGB565)
parameter COLOR_BLACK = 16'h0000; // 黑色 (RGB565)

reg [7:0]  char_ascii [0:MAX_CHARS-1]; // 文字資料
reg [7:0]  char_x     [0:MAX_CHARS-1]; // 文字 x 座標
reg [7:0]  char_y     [0:MAX_CHARS-1]; // 文字 y 座標
reg [15:0] char_color [0:MAX_CHARS-1]; // 文字顏色
reg [1:0]  char_scale [0:MAX_CHARS-1]; // 文字大小

reg [2:0] current_display_state;
reg [2:0] next_display_state;
localparam display_CLEAR   = 3'd0,
			  display_INITIAL = 3'd1,
			  display_IDLE    = 3'd2,
			  display_EDIT_01 = 3'd3,
			  display_EDIT_02 = 3'd4,
			  display_DONE    = 3'd5;

reg [31:0] timer_cnt;

// orderQuantity 的十位數與個位數 ASCII
wire [7:0] quantity_01_tens = 8'd48 + (orderQuantity[15:8] / 10);
wire [7:0] quantity_01_ones = 8'd48 + (orderQuantity[15:8] % 10);
wire [7:0] quantity_02_tens = 8'd48 + (orderQuantity[7:0] / 10);
wire [7:0] quantity_02_ones = 8'd48 + (orderQuantity[7:0] % 10);

// bidAmount 的十位數與個位數 ASCII
wire [7:0] amount_01_tens = 8'd48 + (bidAmount[15:8] / 10);
wire [7:0] amount_01_ones = 8'd48 + (bidAmount[15:8] % 10);
wire [7:0] amount_02_tens = 8'd48 + (bidAmount[7:0] / 10);
wire [7:0] amount_02_ones = 8'd48 + (bidAmount[7:0] % 10);

// productQuota 的十位數與個位數 ASCII
wire [7:0] quota_01_tens = 8'd48 + (productQuota[15:8] / 10);
wire [7:0] quota_01_ones = 8'd48 + (productQuota[15:8] % 10);
wire [7:0] quota_02_tens = 8'd48 + (productQuota[7:0] / 10);
wire [7:0] quota_02_ones = 8'd48 + (productQuota[7:0] % 10);

// grandTotal 的十位數與個位數 ASCII
wire [7:0] total_01_tens = 8'd48 + (grandTotal[15:8] / 10);
wire [7:0] total_01_ones = 8'd48 + (grandTotal[15:8] % 10);
wire [7:0] total_02_tens = 8'd48 + (grandTotal[7:0] / 10);
wire [7:0] total_02_ones = 8'd48 + (grandTotal[7:0] % 10);

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_display_state <= display_CLEAR;
	end else begin
		current_display_state <= next_display_state;
	end
end

integer i;
always @(*) begin
	next_display_state = current_display_state;
		
		// 上方 ID00 位置
	char_x[0]  <= 8'd16; char_y[0]  <= 8'd0;
	char_x[1]  <= 8'd40; char_y[1]  <= 8'd0;
	char_x[2]  <= 8'd64; char_y[2]  <= 8'd0;
	char_x[3]  <= 8'd88; char_y[3]  <= 8'd0;
	
	// 上方 OQ00 位置
	char_x[4]  = 8'd16; char_y[4]  = 8'd53;
	char_x[5]  = 8'd40; char_y[5]  = 8'd53;
	char_x[6]  = 8'd64; char_y[6]  = 8'd53;
	char_x[7]  = 8'd88; char_y[7]  = 8'd53;
	
	// 上方 SQ00 位置
	char_x[8]  = 8'd16; char_y[8]  = 8'd106;
	char_x[9]  = 8'd40; char_y[9]  = 8'd106;
	char_x[10] = 8'd64; char_y[10] = 8'd106;
	char_x[11] = 8'd88; char_y[11] = 8'd106;
	
	case(current_display_state)
	
		display_CLEAR: begin end
	
		display_INITIAL: begin
			if (timer_cnt < CLK_FREQ*4) begin
				next_display_state = display_INITIAL;
			end else begin
				next_display_state = display_IDLE;
			end
		end
		
		display_IDLE: begin end
		
		display_EDIT_01, display_EDIT_02: begin end
		
		display_DONE: begin end
		
		default:;
	endcase
	
	if ((switch_8bit == 8'b0) && (key_pulse == 6)) begin
		next_display_state = display_INITIAL;
	end else if ((switch_8bit[7:4] == 4'b0001) && (key_pulse == 8)) begin
		next_display_state = current_display_state;
	end else if (switch_8bit[7:4] == 4'b0100) begin
		if ((switch_8bit[3:0] == 4'b0001) && (key_pulse == 6)) begin
			next_display_state = display_EDIT_01;
		end else if ((switch_8bit[3:0] == 4'b0010) && (key_pulse == 6)) begin
			next_display_state = display_EDIT_02;
		end else if (key_pulse == 8) begin
			//next_display_state = display_DONE;
		end
	end
end

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		timer_cnt <= 32'd0;
		
		// 文字設定初始化
		for (i = 0; i < MAX_CHARS; i = i + 1) begin
			char_ascii[i] <= " ";
			char_color[i] <= COLOR_BLACK;
			char_scale[i] <= 2'd2;
		end
		
	end else begin
		case(current_display_state)
		
			display_CLEAR: begin
				for (i = 0; i < MAX_CHARS; i = i + 1) begin
					char_ascii[i] <= " ";
					char_color[i] <= COLOR_BLACK;
					char_scale[i] <= 2'd2;
				end
			end
		
			display_INITIAL: begin
				if (timer_cnt < CLK_FREQ*4) begin
					timer_cnt <= timer_cnt + 32'd1;
					for (i = 0; i < MAX_CHARS; i = i + 1) begin
						char_ascii[i] <= " ";
						char_color[i] <= COLOR_BLACK;
						char_scale[i] <= 2'd2;
					end
				end else begin
					timer_cnt <= 32'd0;
				end
			end
			
			display_IDLE: begin
				char_ascii[0] <= "I"; char_ascii[1] <= "D"; char_ascii[2]  <= "0"; char_ascii[3]  <= "0";
				char_ascii[4] <= "O"; char_ascii[5] <= "Q"; char_ascii[6]  <= "0"; char_ascii[7]  <= "0";
				char_ascii[8] <= "S"; char_ascii[9] <= "Q"; char_ascii[10] <= "0"; char_ascii[11] <= "0";
			end

			display_EDIT_01: begin
				char_ascii[0] <= "I"; char_ascii[1] <= "D";
				char_ascii[4] <= "O"; char_ascii[5] <= "Q";
				char_ascii[8] <= "S"; char_ascii[9] <= "Q";
				char_ascii[2] <= "0"; char_ascii[3] <= "1"; // 訂單ID
				if (timer_cnt < CLK_FREQ) begin
					timer_cnt <= timer_cnt + 1'b1;
				end else begin
					timer_cnt <= 32'd0;
				end
				char_ascii[6]  <= quantity_01_tens; char_ascii[7]  <= quantity_01_ones; // 原始訂購數量
				char_ascii[10] <= quota_01_tens; // 訂單配額
				char_ascii[11] <= quota_01_ones;
				char_color[10] <= (timer_cnt < CLK_FREQ/2) ? COLOR_BLACK : COLOR_WHITE;
				char_color[11] <= (timer_cnt < CLK_FREQ/2) ? COLOR_BLACK : COLOR_WHITE;
			end
			
			display_EDIT_02: begin
				char_ascii[0] <= "I"; char_ascii[1] <= "D";
				char_ascii[4] <= "O"; char_ascii[5] <= "Q";
				char_ascii[8] <= "S"; char_ascii[9] <= "Q";
				char_ascii[2] <= "0"; char_ascii[3] <= "2"; // 訂單ID
				if (timer_cnt < CLK_FREQ) begin
					timer_cnt <= timer_cnt + 1'b1;
				end else begin
					timer_cnt <= 32'd0;
				end
				char_ascii[6]  <= quantity_02_tens; char_ascii[7]  <= quantity_02_ones; // 原始訂購數量
				char_ascii[10] <= quota_02_tens; // 訂單配額
				char_ascii[11] <= quota_02_ones;
				char_color[10] <= (timer_cnt < CLK_FREQ/2) ? COLOR_BLACK : COLOR_WHITE;
				char_color[11] <= (timer_cnt < CLK_FREQ/2) ? COLOR_BLACK : COLOR_WHITE;
			end
			
			display_DONE: begin
				char_ascii[0] <= "I"; char_ascii[1] <= "D";
				char_ascii[4] <= "O"; char_ascii[5] <= "Q";
				char_ascii[8] <= "S"; char_ascii[9] <= "Q";
				char_ascii[2] <= "0"; char_ascii[3] <= char_ascii[3]; // 訂單ID
				char_ascii[6]  <= char_ascii[6];  char_ascii[7]  <= char_ascii[7]; // 原始訂購數量
				char_ascii[10] <= char_ascii[10]; char_ascii[11] <= char_ascii[11]; // 訂單配額
				char_color[10] <= COLOR_BLACK;
				char_color[11] <= COLOR_BLACK;
			end

		endcase
	end
end



// =========================================================================
// 動態繪圖與 Hit Detection (自動走訪與點陣圖渲染)
// =========================================================================
reg [7:0]  active_ascii;
reg [15:0] active_color;
reg [3:0]  active_lx, active_ly;
reg        hit_text;

integer scan_i;
reg [7:0] char_w, char_h;
reg [1:0] scale_factor;

always @(*) begin
	active_ascii = " ";
	active_color = COLOR_BLACK;
	active_lx    = 0;
	active_ly    = 0;
	hit_text     = 1'b0;

	for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
		scale_factor = char_scale[scan_i] + 1'b1;
		char_w       = FONT_W * scale_factor;
		char_h       = FONT_H * scale_factor;

		if (x_cnt >= char_x[scan_i] && x_cnt < (char_x[scan_i] + char_w) && y_cnt >= char_y[scan_i] && y_cnt < (char_y[scan_i] + char_h)) begin
			hit_text     = 1'b1;
			active_ascii = char_ascii[scan_i];
			active_color = char_color[scan_i];
			active_lx    = (x_cnt - char_x[scan_i]) / scale_factor;
			active_ly    = (y_cnt - char_y[scan_i]) / scale_factor;
		end
	end
end

// --- ROM 定址與點陣圖提取 ---
wire [7:0] char_idx = (active_ascii >= " " && active_ascii <= "~") ? (active_ascii - " ") : 8'd0;
wire [15:0] addr    = (char_idx << 4) + active_ly;
wire [7:0]  bits    = font_rom[addr];
reg [15:0] pixel_color;

always @(*) begin
	if (hit_text && bits[4'd7 - active_lx]) begin
		pixel_color = active_color;
	end else begin
		pixel_color = (current_display_state == display_CLEAR) ? COLOR_BLACK : COLOR_WHITE;
	end
end

// =========================================================================
// 控制與計數器
// =========================================================================
reg [3:0]  clk_div;
reg [31:0] delay_cnt;
reg [5:0]  state;
reg [7:0]  cmd_idx, x_cnt, y_cnt;
reg [7:0]  spi_data;
reg [3:0]  bit_cnt;
reg        p_idx;

// =========================================================================
// SPI 與主控狀態機
// =========================================================================
localparam STATE_HW_RESET  = 3'd0;
localparam STATE_INIT_CMD  = 3'd1;
localparam STATE_SEND_INIT = 3'd2;
localparam STATE_SET_AXIS  = 3'd3;
localparam STATE_SCAN_DRAW = 3'd4;

always @(posedge clk or negedge rst_n) begin
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
						7:  begin spi_data <= CMD_CASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 8;  end
						8:  begin spi_data <= ARG_X_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 9;  end
						9:  begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 10; end
						10: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 11; end
						11: begin spi_data <= ARG_X_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 12; end
						12: begin spi_data <= CMD_RASET;   DC <= 0; bit_cnt <= 8; cmd_idx <= 13; end
						13: begin spi_data <= ARG_Y_START; DC <= 1; bit_cnt <= 8; cmd_idx <= 14; end
						14: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 15; end
						15: begin spi_data <= 8'h00;       DC <= 1; bit_cnt <= 8; cmd_idx <= 16; end
						16: begin spi_data <= ARG_Y_END;   DC <= 1; bit_cnt <= 8; cmd_idx <= 17; end
						17: begin spi_data <= CMD_RAMWR;   DC <= 0; bit_cnt <= 8; state <= STATE_SCAN_DRAW; x_cnt <= 0; y_cnt <= 0; p_idx <= 0; end
					endcase
				end
				STATE_SCAN_DRAW: begin 
					spi_data <= p_idx ? pixel_color[7:0] : pixel_color[15:8];
					DC <= 1; bit_cnt <= 8;
					if (p_idx) begin
						if (x_cnt < ARG_X_END) begin
							x_cnt <= x_cnt + 1;
						end else begin
							x_cnt <= 0;
							if (y_cnt < ARG_Y_END) y_cnt <= y_cnt + 1;
							else begin
								state <= STATE_SET_AXIS;
								cmd_idx <= 17; 
							end
						end
					end
					p_idx <= ~p_idx;
				end
				default: state <= STATE_HW_RESET;
			endcase
		end
	end
end

// =============================================================================
// ST7735S 指令宣告與 ROM
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
parameter ARG_MADCTL_MX_MY = 8'hC0;
parameter ARG_X_START      = 8'd0;
parameter ARG_X_END        = 8'd127;
parameter ARG_Y_START      = 8'd0;
parameter ARG_Y_END        = 8'd159;

reg [7:0] font_rom [0:1519];
initial begin
	$readmemh("ASCII_32to126.txt", font_rom);
end

endmodule