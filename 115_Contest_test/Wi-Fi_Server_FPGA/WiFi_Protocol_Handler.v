module WiFi_Protocol_Handler #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN = 32
)(
	input  wire                   clk,
	input  wire                   rst_n,
	
	// --- 來自 Main_Controller 的業務數據與控制 ---
	input  wire [3:0]             system_state,       // 當前系統狀態
	input  wire [2:0]             trigger_sequence_id,// 外部指定要執行的「傳送劇本編號」(對應第二個 Case 的狀態)
	input  wire                   start_sequence,     // 觸發該劇本開始執行的脈衝
	
	input  wire [23:0]            orderQuantity,      // 訂購數量
	input  wire [23:0]            bidAmount,          // 出價金額
	input  wire [23:0]            productQuota,       // 商品配額
	input  wire [47:0]            grandTotal,         // 付款總額
	
	// --- 介面至 WiFi_Controller ---
	output reg                    send_en,
	input  wire                   send_en_ack,
	output reg  [3:0]             send_target_id,
	output reg  [8*MAX_TX_LEN-1:0] send_data_reg,
	input  wire                   tx_busy,
	input  wire                   send_done,
	
	// --- 來自 WiFi_Controller 的接收資料 ---
	input  wire [3:0]             rx_link_id,
	input  wire [15:0]            rx_data_len,
	input  wire [8*MAX_RX_LEN-1:0] rx_data_reg,
	input  wire                   rx_done,
	output reg                    rx_data_done_ack,
	
	// --- 輸出給 Main_Controller 的解析結果 ---
	output reg  [31:0]            detected_order_ID,
	output reg                    connect_done_pulse
);

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
reg [31:0] temp_order_id;
reg        found_done, found_id;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		detected_order_ID  <= 32'd0;
		connect_done_pulse <= 1'b0;
		rx_data_done_ack   <= 1'b0;
	end else begin
		rx_data_done_ack   <= 1'b0;
		connect_done_pulse <= 1'b0;
		
		if (rx_done) begin
			rx_data_done_ack <= 1'b1;
			found_done = 1'b0;
			found_id   = 1'b0;
			
			for (i = 0; i < MAX_RX_LEN - 3; i = i + 1) begin
				if ((rx_bytes[i+3] == "D") && (rx_bytes[i+2] == "o") && 
				(rx_bytes[i+1] == "n") && (rx_bytes[i]   == "e")) begin
					found_done = 1'b1;
				end
				if (i <= MAX_RX_LEN - 6) begin
					if ((rx_bytes[i+5] == "I") && (rx_bytes[i+4] == "D") && (rx_bytes[i+3] == ":") &&
					(rx_bytes[i+2] == "9") && (rx_bytes[i+1] == "9")) begin
						found_id = 1'b1;
						temp_order_id = {rx_bytes[i+5], rx_bytes[i+4], rx_bytes[i+3], rx_bytes[i+2], rx_bytes[i+1], rx_bytes[i]};
					end
				end
			end
			
			if (found_done) connect_done_pulse <= 1'b1;
			if (found_id)   detected_order_ID  <= temp_order_id;
        end
    end
end


// =================================================================
// 動態變數轉 ASCII (隨時反應 Main_Controller 計算結果)
// =================================================================
wire [7:0] q_tens = "0" + (orderQuantity[23:16] / 10);
wire [7:0] q_ones = "0" + (orderQuantity[23:16] % 10);
wire [7:0] a_tens = "0" + (bidAmount[23:16] / 10);
wire [7:0] a_ones = "0" + (bidAmount[23:16] % 10);
wire [7:0] p_tens = "0" + (productQuota[23:16] / 10);
wire [7:0] p_ones = "0" + (productQuota[23:16] % 10);
wire [7:0] t_thou = "0" + ((grandTotal[47:32] % 10000) / 1000);
wire [7:0] t_hund = "0" + ((grandTotal[47:32] % 1000) / 100);
wire [7:0] t_tens = "0" + ((grandTotal[47:32] % 100) / 10);
wire [7:0] t_ones = "0" + (grandTotal[47:32] % 10);



