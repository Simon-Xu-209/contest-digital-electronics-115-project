module WiFi_Protocol_Handler #(
	parameter MAX_TX_LEN = 64,
	parameter MAX_RX_LEN = 32
)(
	input  wire                    clk,
	input  wire                    rst_n,
	
	// --- 來自 Main_Controller 的業務數據與控制 ---
	input  wire [3:0]              system_state,       // 當前系統狀態
	/*
	input  wire [3:0]              trigger_sequence_id,// Wi-Fi 連續資料流種類選擇
	input  wire                    start_send,         // Wi-Fi 連續資料流開始發送旗標(高態觸發)
	output reg                     start_send_ack,     // Wi-Fi 連續資料流開始發送旗標重置旗標
	*/
	input  wire [23:0]             orderQuantity,      // 訂購數量
	input  wire [23:0]             bidAmount,          // 出價金額
	input  wire [23:0]             productQuota,       // 商品配額
	input  wire [47:0]             grandTotal,         // 付款總額
	
	output reg  [7:0]              new_orderQuantity_xx,
	output reg  [7:0]              new_bidAmount_xx,
	
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
	output reg  [15:0]             new_order_id_confirm,
	output reg                     connect_done_pulse
);

parameter CLK_FREQ = 50_000_000;
reg [31:0] delay_cnt;

