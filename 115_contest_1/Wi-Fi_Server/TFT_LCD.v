module TFT_LCD (
	input wire clk,
	input wire rst_n,
	input wire [7:0] switch_8bit,
	input wire [3:0] PB,  // 2x2
	input wire [8:0] KEY, // 3x3
	input wire [2:0] LED_row, // WS2812B 橫座標
	input wire [2:0] LED_col, // WS2812B 縱座標
	input wire [15:0] WiFi_signal,
	output reg  SCL, SDA, RES, DC, CS, BLK
);

// =========================================================================
// 1 秒時脈產生器 (以 50MHz 時脈為例：50,000,000 個週期 = 1 秒)
// =========================================================================
parameter CLK_FREQ = 32'd50_000_000; // 請根據實際開發板時脈調整 (如 50MHz)
reg [31:0] one_sec_cnt;
reg        one_sec_pulse;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        one_sec_cnt   <= 0;
        one_sec_pulse <= 0;
    end else begin
        if (one_sec_cnt >= CLK_FREQ - 1) begin
            one_sec_cnt   <= 0;
            one_sec_pulse <= 1'b1; // 產生 1 個 clk 週期的觸發脈衝
        end else begin
            one_sec_cnt   <= one_sec_cnt + 1;
            one_sec_pulse <= 1'b0;
        end
    end
end

// =========================================================================
// 基本參數配置
// =========================================================================
parameter FONT_W = 4'd8;  // 原始字寬
parameter FONT_H = 5'd16; // 原始字高

parameter COLOR_RED  = 16'hF800; // 紅色 (RGB565)
parameter COLOR_BLUE = 16'h001F; // 藍色 (RGB565)
parameter BG_COLOR   = 16'h0000; // 背景色 (黑色)

// =========================================================================
// 動態文字物件屬性記憶體 (Text OAM)
// 0~3: 上方英文字母 (紅色)
// 4~8: 下方座標文字 (藍色，格式: "[", row, ",", col, "]")
// =========================================================================
parameter MAX_CHARS = 9;

reg [7:0]  char_ascii [0:MAX_CHARS-1]; 
reg [7:0]  char_x     [0:MAX_CHARS-1]; 
reg [7:0]  char_y     [0:MAX_CHARS-1]; 
reg [15:0] char_color [0:MAX_CHARS-1]; 
reg [1:0]  char_scale [0:MAX_CHARS-1]; 

// --- 狀態控制暫存器 ---
reg [2:0] char_group_cnt; // 0~6 組 (A~D, E~H, ..., YZ)
reg [3:0] coord_row;      // 0~8
reg [3:0] coord_col;      // 1~8

reg [3:0] PB_buffer;

