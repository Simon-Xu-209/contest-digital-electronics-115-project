module tx_buffer_controller #(
	parameter MAX_BYTES = 64
)(
	input  wire                   clk,
	input  wire                   rst_n,
	
	input  wire                   send_req,
	input  wire [3:0]             target_id,
	
	input  wire [31:0]            sendID,
	input  wire [63:0]            sendQA,
	input  wire [63:0]            sendQT,
	
	// 新增硬體握手輸入訊號
	input  wire                   rec_ok,      // 收到 "SEND OK\r\n"
	input  wire                   rec_prompt,  // 收到 ">"
	
	output reg                    tx_reg_busy,
	output reg                    uart_tx_start,
	output reg  [8*MAX_BYTES-1:0] uart_tx_cmd,
	input  wire                   cmd_done
);

	// 重新定義狀態，增加 Timeout 超時機制防卡死
localparam S_IDLE         = 3'd0,
			  S_SEND_CIPSEND = 3'd1,
			  S_WAIT_PROMPT  = 3'd2, // 等待 > 提示符
			  S_SEND_PAYLOAD = 3'd3,
			  S_WAIT_SEND_OK = 3'd4, // 等待 SEND OK 確定傳送完畢
			  S_DELAY_NEXT   = 3'd5;

reg [2:0]               state;
reg [8*MAX_BYTES-1:0]   latch_payload;
reg [3:0]               latch_id;
reg [7:0]               latch_len;
reg [25:0]              timeout_cnt; // 防呆超時計數器 (約 500ms)
reg [1:0]               seq_step;

wire [7:0] ascii_id       = "0" + latch_id;
wire [7:0] ascii_len_tens = "0" + (latch_len / 10);
wire [7:0] ascii_len_ones = "0" + (latch_len % 10);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state         <= S_IDLE;
		tx_reg_busy   <= 1'b0;
		uart_tx_start <= 1'b0;
		uart_tx_cmd   <= {8*MAX_BYTES{1'b0}};
		latch_payload <= {8*MAX_BYTES{1'b0}};
		latch_id      <= 4'd0;
		latch_len     <= 8'd0;
		timeout_cnt   <= 26'd0;
		seq_step      <= 2'd0;
	end else begin
		uart_tx_start <= 1'b0;

		case (state)
			S_IDLE: begin
				tx_reg_busy <= 1'b0;
				if (send_req) begin
					tx_reg_busy   <= 1'b1;
					latch_id      <= target_id;
					seq_step      <= 2'd0;
					
					latch_len     <= 8'd9;
					latch_payload <= {"ID:", sendID, "\r\n"};
					state         <= S_SEND_CIPSEND;
				end
			end

			S_SEND_CIPSEND: begin
				if (latch_len >= 10) begin
					uart_tx_cmd <= {"AT+CIPSEND=", ascii_id, ",", ascii_len_tens, ascii_len_ones, "\r\n"};
				end else begin
					uart_tx_cmd <= {"AT+CIPSEND=", ascii_id, ",", ascii_len_ones, "\r\n"};
				end
				
				uart_tx_start <= 1'b1;
				timeout_cnt   <= 26'd0;
				state         <= S_WAIT_PROMPT;
			end

			// 依靠 rec_prompt 跳轉，並附帶 500ms 防呆 Timeout
			S_WAIT_PROMPT: begin
				if (rec_prompt) begin
					state <= S_SEND_PAYLOAD;
				end else if (timeout_cnt < 26'd25_000_000) begin // 500ms
					timeout_cnt <= timeout_cnt + 1'b1;
				end else begin
					// 超時卡住直接放棄本次發送，回到 IDLE
					tx_reg_busy <= 1'b0;
					state       <= S_IDLE;
				end
			end

			S_SEND_PAYLOAD: begin
				uart_tx_cmd   <= latch_payload;
				uart_tx_start <= 1'b1;
				timeout_cnt   <= 26'd0;
				state         <= S_WAIT_SEND_OK;
			end

			// 依靠 rec_ok 跳轉（確認收到 SEND OK）
			S_WAIT_SEND_OK: begin
				if (rec_ok) begin
					if (seq_step < 2'd2) begin
						seq_step    <= seq_step + 1'b1;
						timeout_cnt <= 26'd0;
						state       <= S_DELAY_NEXT;
					end else begin
						tx_reg_busy <= 1'b0;
						state       <= S_IDLE;
					end
				end else if (timeout_cnt < 26'd25_000_000) begin // 500ms
					timeout_cnt <= timeout_cnt + 1'b1;
				end else begin
					tx_reg_busy <= 1'b0;
					state       <= S_IDLE;
				end
			end

			S_DELAY_NEXT: begin
				// 給 ESP8266 50ms (2,500,000 cycles) 的微小緩衝時間後，直接送下一筆
				if (timeout_cnt < 26'd2_500_000) begin
					timeout_cnt <= timeout_cnt + 1'b1;
				end else begin
					case (seq_step)
						2'd1: begin
							latch_len     <= 8'd13;
							latch_payload <= {"QA:", sendQA, "\r\n"};
						end
						2'd2: begin
							latch_len     <= 8'd13;
							latch_payload <= {"QT:", sendQT, "\r\n"};
						end
						default: ;
					endcase
					state <= S_SEND_CIPSEND;
				end
			end

			default: state <= S_IDLE;
		endcase
	end
end

endmodule