module UART_rx_string #(
	parameter MAX_BYTES = 32,
	parameter CLK_FREQ  = 50_000_000,
	parameter BAUD_RATE = 115200
)(
	input  wire                   clk,
	input  wire                   rst_n,
	input  wire                   rx,
	
	// 輸出至 WiFi_tx_string 供其檢查回應字元
	output reg                    rx_byte_en,
	output reg  [7:0]             rx_byte,
	
	// 資料暫存器與狀態
	output reg  [3:0]             link_ID,         // 連線 ID 暫存器
	output reg  [15:0]            rx_Data_len,     // 資料位元組長度暫存器
	output reg  [8*MAX_BYTES-1:0] rx_Data_reg,     // 資料暫存器 (Payload)
	output reg                    rx_done,         // 接收完成脈衝
	output reg                    Data_reg_busy    // 接收中忙碌旗標
);

// -------------------------------------------------------------
// UART 核心位元採樣
// -------------------------------------------------------------
localparam SAMPLE_TICKS = CLK_FREQ / BAUD_RATE;

reg [15:0] cnt;
reg [3:0]  bit_cnt;
reg [7:0]  rdata;
reg [1:0]  rx_state;

localparam RX_IDLE  = 2'd0, RX_START = 2'd1, RX_DATA = 2'd2, RX_STOP = 2'd3;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		cnt        <= 16'd0;
		bit_cnt    <= 4'd0;
		rdata      <= 8'd0;
		rx_byte_en <= 1'b0;
		rx_state   <= RX_IDLE;
		rx_byte    <= 8'd0;
	end else begin
		rx_byte_en <= 1'b0;
		case (rx_state)
			RX_IDLE: begin
				if (!rx) begin
					rx_state <= RX_START;
					cnt      <= SAMPLE_TICKS / 2;
				end
			end
			RX_START: begin
				if (cnt == SAMPLE_TICKS - 1) begin
					cnt      <= 16'd0;
					bit_cnt  <= 4'd0;
					rx_state <= RX_DATA;
				end else cnt <= cnt + 1'b1;
			end
			RX_DATA: begin
				if (cnt == SAMPLE_TICKS - 1) begin
					cnt            <= 16'd0;
					rdata[bit_cnt] <= rx;
					bit_cnt        <= bit_cnt + 1'b1;
					if (bit_cnt == 4'd7) rx_state <= RX_STOP;
				end else cnt <= cnt + 1'b1;
			end
			RX_STOP: begin
				if (cnt == SAMPLE_TICKS - 1) begin
					cnt        <= 16'd0;
					rx_byte    <= rdata;
					rx_byte_en <= 1'b1;
					rx_state   <= RX_IDLE;
				end else cnt <= cnt + 1'b1;
			end
			default: rx_state <= RX_IDLE;
		endcase
	end
end

// -------------------------------------------------------------
// IPD 封包解析器 (+IPD,<ID>,<LEN>:<Data>)
// -------------------------------------------------------------
localparam S_SEARCH_PLUS = 3'd0,
			  S_MATCH_IPD   = 3'd1,
			  S_PARSE_ID    = 3'd2,
			  S_PARSE_LEN   = 3'd3,
			  S_RECV_DATA   = 3'd4;

reg [2:0]  parse_state;
reg [1:0]  ipd_step;
reg [15:0] data_cnt;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		parse_state   <= S_SEARCH_PLUS;
		ipd_step      <= 2'd0;
		link_ID       <= 4'd0;
		rx_Data_len   <= 16'd0;
		rx_Data_reg   <= {8*MAX_BYTES{1'b0}};
		data_cnt      <= 16'd0;
		rx_done      <= 1'b0;
		Data_reg_busy <= 1'b0;
	end else begin
		rx_done <= 1'b0;

		if (rx_byte_en) begin
			case (parse_state)
				S_SEARCH_PLUS: begin
					if (rx_byte == "+") begin
						Data_reg_busy <= 1'b1;
						ipd_step      <= 2'd0;
						parse_state   <= S_MATCH_IPD;
					end else begin
						Data_reg_busy <= 1'b0;
					end
				end

				S_MATCH_IPD: begin
					case (ipd_step)
						2'd0: if (rx_byte == "I") ipd_step <= 2'd1; else parse_state <= S_SEARCH_PLUS;
						2'd1: if (rx_byte == "P") ipd_step <= 2'd2; else parse_state <= S_SEARCH_PLUS;
						2'd2: if (rx_byte == "D") ipd_step <= 2'd3; else parse_state <= S_SEARCH_PLUS;
						2'd3: begin
							if (rx_byte == ",") begin
								link_ID     <= 4'd0;
								parse_state <= S_PARSE_ID;
							end else parse_state <= S_SEARCH_PLUS;
						end
					endcase
				end

				S_PARSE_ID: begin
					if (rx_byte >= "0" && rx_byte <= "9") begin
						link_ID <= rx_byte - "0";
					end else if (rx_byte == ",") begin
						rx_Data_len <= 16'd0;
						parse_state <= S_PARSE_LEN;
					end else parse_state <= S_SEARCH_PLUS;
				end

				S_PARSE_LEN: begin
					if (rx_byte >= "0" && rx_byte <= "9") begin
						rx_Data_len <= (rx_Data_len * 10) + (rx_byte - "0");
					end else if (rx_byte == ":") begin
						data_cnt    <= 16'd0;
						rx_Data_reg <= {8*MAX_BYTES{1'b0}};
						parse_state <= S_RECV_DATA;
					end else parse_state <= S_SEARCH_PLUS;
				end

				S_RECV_DATA: begin
					rx_Data_reg <= {rx_Data_reg[8*(MAX_BYTES-1)-1:0], rx_byte};

					if (data_cnt + 1'b1 >= rx_Data_len || data_cnt + 1'b1 >= MAX_BYTES) begin
						rx_done      <= 1'b1;
						Data_reg_busy <= 1'b0;
						parse_state   <= S_SEARCH_PLUS;
					end else begin
						data_cnt <= data_cnt + 1'b1;
					end
				end

				default: parse_state <= S_SEARCH_PLUS;
			endcase
		end
	end
end

endmodule