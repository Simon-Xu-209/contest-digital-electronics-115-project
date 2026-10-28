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

	output reg  [3:0] previous_system_state,
	output reg  [3:0] current_system_state,
	output reg  [3:0] next_system_state,

	output wire                    send_en,
	output wire [3:0]              send_target_id,
	output wire [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                    rx_done,
	input  wire                    WiFi_init_done
);

parameter CLK_FREQ = 50_000_000; // 50MHz 時脈

// --------------------------------------------------------------------
// 系統狀態機定義
// --------------------------------------------------------------------
parameter SYS_RESET       = 4'd0,
          SYS_INITIAL     = 4'd1,
			 SYS_IDLE        = 4'd2,
          SYS_LCD_WiFi    = 4'd3,
          SYS_SEG         = 4'd4,
          SYS_DATA_TEST   = 4'd5,
          SYS_INTEGRATION = 4'd6;



reg [31:0] system_timer;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		previous_system_state <= SYS_RESET;
		current_system_state  <= SYS_RESET;
	end else begin
		previous_system_state <= current_system_state;
		current_system_state  <= next_system_state;
	end
end

always @(*) begin
	next_system_state = current_system_state;
	
	if (!rst_n) begin
		next_system_state = SYS_RESET;
	end else if ((current_system_state == SYS_RESET) && (system_timer >= (CLK_FREQ / 5))) begin
		next_system_state = SYS_INITIAL;
	end else if (switch_8bit == 8'b0000_0001) begin
		
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		system_timer <= 32'b0;
		seven_segment_chars <= {8{8'h80 | "8"}};
	end else begin
		
		if (previous_system_state != current_system_state) begin
			system_timer <= 32'b0;
		end
		
		case (current_system_state)
			SYS_RESET: begin
				if (system_timer < (CLK_FREQ / 5)) begin
					system_timer <= system_timer + 32'b1;
				end
			end
			
			SYS_INITIAL: begin
				if (WiFi_init_done) begin
					seven_segment_chars <= {8'h80, "READY", 8'h80, " "};
				end
			end
			
			SYS_SEG: begin
				if (switch_8bit == 8'b0_0_000_1_01) begin
					seven_segment_chars <= "";
				end else if (switch_8bit == 8'b0_0_001_1_01) begin
					seven_segment_chars <= {"MODE", "1", 8'h80, "XX"};
				end else if (switch_8bit == 8'b0_0_010_1_01) begin
					seven_segment_chars <= {"MODE", "1", 8'h80, "YY"};
				end if (switch_8bit == 8'b0_0_100_1_01) begin
					seven_segment_chars <= {"MODE", "1", 8'h80, "ZZ"};
				end
			end
			default: ;
		endcase
	end
end





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

assign send_en = 1'b0;

endmodule