reg [3:0] trigger_sequence_id;// Wi-Fi 連續資料流種類選擇
reg       start_send;         // Wi-Fi 連續資料流開始發送旗標(高態觸發)
reg       start_send_ack;     // Wi-Fi 連續資料流開始發送旗標重置旗標

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
reg [15:0] temp_order_id;
reg [15:0] new_order_id;
reg [7:0]  new_quantity_xx_tens, new_quantity_xx_ones;
reg [7:0]  new_amount_xx_tens,   new_amount_xx_ones;
reg        found_done, found_id, found_newid, found_newqa;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		new_order_id <= 16'd0;
		new_order_id_confirm  <= 16'd0;
		connect_done_pulse <= 1'b0;
		rx_data_done_ack   <= 1'b0;
	end else begin
		rx_data_done_ack   <= 1'b0;
		connect_done_pulse <= 1'b0;
		
		if (rx_data_done) begin
			found_done  <= 1'b0;
			found_id    <= 1'b0;
			found_newid <= 1'b0;
			found_newqa <= 1'b0;
			
			for (i = 0; i < MAX_RX_LEN; i = i + 1) begin
				// 偵測 Done
				if (i < MAX_RX_LEN - 3) begin
					if ((rx_bytes[i+3] == "D") && (rx_bytes[i+2] == "o") && 
					(rx_bytes[i+1] == "n") && (rx_bytes[i]   == "e")) begin
						found_done <= 1'b1;
					end
				end
				// 偵測 ID:99XX
				if (i < MAX_RX_LEN - 6) begin
					if ((rx_bytes[i+6] == "I") && (rx_bytes[i+5] == "D") && (rx_bytes[i+4] == ":") && 
					(rx_bytes[i+3] == "9") && (rx_bytes[i+2] == "9")) begin
						found_id      <= 1'b1;
						temp_order_id <= {rx_bytes[i+1], rx_bytes[i]};
					end
				end
				// 偵測 NewID:98XX
				if (i < MAX_RX_LEN - 9) begin
					if ((rx_bytes[i+9] == "N") && (rx_bytes[i+8] == "e") && (rx_bytes[i+7] == "w") && 
					(rx_bytes[i+6] == "I") && (rx_bytes[i+5] == "D") && (rx_bytes[i+4] == ":") && 
					(rx_bytes[i+3] == "9") && (rx_bytes[i+2] == "8")) begin
						found_newid  <= 1'b1;
						new_order_id <= {rx_bytes[i+1], rx_bytes[i]};
					end
				end
				// 偵測 NewQA:XXXXXXXX
				if (i < MAX_RX_LEN - 13) begin
					if ((rx_bytes[i+13] == "N") && (rx_bytes[i+12] == "e") && (rx_bytes[i+11] == "w") && 
					(rx_bytes[i+10] == "Q") && (rx_bytes[i+9] == "A") && (rx_bytes[i+8] == ":")) begin
						found_newqa          <= 1'b1;
						new_quantity_xx_tens <= rx_bytes[i+5]; new_quantity_xx_ones <= rx_bytes[i+4];
						new_amount_xx_tens   <= rx_bytes[i+1]; new_amount_xx_ones   <= rx_bytes[i];
					end
				end
				
				if (i >= MAX_RX_LEN-1) begin
					rx_data_done_ack <= 1'b1;
				end
			end
		end else begin
			found_done  <= 1'b0;
			found_id    <= 1'b0;
			found_newid <= 1'b0;
			found_newqa <= 1'b0;
		end
		
		if (found_done) begin
			if (new_order_id == 16'd0) begin
				trigger_sequence_id <= 4'd1;
			end else begin
				trigger_sequence_id <= 4'd2;
			end
			connect_done_pulse  <= 1'b1;
			start_send          <= 1'b1;
		end
		
		if (found_id) begin
			start_send <= 1'b1;
			case(temp_order_id)
				"03": begin
					trigger_sequence_id <= 4'd3;
				end
				"02": begin
					trigger_sequence_id <= 4'd4;
				end
				new_order_id_confirm: begin
					trigger_sequence_id <= 4'd5;
				end
				default: begin
					trigger_sequence_id <= 4'd7;
				end
			endcase
		end
		
		if (found_newid && found_newqa) begin
			start_send <= 1'b1;
			if (((new_order_id == 16'd0) || (new_order_id != new_order_id_confirm)) && (new_order_id != "03") && (new_order_id != "02")) begin
				trigger_sequence_id  <= 4'd6;
				new_order_id_confirm <= new_order_id;
				new_orderQuantity_xx <= (new_quantity_xx_tens - "0")*10 + (new_quantity_xx_ones - "0");
				new_bidAmount_xx     <= (new_amount_xx_tens - "0")*10 + (new_amount_xx_ones - "0");
			end else begin
				trigger_sequence_id <= 4'd7;
			end
		end
		
		if (start_send_ack) begin
			start_send <= 1'b0;
		end
	end
end



// =================================================================
// 動態變數轉 ASCII (隨時反應 Main_Controller 計算結果)
// =================================================================
// orderQuantity 的十位數與個位數 ASCII
wire [7:0] quantity_03_tens = "0" + (orderQuantity[23:16] / 10);
wire [7:0] quantity_03_ones = "0" + (orderQuantity[23:16] % 10);
wire [7:0] quantity_02_tens = "0" + (orderQuantity[15:8]  / 10);
wire [7:0] quantity_02_ones = "0" + (orderQuantity[15:8]  % 10);
wire [7:0] quantity_xx_tens = "0" + (orderQuantity[7:0]   / 10);
wire [7:0] quantity_xx_ones = "0" + (orderQuantity[7:0]   % 10);

// bidAmount 的十位數與個位數 ASCII
wire [7:0] amount_03_tens = "0" + (bidAmount[23:16] / 10);
wire [7:0] amount_03_ones = "0" + (bidAmount[23:16] % 10);
wire [7:0] amount_02_tens = "0" + (bidAmount[15:8]  / 10);
wire [7:0] amount_02_ones = "0" + (bidAmount[15:8]  % 10);
wire [7:0] amount_xx_tens = "0" + (bidAmount[7:0]   / 10);
wire [7:0] amount_xx_ones = "0" + (bidAmount[7:0]   % 10);

// productQuota 的十位數與個位數 ASCII
wire [7:0] quota_03_tens = "0" + (productQuota[23:16] / 10);
wire [7:0] quota_03_ones = "0" + (productQuota[23:16] % 10);
wire [7:0] quota_02_tens = "0" + (productQuota[15:8]  / 10);
wire [7:0] quota_02_ones = "0" + (productQuota[15:8]  % 10);
wire [7:0] quota_xx_tens = "0" + (productQuota[7:0]   / 10);
wire [7:0] quota_xx_ones = "0" + (productQuota[7:0]   % 10);

// grandTotal 的十位數與個位數 ASCII
wire [7:0] total_03_thousands = "0" + ((grandTotal[47:32] % 10000) / 1000);
wire [7:0] total_03_hundreds  = "0" + ((grandTotal[47:32] % 1000) / 100);
wire [7:0] total_03_tens      = "0" + ((grandTotal[47:32] % 100) / 10);
wire [7:0] total_03_ones      = "0" + (grandTotal[47:32]  % 10);

wire [7:0] total_02_thousands = "0" + ((grandTotal[31:16] % 10000) / 1000);
wire [7:0] total_02_hundreds  = "0" + ((grandTotal[31:16] % 1000) / 100);
wire [7:0] total_02_tens      = "0" + ((grandTotal[31:16] % 100) / 10);
wire [7:0] total_02_ones      = "0" + (grandTotal[31:16]  % 10);

wire [7:0] total_xx_thousands = "0" + ((grandTotal[15:0] % 10000) / 1000);
wire [7:0] total_xx_hundreds  = "0" + ((grandTotal[15:0] % 1000) / 100);
wire [7:0] total_xx_tens      = "0" + ((grandTotal[15:0] % 100) / 10);
wire [7:0] total_xx_ones      = "0" + (grandTotal[15:0]  % 10);



// ====================================================================
// 字串種類列表 (Message Formatter Function)
// 透過編號 (msg_type) 決定要輸出哪一包組合好的字串資料
// ====================================================================
function [8*MAX_TX_LEN-1:0] get_message_string;
	input [3:0] msg_type;
	begin
		case (msg_type)
			4'd1:    get_message_string = "ID:0302\r\n";
			
			4'd2:    get_message_string = {"ID:0302", new_order_id_confirm, "\r\n"};
			
			4'd3:    get_message_string = {"QA:00", quantity_03_tens, quantity_03_ones, "00", quantity_02_tens, quantity_02_tens, "\r\n"};
			
			4'd4:    get_message_string = {"QA:00", quantity_03_tens, quantity_03_ones, "00", quantity_02_tens, quantity_02_ones, "00", quantity_xx_tens, quantity_xx_ones, "\r\n"};
			
			4'd5:    get_message_string = {"QA:00", quantity_03_tens, quantity_03_ones, "00", amount_03_tens, amount_03_ones, "\r\n"};
			4'd6:    get_message_string = {"QA:00", quantity_02_tens, quantity_02_ones, "00", amount_02_tens, amount_02_ones, "\r\n"};
			4'd7:    get_message_string = {"QA:00", quantity_xx_tens, quantity_xx_ones, "00", amount_xx_tens, amount_xx_ones, "\r\n"};
			
			4'd8:    get_message_string = "QT:0000\r\n";
			4'd9:    get_message_string = {"QT:#", quota_03_tens, quota_03_ones, "$", total_03_thousands, total_03_hundreds, total_03_tens, total_03_ones, "\r\n"};
			4'd10:   get_message_string = {"QT:#", quota_02_tens, quota_02_ones, "$", total_02_thousands, total_02_hundreds, total_02_tens, total_02_ones, "\r\n"};
			4'd11:   get_message_string = {"QT:#", quota_xx_tens, quota_xx_ones, "$", total_xx_thousands, total_xx_hundreds, total_xx_tens, total_xx_ones, "\r\n"};
			4'd12:   get_message_string = "QT:YES\r\n";
			4'd13:   get_message_string = "QT:NO\r\n";
			
			4'd14:   get_message_string = {temp_order_id, "\r\n"};
			
			default: get_message_string = "ERROR\r\n";
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
					// 連線測試
					4'd1: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd1; // 字串種類 1
							4'd1: current_msg_id <= 4'd3; // 字串種類 3
							4'd2: current_msg_id <= 4'd8; // 字串種類 8
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 新增訂單後連線測試
					4'd2: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd2; // 字串種類 2
							4'd1: current_msg_id <= 4'd4; // 字串種類 4
							4'd2: current_msg_id <= 4'd8; // 字串種類 8
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 查詢第一張訂單
					4'd3: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd5; // 字串種類 5
							4'd1: current_msg_id <= 4'd9; // 字串種類 9
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 查詢第二張訂單
					4'd4: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd6;  // 字串種類 6
							4'd1: current_msg_id <= 4'd10; // 字串種類 10
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 查詢第三張訂單
					4'd5: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd7;  // 字串種類 7
							4'd1: current_msg_id <= 4'd11; // 字串種類 11
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 回傳 YES
					4'd6: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd12;  // 字串種類 12
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					// 回傳 NO
					4'd7: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd13;  // 字串種類 13
							default: current_msg_id <= 4'd0;
						endcase
					end
					
					4'd8: begin
						case (step_index)
							4'd0: current_msg_id <= 4'd14; // 字串種類 14
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
					4'd1, 4'd2: begin
						if (step_index < 4'd2) begin
							step_index <= step_index + 1'b1;
							tx_state   <= S_DELAY; // 自動跳轉回開頭選下一筆
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					4'd3, 4'd4, 4'd5: begin
						if (step_index < 4'd1) begin
							step_index <= step_index + 1'b1;
							tx_state   <= S_DELAY;
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					4'd6, 4'd7: begin
						if (step_index < 4'd0) begin
							step_index <= step_index + 1'b1;
							tx_state   <= S_DELAY; // 自動跳轉回開頭選下一筆
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					
					4'd8: begin
						if (step_index < 4'd0) begin
							step_index <= step_index + 1'b1;
							tx_state   <= S_DELAY; // 自動跳轉回開頭選下一筆
						end else begin
							tx_state   <= S_FINISH;
						end
					end
					
					default: tx_state <= S_FINISH;
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