module WiFi_Protocol_Handler #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN = 32
)(
	input  wire                    clk,
	input  wire                    rst_n,
	
	// --- 來自 Main_Controller 的業務數據與控制 ---
	input  wire [3:0]              previous_system_state,
	input  wire [3:0]              current_system_state,
	input  wire [3:0]              next_system_state,
	
	input  wire [3:0]              trigger_sequence_id,// Wi-Fi 連續資料流種類選擇
	input  wire                    start_send,         // Wi-Fi 連續資料流開始發送旗標(高態觸發)
	output reg                     start_send_ack,     // Wi-Fi 連續資料流開始發送旗標重置旗標
	
	output reg  [7:0]              detected_num,
	
	// --- 介面至 WiFi_Controller ---
	output reg                     send_en,        // Wi-Fi 資料發送旗標(高態觸發)
	input  wire                    send_en_ack,    // Wi-Fi 資料發送旗標重置旗標
	output reg  [3:0]              send_target_id,
	output reg  [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                    tx_busy,
	input  wire                    send_done,
	
	// --- 來自 WiFi_Controller 的接收資料 ---
	input  wire [3:0]              rx_link_id,
	input  wire [15:0]             rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                    rx_data_done,
	output reg                     rx_data_done_ack,
	
	// --- 輸出給 Main_Controller 的解析結果 ---
	output reg                     connect_done_pulse
);

parameter CLK_FREQ = 50_000_000;
reg [31:0] delay_cnt;

// =================================================================
// 接收解析區段 (Rx Parser)
// =================================================================
wire [7:0] rx_bytes [0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_UNPACK
		assign rx_bytes[g] = rx_data_reg[8*g +: 8];
	end
endgenerate

integer i;
reg [7:0] new_num;
reg       found_num;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		connect_done_pulse <= 1'b0;
		rx_data_done_ack   <= 1'b0;
		new_num            <= "";
		detected_num       <= "";
	end else begin
		rx_data_done_ack   <= 1'b0;
		connect_done_pulse <= 1'b0;
		
		if (rx_data_done) begin
			found_num  <= 1'b0;
			
			for (i = 0; i < MAX_RX_LEN; i = i + 1) begin
				// 偵測 Done
				if (i < MAX_RX_LEN - 4) begin
					if ((rx_bytes[i+4] == "N") && (rx_bytes[i+3] == "u") && 
					(rx_bytes[i+2] == "m") && (rx_bytes[i+1]   == ":")) begin
						found_num <= 1'b1;
						new_num   <= rx_bytes[i];
					end
				end
				
				if (i >= MAX_RX_LEN-1) begin
					rx_data_done_ack <= 1'b1;
				end
			end
		end else begin
			found_num  <= 1'b0;
		end
	end
end



// ====================================================================
// 字串種類列表 (Message Formatter Function)
// 透過編號 (msg_type) 決定要輸出哪一包組合好的字串資料
// ====================================================================
function [8*MAX_TX_LEN-1:0] get_message_string;
	input [3:0] msg_type;
	begin
		case (msg_type)
			4'd0:    get_message_string = "Num:0\r\n";
			4'd1:    get_message_string = "Num:1\r\n";
			4'd2:    get_message_string = "Num:2\r\n";
			4'd3:    get_message_string = "Num:3\r\n";
			4'd4:    get_message_string = "Num:4\r\n";
			4'd5:    get_message_string = "Num:5\r\n";
			4'd6:    get_message_string = "Num:6\r\n";
			4'd7:    get_message_string = "Num:7\r\n";
			4'd8:    get_message_string = "Num:8\r\n";
			4'd9:    get_message_string = "Num:PB[0]\r\n";
			4'd10:   get_message_string = "Num:PB[1]\r\n";
			4'd11:   get_message_string = "Num:PB[2]\r\n";
			4'd12:   get_message_string = "Num:PB[3]\r\n";
			default: get_message_string = "Num:?\r\n";
		endcase
	end
endfunction



// ====================================================================
// 傳送狀態/資料流排程器 (Sequence Dispatcher FSM)
// 負責根據外部傳入的 sequence_id，自動按順序調用「第一個 Case」的字串來發送
// ====================================================================
localparam S_IDLE       = 4'd0,
			  S_FETCH_MSG  = 4'd1,
			  S_WAIT_BUSY  = 4'd2,
			  S_SEND_START = 4'd3,
			  S_WAIT_ACK   = 4'd4,
			  S_NEXT_STEP  = 4'd5,
			  S_FINISH     = 4'd6,
			  S_DELAY      = 4'd7;

reg [3:0] tx_state;
reg [3:0] step_index;      // 記錄當前劇本跑到第幾個步驟
reg [3:0] current_msg_id;  // 當前要發送的字串編號
reg [3:0] active_sequence; // 當前執行的劇本編號

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		tx_state        <= S_IDLE;
		send_en         <= 1'b0;
		send_target_id  <= 4'd0;
		send_data_reg   <= {8*MAX_TX_LEN{1'b0}};
		step_index      <= 4'd0;
		active_sequence <= 3'd0;
		current_msg_id  <= 4'd0;
		start_send_ack  <= 1'b0;
	end else begin
		send_en        <= 1'b0;
		start_send_ack <= 1'b0;
		
		case (tx_state)
			S_IDLE: begin
				// 若 rx_link_id 有效則用它，否則預設指定給連線 0
				send_target_id <= (rx_link_id <= 4'd4) ? rx_link_id : 4'd0;
				if (start_send && !tx_busy) begin
					start_send_ack  <= 1'b1;                // 收到 start_send 高態觸發的時候，發出訊號將 start_send 重置為 0
					active_sequence <= trigger_sequence_id; // 鎖定要執行的劇本
					step_index      <= 4'd0;                // 從劇本的第一步開始
					tx_state        <= S_FETCH_MSG;
				end
			end
			
			// 根據「劇本編號」與「步驟索引」，決定要抓取第一個 Case 的哪一個字串編號
			S_FETCH_MSG: begin
				case (active_sequence)
					4'd0: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd0; // 字串種類 0
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd1: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd1;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd2: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd2;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd3: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd3;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd4: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd4;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd5: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd5;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd6: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd6;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd7: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd7;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd8: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd8;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd9: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd9;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd10: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd10;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd11: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd11;
							default: current_msg_id <= 4'd15;
						endcase
					end
					4'd12: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd12;
							default: current_msg_id <= 4'd15;
						endcase
					end
					
					default: current_msg_id <= 4'd0;
				endcase
				tx_state <= S_WAIT_BUSY;
			end
			
			// 自動偵測 WiFi_Controller 是否允許傳輸 (防呆等待)
			S_WAIT_BUSY: begin
				if (!tx_busy) begin
					send_data_reg <= get_message_string(current_msg_id); // 呼叫第一個 Case 取得字串
					tx_state      <= S_SEND_START;
				end
			end
			
			S_SEND_START: begin
				send_en  <= 1'b1;
				tx_state <= S_WAIT_ACK;
			end
			
			S_WAIT_ACK: begin
				if (send_en_ack) begin
					send_en  <= 1'b0;
					tx_state <= S_NEXT_STEP;
				end
			end
			
			// 檢查該劇本是否還有下一步，沒有的話就結束，有就繼續跑下一個
			S_NEXT_STEP: begin
				case (active_sequence)
					4'd13, 14, 15: begin
						tx_state   <= S_FINISH;
					end
					
					default: begin
						if (step_index < 4'd0) begin
							step_index <= step_index + 1'b1;
							tx_state   <= S_DELAY; // 自動跳轉回開頭選下一筆
						end else begin
							tx_state   <= S_FINISH;
						end
					end
				endcase
			end
			
			S_DELAY: begin
				if ((delay_cnt >= CLK_FREQ / 10) || send_done) begin // 100ms 延遲
					delay_cnt <= 32'd0;
					tx_state  <= S_FETCH_MSG;
				end else begin
					delay_cnt <= delay_cnt + 1'b1;
				end
			end
			
			S_FINISH: begin
				if (send_done) begin
					tx_state <= S_IDLE; // 劇本圓滿執行完畢，回到閒置
				end
			end
			
			default: tx_state <= S_IDLE;
		endcase
	end
end

endmodule