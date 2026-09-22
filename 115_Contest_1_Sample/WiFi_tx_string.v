module WiFi_tx_string #(
	parameter MAX_BYTES = 64,
	parameter CLK_FREQ  = 50_000_000,
	parameter BAUD_RATE = 115200
)(
	input  wire                   clk,
	input  wire                   rst_n,
	
	// 控制與發送暫存器
	input  wire                   tx_start,      // 發起發送脈衝
	input  wire [8*MAX_BYTES-1:0] tx_CmdData_reg,        // 來自 Controller 發送暫存器的指令或資料
	output reg                    WiFi_tx,
	
	// 來自 rx_string 的即時接收監聽
	input  wire                   rx_byte_en,
	input  wire [7:0]             rx_byte,
	
	// 狀態輸出
	output reg                    tx_busy,     // 傳送中或等待 OK 中
	output reg                    tx_done,     // 成功收到 OK/CONNECT 旗標
	output reg                    got_connect, // 收到 CONNECT 旗標
	output reg                    got_ready    // 收到 ready 旗標
);

// -------------------------------------------------------------
// 波特率與位元發送邏輯
// -------------------------------------------------------------
localparam DIV_NUM = CLK_FREQ / BAUD_RATE;
reg [15:0] baud_cnt;
wire       baud_tick = (baud_cnt == DIV_NUM - 1);

always @(posedge clk or negedge rst_n) begin
        if (!rst_n) baud_cnt <= 0;
        else if (tx_sending) begin
            if (baud_tick) baud_cnt <= 0;
            else baud_cnt <= baud_cnt + 1'b1;
        end else baud_cnt <= 0;
end

localparam S_IDLE  = 2'd0,
			  S_START = 2'd1,
			  S_DATA  = 2'd2,
			  S_STOP  = 2'd3;

reg [1:0]  tx_state;
reg [2:0]  bit_idx;
reg [7:0]  byte_cnt;
reg [7:0]  shift_byte;
reg [8*MAX_BYTES-1:0] shift_reg;
reg        tx_sending;
reg        send_finish;
reg        start_tx_req; // 內部內部請求觸發旗標

