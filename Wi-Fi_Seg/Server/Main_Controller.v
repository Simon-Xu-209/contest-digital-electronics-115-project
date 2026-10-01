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

	output reg [63:0] seven_segment_chars,

	output wire                    send_en,
	output wire [3:0]              send_target_id,
	output wire [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                    rx_done
);

parameter CLK_FREQ = 50_000_000; // 50MHz 時脈



// 拆解 32 個 Byte (bytes[0] 為 lowest byte，即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_data_reg[8*g +: 8];
	end
endgenerate

// 搜尋 "Num:" (字串靠右存入，較早收到的字元索引較大)
// 格式範例：bytes[g+4]="N", bytes[g+3]="u", bytes[g+2]="m", bytes[g+1]=':', bytes[g]="1", bytes[g-1]="\r", bytes[g-2]="\n"
wire [MAX_RX_LEN-1:0] match_num;    // 偵測資料所在位元組位置
reg  [8:0]            detected_num; // 偵測到的資料
reg                   num_found;

generate
	for (g = 0; g < MAX_RX_LEN-4; g = g + 1) begin : MATCH_GEN
		assign match_num[g] = (bytes[g+4] == "N") && 
									(bytes[g+3] == "u") && 
									(bytes[g+2] == "m") && 
									(bytes[g+1] == ":");
	end
endgenerate

// Num: 擷取
integer k;
always @(*) begin
	num_found    = 1'b0;
	detected_num = 8'd0;
	for (k = 0; k < MAX_RX_LEN; k = k + 1) begin
		if (match_num[k] && !num_found) begin
			num_found    = 1'b1;
			// 擷取 "Num:" 後方的 1 碼，高位 Byte 擺左側
			detected_num = bytes[k];
		end
	end
end

// --------------------------------------------------------------------
// 主邏輯匯總控制區塊 (單一順序驅動關鍵暫存器)
// --------------------------------------------------------------------
reg [2:0] prev_system_state; 

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		seven_segment_chars <= {8{8'h80 | "8"}};
	end else begin
		if (detected_num == "0") begin
			seven_segment_chars <= {"INF", 8'h80, "  00"}; // 七段顯示器顯示:"InF:  00"
		end else if (detected_num == "1") begin
			seven_segment_chars <= {"INF", 8'h80, "  01"};
		end else if (detected_num == "2") begin
			seven_segment_chars <= {"INF", 8'h80, "  02"};
		end else if (detected_num == "3") begin
			seven_segment_chars <= {"INF", 8'h80, "  03"};
		end else if (detected_num == "4") begin
			seven_segment_chars <= {"INF", 8'h80, "  04"};
		end else if (detected_num == "5") begin
			seven_segment_chars <= {"INF", 8'h80, "  05"};
		end else if (detected_num == "6") begin
			seven_segment_chars <= {"INF", 8'h80, "  06"};
		end else if (detected_num == "7") begin
			seven_segment_chars <= {"INF", 8'h80, "  07"};
		end else if (detected_num == "8") begin
			seven_segment_chars <= {"INF", 8'h80, "  08"};
		end else begin
			seven_segment_chars <= {"INF", 8'h80, "  XX"};
		end
	end
end



endmodule