// --- 每秒觸發：動態更新字母與座標 ---
integer i;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		char_group_cnt <= 0;
		coord_row      <= 0;
		coord_col      <= 1;
		
		PB_buffer <= 4'b0;

		// 預設縮放倍率，可自由調整
		for (i = 0; i < MAX_CHARS; i = i + 1) begin
			char_scale[i] <= 2'd2;
		end

		// 上方 4 個紅色英文字母位置
		char_color[0] <= COLOR_RED; char_x[0] <= 8'd16; char_y[0] <= 8'd10;
		char_color[1] <= COLOR_RED; char_x[1] <= 8'd40; char_y[1] <= 8'd10;
		char_color[2] <= COLOR_RED; char_x[2] <= 8'd64; char_y[2] <= 8'd10;
		char_color[3] <= COLOR_RED; char_x[3] <= 8'd88; char_y[3] <= 8'd10;
		
	end else if (one_sec_pulse) begin
		
		for (i = 0; i < 4; i = i + 1) begin
			if (PB[i]) begin
				PB_buffer[i] <= PB[i];
			end
		end
		
		// -----------------------------------------------------------------
		// 更新英文字母邏輯
		// -----------------------------------------------------------------
		if (switch_8bit[1:0] == 2'b00 && PB_buffer[0]) begin
			char_ascii[4] <= "[";
			char_ascii[6] <= ",";
			char_ascii[8] <= "]";
			 // 下方 5 個藍色座標文字位置
			char_scale[4] <= 2'd2; char_color[4] <= COLOR_BLUE; char_x[4] <= 8'd5;   char_y[4] <= 8'd65;
			char_scale[5] <= 2'd2; char_color[5] <= COLOR_BLUE; char_x[5] <= 8'd29;  char_y[5] <= 8'd65; // Row
			char_scale[6] <= 2'd2; char_color[6] <= COLOR_BLUE; char_x[6] <= 8'd53;  char_y[6] <= 8'd65;
			char_scale[7] <= 2'd2; char_color[7] <= COLOR_BLUE; char_x[7] <= 8'd77;  char_y[7] <= 8'd65; // Col
			char_scale[8] <= 2'd2; char_color[8] <= COLOR_BLUE; char_x[8] <= 8'd101; char_y[8] <= 8'd65;

			if (char_group_cnt < 6)
				char_group_cnt <= char_group_cnt + 1;
			else
				char_group_cnt <= 0;

			case (char_group_cnt)
				3'd0: begin char_ascii[0] <= "A"; char_ascii[1] <= "B"; char_ascii[2] <= "C"; char_ascii[3] <= "D"; end
				3'd1: begin char_ascii[0] <= "E"; char_ascii[1] <= "F"; char_ascii[2] <= "G"; char_ascii[3] <= "H"; end
				3'd2: begin char_ascii[0] <= "I"; char_ascii[1] <= "J"; char_ascii[2] <= "K"; char_ascii[3] <= "L"; end
				3'd3: begin char_ascii[0] <= "M"; char_ascii[1] <= "N"; char_ascii[2] <= "O"; char_ascii[3] <= "P"; end
				3'd4: begin char_ascii[0] <= "Q"; char_ascii[1] <= "R"; char_ascii[2] <= "S"; char_ascii[3] <= "T"; end
				3'd5: begin char_ascii[0] <= "U"; char_ascii[1] <= "V"; char_ascii[2] <= "W"; char_ascii[3] <= "X"; end
				3'd6: begin char_ascii[0] <= "Y"; char_ascii[1] <= "Z"; char_ascii[2] <= " "; char_ascii[3] <= " "; end
				default: begin char_ascii[0] <= " "; char_ascii[1] <= " "; char_ascii[2] <= " "; char_ascii[3] <= " "; end
			endcase

			// -----------------------------------------------------------------
			// B. 更新座標進位邏輯 ([0,1] -> [0,8] -> [1,1] ... -> [8,8])
			// -----------------------------------------------------------------
			if (coord_col < 8) begin
				coord_col <= coord_col + 1;
			end else begin
				coord_col <= 1;
				if (coord_row < 8) begin
					coord_row <= coord_row + 1;
				end else begin
					coord_row <= 0;
				end
			end

			// 將數字轉為 ASCII 碼 (加上 8'd48)
			char_ascii[5] <= 8'd48 + coord_row;
			char_ascii[7] <= 8'd48 + coord_col;
		end else if(switch_8bit[1:0] == 2'b11 && PB_buffer[0]) begin
			char_scale[0] <= 2'd2; char_ascii[0] <= "A";
			char_scale[1] <= 2'd2; char_ascii[1] <= "B";
			char_scale[2] <= 2'd2; char_ascii[2] <= "C";
			char_scale[3] <= 2'd2; char_ascii[3] <= "D";
			char_scale[4] <= 2'd1; char_ascii[4] <= "["; char_x[4] <= 8'd24; char_y[4] <= 8'd65;
			char_scale[5] <= 2'd1; char_ascii[5] <= 8'd48 + LED_row; char_x[5] <= 8'd40; char_y[5] <= 8'd65; //
			char_scale[6] <= 2'd1; char_ascii[6] <= ","; char_x[6] <= 8'd56; char_y[6] <= 8'd65;
			char_scale[7] <= 2'd1; char_ascii[7] <= 8'd48 + LED_col; char_x[7] <= 8'd72; char_y[7] <= 8'd65; //
			char_scale[8] <= 2'd1; char_ascii[8] <= "]"; char_x[8] <= 8'd88; char_y[8] <= 8'd65;
		end else begin
			char_group_cnt <= 0;
			for (i = 0; i < MAX_CHARS; i = i + 1) begin
				char_ascii[i] <= " ";
			end
		end
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
    active_color = BG_COLOR;
    active_lx    = 0;
    active_ly    = 0;
    hit_text     = 1'b0;

    for (scan_i = 0; scan_i < MAX_CHARS; scan_i = scan_i + 1) begin
        scale_factor = char_scale[scan_i] + 1'b1;
        char_w       = FONT_W * scale_factor;
        char_h       = FONT_H * scale_factor;

        if (x_cnt >= char_x[scan_i] && x_cnt < (char_x[scan_i] + char_w) &&
            y_cnt >= char_y[scan_i] && y_cnt < (char_y[scan_i] + char_h)) begin
            
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
        pixel_color = BG_COLOR;     
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