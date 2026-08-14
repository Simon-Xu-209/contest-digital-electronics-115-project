module uart_tx_string #(
	parameter MAX_BYTES = 64,
	parameter CLK_FREQ  = 50_000_000,
	parameter BAUD_RATE = 115200
)(
	input  wire                   clk,
	input  wire                   rst_n,
	input  wire                   tx_start,
	input  wire [8*MAX_BYTES-1:0] tx_cmd,
	input  wire [5:0]             cmd_len,
	output reg                    tx,
	output reg                    tx_busy,
	output reg                    cmd_done
);

localparam DIV_NUM = CLK_FREQ / BAUD_RATE;

reg [15:0] baud_cnt;
wire       baud_tick = (baud_cnt == DIV_NUM - 1);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) 
		baud_cnt <= 0;
	else if (tx_busy) begin
		if (baud_tick) baud_cnt <= 0;
		else baud_cnt <= baud_cnt + 1'b1;
	end else 
		baud_cnt <= 0;
end

localparam S_IDLE  = 0,
			  S_START = 1,
			  S_DATA  = 2,
			  S_STOP  = 3;

reg [1:0]  state;
reg [2:0]  bit_idx;
reg [5:0]  byte_cnt;
reg [5:0]  total_bytes;
reg [7:0]  shift_byte;
reg [8*MAX_BYTES-1:0] shift_reg;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state       <= S_IDLE;
		tx          <= 1'b1;
		tx_busy     <= 1'b0;
		cmd_done    <= 1'b0;
		bit_idx     <= 0;
		byte_cnt    <= 0;
		total_bytes <= 0;
		shift_reg   <= 0;
		shift_byte  <= 8'h00;
	end else begin
		cmd_done <= 1'b0;

		case (state)
			S_IDLE: begin
				tx <= 1'b1;
				if (tx_start) begin
					shift_reg   <= tx_cmd;
					byte_cnt    <= 0;
					// 若沒指定長度則預設傳 MAX_BYTES，否則傳指定 cmd_len
					total_bytes <= (cmd_len > 0) ? cmd_len : MAX_BYTES;
					tx_busy     <= 1'b1;
                        
					// 先將字串向左對齊（移掉高位的 0x00）
					// 注意：因為靠右對齊的字串高位會充滿 0x00，需先將有效字元移至最頂端
					if (cmd_len > 0 && cmd_len < MAX_BYTES) begin
						shift_reg <= tx_cmd << (8 * (MAX_BYTES - cmd_len));
					end
                        
					state <= S_START;
				end else begin
					tx_busy <= 1'b0;
				end
			end

			S_START: begin
				// 檢查是否傳送完成
				if (byte_cnt >= total_bytes) begin
					tx_busy  <= 1'b0;
					cmd_done <= 1'b1;
					state    <= S_IDLE;
				end else begin
					// 抓取當前最頂端的 Byte
					shift_byte <= shift_reg[8*MAX_BYTES-1 -: 8];
					tx         <= 1'b0; // 開始傳送 Start bit (低電位)
					bit_idx    <= 0;
                        
					// 必須等待一個波特率週期才能進入 S_DATA
					if (baud_tick) begin
						state <= S_DATA;
					end
				end
			end

			S_DATA: begin
				tx <= shift_byte[bit_idx]; // 依序傳送 8 個 Data bit
				if (baud_tick) begin
					if (bit_idx == 3'd7) begin
						state <= S_STOP;
					end else begin
						bit_idx <= bit_idx + 1'b1;
					end
				end
			end

			S_STOP: begin
				tx <= 1'b1; // Stop bit (高電位)
				if (baud_tick) begin
				// 傳完一 Byte，整體左移 8 bits 準備下一個 Byte
					shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
					byte_cnt  <= byte_cnt + 1'b1;
					state     <= S_START;
				end
			end
			default:;
		endcase
	end
end
endmodule