// -------------------------------------------------------------
// UART 位元發送
// -------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		tx_state    <= S_IDLE;
		WiFi_tx     <= 1'b1;
		tx_sending  <= 1'b0;
		send_finish <= 1'b0;
		bit_idx     <= 3'd0;
		byte_cnt    <= 8'd0;
		shift_reg   <= {8*MAX_BYTES{1'b0}};
		shift_byte  <= 8'h00;
	end else begin
		send_finish <= 1'b0;

		case (tx_state)
			S_IDLE: begin
				WiFi_tx <= 1'b1;
				if (start_tx_req) begin
					shift_reg  <= tx_CmdData_reg;
					byte_cnt   <= 0;
					tx_sending <= 1'b1;
					tx_state   <= S_START;
				end else begin
					tx_sending <= 1'b0;
				end
			end

			S_START: begin
				// 自動略過高位元的 Null (8'h00) 填充，直到抓到第一個有效字元
				if ((shift_reg[8*MAX_BYTES-1 -: 8] == 8'h00) && (byte_cnt < MAX_BYTES)) begin
					shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
					byte_cnt  <= byte_cnt + 1'b1;
				end else if (byte_cnt >= MAX_BYTES) begin
					// 全都是 0，直接結束
					tx_sending  <= 1'b0;
					send_finish <= 1'b1;
					tx_state    <= S_IDLE;
				end else begin
					// 抓到有效字元，準備開始發送 UART
					shift_byte <= shift_reg[8*MAX_BYTES-1 -: 8];
					WiFi_tx    <= 1'b0;
					bit_idx    <= 3'd0;
					if (baud_tick) tx_state <= S_DATA;
				end
			end

			S_DATA: begin
				WiFi_tx <= shift_byte[bit_idx];
				if (baud_tick) begin
					if (bit_idx == 3'd7) tx_state <= S_STOP;
					else bit_idx <= bit_idx + 1'b1;
				end
			end

			S_STOP: begin
				WiFi_tx <= 1'b1; // Stop Bit
				if (baud_tick) begin
					shift_reg <= {shift_reg[8*(MAX_BYTES-1)-1:0], 8'h00};
					byte_cnt  <= byte_cnt + 1'b1;
					// 檢查剩餘的字元是否已傳完
					if (shift_reg[8*(MAX_BYTES-1)-1 -: 8] == 8'h00 || byte_cnt + 1 >= MAX_BYTES) begin
						tx_sending  <= 1'b0;
						send_finish <= 1'b1;
						tx_state    <= S_IDLE;
					end else begin
						tx_state <= S_START;
					end
				end
			end
		endcase
	end
end

// -------------------------------------------------------------
// OK / CONNECT / PROMPT (">") 偵測狀態機
// -------------------------------------------------------------
reg [2:0] ok_step;
reg [2:0] ready_step;
reg       rec_ok;
reg       rec_prompt;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rec_ok      <= 1'b0;
		rec_prompt  <= 1'b0;
		got_connect <= 1'b0;
		ok_step     <= 3'd0;
	end else begin
		rec_ok      <= 1'b0;
		rec_prompt  <= 1'b0;
		got_connect <= 1'b0;

		if (rx_byte_en) begin
			// 檢查是否為 ">" 提示字元
			if (rx_byte == ">" /*8'h3E*/) rec_prompt <= 1'b1;
			
			case (ready_step)
				3'd0: if (rx_byte == "r" || rx_byte == "R") ready_step <= 3'd1;
				3'd1: if (rx_byte == "e" || rx_byte == "E") ready_step <= 3'd2; else ready_step <= 3'd0;
				3'd2: if (rx_byte == "a" || rx_byte == "A") ready_step <= 3'd3; else ready_step <= 3'd0;
				3'd3: if (rx_byte == "d" || rx_byte == "D") ready_step <= 3'd4; else ready_step <= 3'd0;
				3'd4: begin
					ready_step <= 3'd0;
					if (rx_byte == "y" || rx_byte == "Y") got_ready <= 1'b1;
					else got_ready <= 1'b0;
				end
				default: ready_step <= 3'd0;
			endcase
			
			// 檢查 "OK\r\n" 匹配
			case (ok_step)
				3'd0: begin
					if (rx_byte == "O") begin
						ok_step <= 3'd1;
					end
				end
				3'd1: begin
					if (rx_byte == "K") begin
						ok_step <= 3'd2;
					end else if (rx_byte == "O") begin
						ok_step <= 3'd1; // 防止連續 'O' 導致漏字
					end else begin
						ok_step <= 3'd0;
					end
				end
				3'd2: begin
					if (rx_byte == "\r" /*8'h0D*/) begin
						ok_step <= 3'd3;
					end else begin
						ok_step <= 3'd0;
					end
				end
				3'd3: begin
					ok_step <= 3'd0;
					if (rx_byte == "\n" /*8'h0A*/) rec_ok <= 1'b1;
				end
				default: ok_step <= 3'd0;
			endcase
		end
	end
end

// -------------------------------------------------------------
// 傳輸控制流程：發送完畢後等待 OK 或 PROMPT 才能 finish
// -------------------------------------------------------------
localparam ST_WAIT_TRIG = 2'd0,
			  ST_SENDING   = 2'd1,
			  ST_WAIT_RESP = 2'd2;

reg [1:0] flow_state;
reg [25:0] timeout_cnt; // 50MHz 下約 1.3 秒的計數器

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		flow_state   <= ST_WAIT_TRIG;
		tx_busy      <= 1'b0;
		tx_done      <= 1'b0;
		start_tx_req <= 1'b0;
		timeout_cnt  <= 26'd0;
	end else begin
		tx_done <= 1'b0;
		start_tx_req <= 1'b0;
		
		case (flow_state)
			ST_WAIT_TRIG: begin
				if (tx_start) begin
					timeout_cnt <= 26'd0;
					tx_busy      <= 1'b1;
					start_tx_req <= 1'b1;
					flow_state   <= ST_SENDING;
				end else begin
					tx_busy <= 1'b0;
				end
			end

			ST_SENDING: begin
				timeout_cnt <= 26'd0;
				if (send_finish) begin
					flow_state <= ST_WAIT_RESP;
				end
			end

			ST_WAIT_RESP: begin
				// 收到 OK 或 '>' 提示符即代表該次指令成功回應
				if (rec_ok || rec_prompt /*|| timeout_cnt >= 26'd50_000_000*/) begin
					tx_done   <= 1'b1;
					tx_busy    <= 1'b0;
					flow_state <= ST_WAIT_TRIG;
				end else begin
					timeout_cnt <= timeout_cnt + 1'b1;
				end
			end
		endcase
	end
end

endmodule