// =================================================================
// 第一個 Case：字串種類列表 (Message Formatter Function)
// 透過編號 (msg_type) 決定要輸出哪一包組合好的字串資料
// =================================================================
function [8*MAX_TX_LEN-1:0] get_message_string;
	input [3:0] msg_type;
	begin
		case (msg_type)
			4'd1:    get_message_string = "ID:0302\r\n";
			4'd2:    get_message_string = {"QA:00", q_tens, q_ones, "00", a_tens, a_ones, "\r\n"};
			4'd3:    get_message_string = {"QT:#", p_tens, p_ones, "$", t_thou, t_hund, t_tens, t_ones, "\r\n"};
			4'd4:    get_message_string = "QT:YES\r\n";
			4'd5:    get_message_string = "QT:NO\r\n";
			default: get_message_string = "ERR\r\n";
		endcase
	end
endfunction



// =================================================================
// 第二個 Case：傳送狀態/劇本排程器 (Sequence Dispatcher FSM)
// 負責根據外部傳入的 sequence_id，自動按順序調用「第一個 Case」的字串來發送
// =================================================================
localparam S_IDLE       = 4'd0,
			  S_FETCH_MSG  = 4'd1,
			  S_WAIT_BUSY  = 4'd2,
			  S_SEND_START = 4'd3,
			  S_WAIT_ACK   = 4'd4,
			  S_NEXT_STEP  = 4'd5,
			  S_FINISH     = 4'd6;

reg [3:0] tx_state;
reg [2:0] step_index;     // 記錄當前劇本跑到第幾個步驟
reg [3:0] current_msg_id; // 當前要發送的字串編號
reg [2:0] active_sequence;  // 當前執行的劇本編號

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		tx_state        <= S_IDLE;
		send_en         <= 1'b0;
		send_target_id  <= 4'd0;
		send_data_reg   <= {8*MAX_TX_LEN{1'b0}};
		step_index      <= 3'd0;
		active_sequence <= 3'd0;
		current_msg_id  <= 4'd0;
	end else begin
		send_en <= 1'b0;
		
		case (tx_state)
			S_IDLE: begin
				send_target_id <= rx_link_id;
				if (start_sequence && !tx_busy) begin
					active_sequence <= trigger_sequence_id; // 鎖定要執行的劇本
					step_index      <= 3'd0;                // 從劇本的第一步開始
					tx_state        <= S_FETCH_MSG;
				end
			end
			
			// 根據「劇本編號」與「步驟索引」，決定要抓取第一個 Case 的哪一個字串編號
			S_FETCH_MSG: begin
				case (active_sequence)
					// 劇本 1：標準連線同步回應 (依序發送第 1, 2, 3 種字串)
					3'd1: begin
						case (step_index)
							3'd0: current_msg_id <= 4'd1; // 字串種類 1 (ID)
							3'd1: current_msg_id <= 4'd2; // 字串種類 2 (QA)
							3'd2: current_msg_id <= 4'd3; // 字串種類 3 (QT)
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 劇本 2：僅回應確認結果 (依序發送第 4 種字串)
					3'd2: begin
						case (step_index)
							3'd0: current_msg_id <= 4'd4; // 字串種類 4 (YES)
							default: current_msg_id <= 4'd0;
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
					3'd1: begin
						if (step_index < 3'd2) begin // 劇本 1 共有 3 步 (index 0~2)
							step_index <= step_index + 1'b1;
							tx_state   <= S_FETCH_MSG;    // 自動跳轉回開頭選下一筆
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					3'd2: begin
						if (step_index < 3'd0) begin // 劇本 2 只有 1 步
							step_index <= step_index + 1'b1;
							tx_state   <= S_FETCH_MSG;
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					default: tx_state <= S_FINISH;
				endcase
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