module ESP8266_Response_Checker #(
	parameter CLK_FREQ = 50_000_000
)(
	input  wire       clk,
	input  wire       rst_n,
	
	input  wire       check_enable,   // 觸發檢查使能
	
	input  wire       rx_byte_en,
	input  wire [7:0] rx_byte,
	
	output reg        checking,       // 正在檢查回應中
	output reg        resp_ok,        // 成功收到 OK 或 '>'
	output reg        got_ready,      // 收到 ready
	output reg        resp_timeout    // 回應超時
);

localparam ST_IDLE = 1'b0,
           ST_CHK  = 1'b1;

reg        state;
reg [25:0] timeout_cnt;
reg [2:0]  ok_step;
reg [2:0]  ready_step;

// -------------------------------------------------------------
// 獨立監聽 "ready"（不受主 FSM 狀態限制，隨時接收重啟訊號）
// -------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		ready_step <= 3'd0;
		got_ready  <= 1'b0;
	end else begin
		got_ready <= 1'b0; // 預設維持 1-Clock Cycle 的 High Pulse
		
		if (rx_byte_en) begin
			case (ready_step)
				3'd0: if (rx_byte == "r" || rx_byte == "R") ready_step <= 3'd1;
				3'd1: if (rx_byte == "e" || rx_byte == "E") ready_step <= 3'd2; else ready_step <= 3'd0; // 比對失敗即歸零重來
				3'd2: if (rx_byte == "a" || rx_byte == "A") ready_step <= 3'd3; else ready_step <= 3'd0;
				3'd3: if (rx_byte == "d" || rx_byte == "D") ready_step <= 3'd4; else ready_step <= 3'd0;
				3'd4: begin
					ready_step <= 3'd0;
					if (rx_byte == "y" || rx_byte == "Y") got_ready <= 1'b1;
				end
				default: ready_step <= 3'd0;
			endcase
		end
	end
end

// -------------------------------------------------------------
// 指令回應檢查器 (OK / > / Timeout)
// -------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		state        <= ST_IDLE;
		checking     <= 1'b0;
		resp_ok      <= 1'b0;
		resp_timeout <= 1'b0; // 清除錯誤
		timeout_cnt  <= 26'd0;
		ok_step      <= 3'd0;
	end else begin
		resp_ok      <= 1'b0;
		resp_timeout <= 1'b0;

		case (state)
			ST_IDLE: begin
				checking    <= 1'b0;
				ok_step     <= 3'd0;
				timeout_cnt <= 26'd0;

				if (check_enable) begin
					checking <= 1'b1;
					state    <= ST_CHK;
				end
			end

			ST_CHK: begin
				checking <= 1'b1;
				
				// 超時保護 (約 1.3 秒)
				if (timeout_cnt >= CLK_FREQ + (CLK_FREQ >> 2)) begin
					resp_timeout <= 1'b1;
					checking     <= 1'b0;
					state        <= ST_IDLE;
				end else begin
					timeout_cnt <= timeout_cnt + 1'b1;
				end

				if (rx_byte_en) begin
					// 檢查 '>'
					if (rx_byte == ">") begin
						resp_ok  <= 1'b1;
						checking <= 1'b0;
						state    <= ST_IDLE;
					end

					// 檢查 "OK\r\n"
					case (ok_step)
						3'd0: if (rx_byte == "O") ok_step <= 3'd1;
						3'd1: if (rx_byte == "K") ok_step <= 3'd2; else if (rx_byte == "O") ok_step <= 3'd1; else ok_step <= 3'd0;
						3'd2: if (rx_byte == "\r") ok_step <= 3'd3; else ok_step <= 3'd0;
						3'd3: begin
							ok_step <= 3'd0;
							if (rx_byte == "\n") begin
								resp_ok  <= 1'b1;
								checking <= 1'b0;
								state    <= ST_IDLE;
							end
						end
						default: ok_step <= 3'd0;
					endcase
				end
			end
		endcase
	end
end

endmodule