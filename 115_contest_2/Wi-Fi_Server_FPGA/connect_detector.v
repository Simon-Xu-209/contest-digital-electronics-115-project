module connect_detector (
	input  wire       clk,
	input  wire       rst_n,
	input  wire       rx_byte_en,   // 來自 UART_rx_string 的 Byte 致能
	input  wire [7:0] rx_byte,      // 來自 UART_rx_string 的 Byte 資料
	input  wire       init_done,    // AT 初始化完成旗標
	
	output reg  [3:0] client_id,    // 當前連線/斷線的 Client ID (0~4)
	output reg        is_connected, // 連線狀態暫存器 (1:已連線, 0:未連線)
	output reg        conn_pulse,   // 連線觸發單週期脈衝
	output reg        client_closed // 斷線觸發單週期脈衝
);

// =========================================================
// 狀態機：比對 "<ID>,CONNECT" 與 "<ID>,CLOSED"
// =========================================================
reg [3:0] parse_state;
reg [3:0] temp_id;

localparam ST_IDLE  = 4'd0,
           ST_COMMA = 4'd2,
           ST_C     = 4'd3,
           ST_O     = 4'd4,
           ST_N1    = 4'd5,
           ST_N2    = 4'd6,
           ST_E     = 4'd7,
           ST_C2    = 4'd8,
           ST_T     = 4'd9,
           ST_L     = 4'd10,
           ST_S     = 4'd11,
           ST_ED    = 4'd12;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		parse_state   <= ST_IDLE;
		temp_id       <= 4'd0;
		client_id     <= 4'd0;
		is_connected  <= 1'b0;
		conn_pulse    <= 1'b0;
		client_closed <= 1'b0;
	end else begin
		conn_pulse    <= 1'b0;
		client_closed <= 1'b0;

		if (init_done && rx_byte_en) begin
			case (parse_state)
				ST_IDLE: begin
					if (rx_byte >= "0" && rx_byte <= "9") begin
						temp_id     <= rx_byte - "0";
						parse_state <= ST_COMMA;
					end
				end

				ST_COMMA: begin
					if (rx_byte == ",")
						parse_state <= ST_C;
					else
						parse_state <= ST_IDLE;
				end

				ST_C: begin
					if (rx_byte == "C") parse_state <= ST_O;
					else parse_state <= ST_IDLE;
				end

				ST_O: begin
					if (rx_byte == "O") parse_state <= ST_N1;
					else if (rx_byte == "L") parse_state <= ST_L;
					else parse_state <= ST_IDLE;
				end

				// --- 比對 CONNECT ---
				ST_N1: begin if (rx_byte == "N") parse_state <= ST_N2; else parse_state <= ST_IDLE; end
				ST_N2: begin if (rx_byte == "N") parse_state <= ST_E;  else parse_state <= ST_IDLE; end
				ST_E:  begin if (rx_byte == "E") parse_state <= ST_C2; else parse_state <= ST_IDLE; end
				ST_C2: begin if (rx_byte == "C") parse_state <= ST_T;  else parse_state <= ST_IDLE; end
				ST_T:  begin
					if (rx_byte == "T") begin
						client_id    <= temp_id;
						is_connected <= 1'b1;
						conn_pulse   <= 1'b1;
					end
					parse_state <= ST_IDLE;
				end

				// --- 比對 CLOSED ---
				ST_L:  begin if (rx_byte == "O") parse_state <= ST_S;  else parse_state <= ST_IDLE; end
				ST_S:  begin if (rx_byte == "S") parse_state <= ST_ED; else parse_state <= ST_IDLE; end
				ST_ED: begin
					if (rx_byte == "E") begin
						client_id     <= temp_id;
						is_connected  <= 1'b0;
						client_closed <= 1'b1;
					end
					parse_state <= ST_IDLE;
				end

				default: parse_state <= ST_IDLE;
			endcase
		end
	end
end

endmodule