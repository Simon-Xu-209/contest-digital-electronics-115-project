module UART_tx_string #(
	parameter MAX_BYTES = 64,
	parameter CLK_FREQ  = 50_000_000,
	parameter BAUD_RATE = 115200
)(
	input  wire                   clk,
	input  wire                   rst_n,
	
	input  wire                   tx_start,    // 發起發送脈衝
	input  wire [8*MAX_BYTES-1:0] tx_data_reg, // 發送暫存器內容
	output reg                    UART_tx,     // UART TX 腳位
	
	output reg                    tx_busy,     // 物理傳輸中
	output reg                    tx_done      // 實體位元組全部發送完畢脈衝
);

localparam DIV_NUM = CLK_FREQ / BAUD_RATE;
reg [15:0] baud_cnt;
wire       baud_tick = (baud_cnt == DIV_NUM - 1);

reg        tx_sending;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) baud_cnt <= 16'd0;
	else if (tx_sending) begin
		if (baud_tick) baud_cnt <= 16'd0;
		else baud_cnt <= baud_cnt + 1'b1;
	end else baud_cnt <= 16'd0;
end

localparam S_IDLE  = 2'd0,
           S_START = 2'd1,
           S_DATA  = 2'd2,
           S_STOP  = 2'd3;

reg [1:0]             tx_state;
reg [2:0]             bit_idx;
reg [7:0]             byte_cnt;
reg [7:0]             shift_byte;
reg [8*MAX_BYTES-1:0] shift_reg;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		tx_state   <= S_IDLE;
		UART_tx    <= 1'b1;
		tx_sending <= 1'b0;
		tx_busy    <= 1'b0;
		tx_done    <= 1'b0;
		bit_idx    <= 3'd0;
		byte_cnt   <= 8'd0;
		shift_reg  <= {8*MAX_BYTES{1'b0}};
		shift_byte <= 8'h00;
	end else begin
		tx_done <= 1'b0;

		case (tx_state)
			S_IDLE: begin
				UART_tx <= 1'b1;
				if (tx_start) begin
					shift_reg  <= tx_data_reg;
					byte_cnt   <= 8'd0;
					tx_sending <= 1'b1;
					tx_busy    <= 1'b1;
					tx_state   <= S_START;
				end else begin
					tx_sending <= 1'b0;
					tx_busy    <= 1'b0;
				end
			end

			S_START: begin
				/* 
				 * 註解：暫存器 tx_data_reg 高位若為 8'h00 代表前導無效字元 (Padding Null Byte)，
				 * 在此自動跳過，直接將有效字串對齊移位至最頂端發送。
				 */
				if ((shift_reg[8*MAX_BYTES-1 -: 8] == 8'h00) && (byte_cnt < MAX_BYTES)) begin
					shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
					byte_cnt  <= byte_cnt + 1'b1;
				end else if (byte_cnt >= MAX_BYTES) begin
					tx_sending <= 1'b0;
					tx_busy    <= 1'b0;
					tx_done    <= 1'b1;// 全空字串保護發送完畢
					tx_state   <= S_IDLE;
				end else begin
					shift_byte <= shift_reg[8*MAX_BYTES-1 -: 8];
					UART_tx    <= 1'b0; // 發送 UART Start Bit (低電位)
					bit_idx    <= 3'd0;
					if (baud_tick) tx_state <= S_DATA;
				end
			end

			S_DATA: begin
				UART_tx <= shift_byte[bit_idx];
				if (baud_tick) begin
					if (bit_idx == 3'd7) tx_state <= S_STOP;
					else bit_idx <= bit_idx + 1'b1;
				end
			end

			S_STOP: begin
				UART_tx <= 1'b1;
				if (baud_tick) begin
					shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
					byte_cnt  <= byte_cnt + 1'b1;
					if (shift_reg[8*(MAX_BYTES-1)-1 -: 8] == 8'h00 || byte_cnt + 1 >= MAX_BYTES) begin
						tx_sending <= 1'b0;
						tx_busy    <= 1'b0;
						tx_done    <= 1'b1; // 發送完成脈衝
						tx_state   <= S_IDLE;
					end else begin
						tx_state <= S_START;
					end
				end
			end
		endcase
	end
end

endmodule