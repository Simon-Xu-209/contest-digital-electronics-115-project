module Order_processor #(
	parameter MAX_RX_LEN = 32,
	parameter MAX_TX_LEN = 64
)(
	input wire                    clk,
	input wire                    rst_n,
	input wire                    start_proc,      // 連線觸發脈衝 (conn_pulse)
	input wire [3:0]              client_id_in,    // 連線的 Client ID
	input wire [8*MAX_RX_LEN-1:0] rx_Data_reg,     // 接收資料暫存器
	input wire                    rx_ready,        // 接收完成脈衝
	input wire                    tx_busy,         // Wi-Fi 傳送忙碌訊號

	input wire [7:0] switch_8bit,
	input wire [3:0] KEY,
	input wire       Pressed,

	// 傳送控制與暫存器介面
	output reg                     send_en,
	output reg  [3:0]              send_target_id,
	output reg  [8*MAX_TX_LEN-1:0] send_data_reg,

	// 內部原始訂單資料
	output reg  [31:0] orderID,       // 訂單 ID
	output reg  [15:0] orderQuantity, // 訂購數量
	output reg  [15:0] bidAmount,     // 出價金額
	output reg  [15:0] productQuota,  // 商品配額
	output wire [31:0] grandTotal,    // 付款總額

	// 外送/VB介面打包暫存器
	output reg  [31:0] sendID,
	output reg  [63:0] sendQA,
	output reg  [63:0] sendQT,

	output reg         proc_done,
	input  wire        resp_ok
);

// 拆解 32 個 Byte (bytes[0] 為 lowest byte，即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_Data_reg[8*g +: 8];
	end
endgenerate

// 搜尋 "ID:" (字串靠右存入，較早收到的字元索引較大)
// 格式範例：bytes[g]="I", bytes[g-1]="D", bytes[g-2]=":", bytes[g-3]='9', ..., bytes[g-6]='1'
wire [MAX_RX_LEN-1:0] match_id;
reg  [31:0]           detected_id;
reg                   id_found;

generate
    for (g = 6; g < MAX_RX_LEN; g = g + 1) begin : MATCH_GEN
        assign match_id[g] = (bytes[g]   == "I") && 
                             (bytes[g-1] == "D") && 
                             (bytes[g-2] == ":");
    end
    for (g = 0; g < 6; g = g + 1) begin : MATCH_ZERO
        assign match_id[g] = 1'b0;
    end
endgenerate

// ID 擷取邏輯
integer k;
always @(*) begin
    id_found    = 1'b0;
    detected_id = 32'd0;
    for (k = MAX_RX_LEN - 1; k >= 6; k = k - 1) begin
        if (match_id[k] && !id_found) begin
            id_found    = 1'b1;
            // 擷取 "ID:" 後方的 4 碼，高位 Byte 擺左側
            detected_id = {bytes[k-3], bytes[k-4], bytes[k-5], bytes[k-6]};
        end
    end
end



reg Pressed_reg1, Pressed_reg2;
wire Pressed_posedge = (Pressed_reg1 && !Pressed_reg2);
wire Pressed_negedge = (!Pressed_reg1 && Pressed_reg2);
always@(posedge clk) begin
	if (!rst_n) begin
		Pressed_reg1 <= 0;
		Pressed_reg2 <= 0;
	end else begin
		Pressed_reg1 <= Pressed;
		Pressed_reg2 <= Pressed_reg1;
	end
end

// 鎖存按下期間獲得的 KEY
reg [3:0] key_latched;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_latched <= 4'd15;
	end else if (Pressed && !Pressed_reg1) begin // 只在剛按下的正緣鎖存 KEY
		key_latched <= KEY;
	end else begin
		key_latched <= 4'd15;
	end
end

// -------------------------------------------------------------
// 1 Clock 單週期 KEY 鎖存暫存器
// -------------------------------------------------------------
reg [3:0] key_pulse;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		key_pulse <= 4'b1111;
	end else begin
		// 當 Pressed 產生正緣（剛按下的瞬間）
		if (Pressed && !Pressed_reg1) begin
			key_pulse <= KEY;       // 存入當前按下的 key 值
		end else begin
			key_pulse <= 4'b1111;   // 1 個 Clock 後自動歸位為預設值 15
		end
	end
end

// orderQuantity 的十位數與個位數 ASCII
wire [7:0] quantity_01_tens = 8'd48 + (orderQuantity[15:8] / 10);
wire [7:0] quantity_01_ones = 8'd48 + (orderQuantity[15:8] % 10);
wire [7:0] quantity_02_tens = 8'd48 + (orderQuantity[7:0] / 10);
wire [7:0] quantity_02_ones = 8'd48 + (orderQuantity[7:0] % 10);

// bidAmount 的十位數與個位數 ASCII
wire [7:0] amount_01_tens = 8'd48 + (bidAmount[15:8] / 10);
wire [7:0] amount_01_ones = 8'd48 + (bidAmount[15:8] % 10);
wire [7:0] amount_02_tens = 8'd48 + (bidAmount[7:0] / 10);
wire [7:0] amount_02_ones = 8'd48 + (bidAmount[7:0] % 10);

// productQuota 的十位數與個位數 ASCII
wire [7:0] quota_01_tens = 8'd48 + (productQuota[15:8] / 10);
wire [7:0] quota_01_ones = 8'd48 + (productQuota[15:8] % 10);
wire [7:0] quota_02_tens = 8'd48 + (productQuota[7:0] / 10);
wire [7:0] quota_02_ones = 8'd48 + (productQuota[7:0] % 10);

// grandTotal 的十位數與個位數 ASCII
wire [7:0] total_01_thousands = 8'd48 + ((grandTotal[31:16] % 10000) / 1000);
wire [7:0] total_01_hundreds  = 8'd48 + ((grandTotal[31:16] % 1000) / 100);
wire [7:0] total_01_tens      = 8'd48 + ((grandTotal[31:16] % 100) / 10);
wire [7:0] total_01_ones      = 8'd48 + (grandTotal[31:16]  % 10);
wire [7:0] total_02_thousands = 8'd48 + ((grandTotal[15:0]  % 10000) / 1000);
wire [7:0] total_02_hundreds  = 8'd48 + ((grandTotal[15:0]  % 1000) / 100);
wire [7:0] total_02_tens      = 8'd48 + ((grandTotal[15:0]  % 100) / 10);
wire [7:0] total_02_ones      = 8'd48 + (grandTotal[15:0]   % 10);

assign grandTotal[31:16] = productQuota[15:8] * bidAmount[15:8];
assign grandTotal[15:0] = productQuota[7:0] * bidAmount[7:0];


reg [1:0] current_sys_state;
reg [1:0] next_sys_state;
localparam SYS_IDLE    = 2'd0,
			  SYS_INITIAL = 2'd1,
			  SYS_EDIT    = 2'd2,
			  SYS_DONE    = 2'd3;

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		current_sys_state <= SYS_IDLE;
	end else begin
		current_sys_state <= next_sys_state;
	end
end

always@(*) begin
	next_sys_state = current_sys_state;
	case(current_sys_state)
		SYS_IDLE: begin end
		SYS_INITIAL: begin end
		SYS_EDIT: begin end
		SYS_DONE: begin end
		default:;
	endcase
	
	if ((switch_8bit == 8'b0) && (key_pulse == 6)) begin
		next_sys_state = SYS_INITIAL;
	end else if ((switch_8bit[7:4] == 4'b0100) && ((switch_8bit[3:0] == 4'b0001) || (switch_8bit[3:0] == 4'b0010))) begin
		if	(key_pulse == 6) begin
			next_sys_state = SYS_EDIT;
		end else if	(key_pulse == 8) begin
			next_sys_state = SYS_DONE;
		end
	end
end

always@(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// 原始暫存器預設值
		orderID       <= "0102";
		orderQuantity <= {8'd65, 8'd40};
		bidAmount     <= {8'd70, 8'd30};
		productQuota  <= 16'd0;
	end else begin
		case(current_sys_state)
		
			SYS_IDLE: begin end
			
			SYS_INITIAL: begin
				orderID       <= "0102";
				orderQuantity <= {8'd65, 8'd40};
				bidAmount     <= {8'd70, 8'd30};
				productQuota  <= 16'd0;
			end
			
			SYS_EDIT: begin
				if (switch_8bit[3:0] == 4'b0001) begin
					orderID <= "9901";
					case (key_pulse)
						// +10
						4'd0: begin
							if ((productQuota[15:8] + 8'd10 <= orderQuantity[15:8]) && ((productQuota[15:8] + 8'd10) + productQuota[7:0] <= 8'd80))
								productQuota[15:8] <= productQuota[15:8] + 8'd10;
						end
						// -10
						4'd3: begin
							if (productQuota[15:8] >= 8'd10) 
								productQuota[15:8] <= productQuota[15:8] - 8'd10;
						end
								// +1 (KEY 2)
						4'd2: begin
							if ((productQuota[15:8] < orderQuantity[15:8]) && ((productQuota[15:8] + 8'd1) + productQuota[7:0] <= 8'd80))
								productQuota[15:8] <= productQuota[15:8] + 8'd1;
						end
						// -1 (KEY 5)
						4'd5: begin
							if (productQuota[15:8] > 8'd0) 
								productQuota[15:8] <= productQuota[15:8] - 8'd1;
						end
						default: ;
					endcase
				end else if (switch_8bit[3:0] == 4'b0010) begin
					orderID <= "9902";
					case (key_pulse)
						// +10
						4'd0: begin
							if ((productQuota[7:0] + 8'd10 <= orderQuantity[7:0]) && ((productQuota[7:0] + 8'd10) + productQuota[15:8] <= 8'd80))
								productQuota[7:0] <= productQuota[7:0] + 8'd10;
						end
						// -10
						4'd3: begin
							if (productQuota[7:0] >= 8'd10) 
								productQuota[7:0] <= productQuota[7:0] - 8'd10;
						end
						// +1 (KEY 2)
						4'd2: begin
							if ((productQuota[7:0] < orderQuantity[7:0]) && ((productQuota[7:0] + 8'd1) + productQuota[15:8] <= 8'd80))
								productQuota[7:0] <= productQuota[7:0] + 8'd1;
						end
						// -1 (KEY 5)
						4'd5: begin
							if (productQuota[7:0] > 8'd0) 
									productQuota[7:0] <= productQuota[7:0] - 8'd1;
						end
						default: ;
					endcase
				end
			end
			
			SYS_DONE: begin end
			
			default:;
			
		endcase
	end
end

// -------------------------------------------------------------
// 資料傳送與序列發送狀態機 (Auto Sequential Send)
// -------------------------------------------------------------
localparam S_IDLE         = 4'd0,
           S_PREP_DATA    = 4'd1,
			  
			  S_INIT_ID      = 4'd2,
			  S_INIT_QA      = 4'd3,
			  S_INIT_QT      = 4'd4,
			  S_WAIT_INIT_ID = 4'd5,
			  S_WAIT_INIT_QA = 4'd6,
			  S_WAIT_INIT_QT = 4'd7,
			  
           S_TX_ID        = 4'd8,
           S_WAIT_ID      = 4'd9,
           S_TX_QA        = 4'd10,
           S_WAIT_QA      = 4'd11,
           S_TX_QT        = 4'd12,
           S_WAIT_QT      = 4'd13;

reg [3:0] tx_seq_state;
reg [3:0] latched_client_id;

reg rx_ready_flag;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		rx_ready_flag <= 1'b0;
	end else begin
		if (rx_ready) rx_ready_flag <= 1'b1;
		else if (tx_seq_state == S_PREP_DATA) rx_ready_flag <= 1'b0;
	end
end

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		tx_seq_state      <= S_IDLE;
		send_en           <= 1'b0;
		send_target_id    <= 4'd0;
		send_data_reg     <= {8*MAX_TX_LEN{1'b0}};
		latched_client_id <= 4'd0;
		proc_done         <= 1'b0;
		sendID            <= 32'd0;
		sendQA            <= 64'd0;
		sendQT            <= 64'd0;
	end else begin
		send_en   <= 1'b0;
		proc_done <= 1'b0;

		case (tx_seq_state)
			S_IDLE: begin
				if (start_proc) begin
					latched_client_id <= client_id_in; // 鎖存 Client ID
					// 預載初始化預設資料
					sendID <= "0102";
					sendQA <= {"0", "0", quantity_01_tens, quantity_01_ones, "0", "0", quantity_02_tens, quantity_02_ones};
					sendQT <= "0000    ";
					tx_seq_state <= S_INIT_ID;
				end else if (((detected_id == "9901") || (detected_id == "9902")) && rx_ready_flag) begin
					tx_seq_state <= S_PREP_DATA;
				end
			end

			S_PREP_DATA: begin
				// 收到 VB 查詢回應的裝載邏輯
				sendID <= detected_id;
				sendQA <= {
					"0", "0",
					(detected_id == "9901") ? quantity_01_tens : quantity_02_tens,
					(detected_id == "9901") ? quantity_01_ones : quantity_02_ones,
					"0", "0",
					(detected_id == "9901") ? amount_01_tens : amount_02_tens,
					(detected_id == "9901") ? amount_01_ones : amount_02_ones
				};
				sendQT <= {
					"#",
					(detected_id == "9901") ? quota_01_tens : quota_02_tens,
					(detected_id == "9901") ? quota_01_ones : quota_02_ones,
					"$",
					(detected_id == "9901") ? total_01_thousands : total_02_thousands,
					(detected_id == "9901") ? total_01_hundreds  : total_02_hundreds,
					(detected_id == "9901") ? total_01_tens      : total_02_tens,
					(detected_id == "9901") ? total_01_ones      : total_02_ones
				};
				tx_seq_state <= S_TX_ID;
			end

			S_INIT_ID: begin
				if (!tx_busy) begin
					send_target_id <= latched_client_id;
					send_data_reg  <= "0102\r\n";
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_INIT_ID;
				end
			end
			
			S_WAIT_INIT_ID: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_INIT_QA;
				end
			end
			
			S_INIT_QA: begin
				if (!tx_busy) begin
					send_target_id <= latched_client_id;
					send_data_reg  <= "0102\r\n";
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_INIT_QA;
				end
			end
			
			S_WAIT_INIT_QA: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_INIT_QT;
				end
			end
			
			S_INIT_QT: begin
				if (!tx_busy) begin
					send_target_id <= latched_client_id;
					send_data_reg  <= "0102\r\n";
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_INIT_QT;
				end
			end
			
			S_WAIT_INIT_QT: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_IDLE;
				end
			end
			
			// 1. 發送 sendID
			S_TX_ID: begin
				if (!tx_busy && resp_ok) begin
					send_target_id <= latched_client_id;
					send_data_reg  <= {sendID, "\r\n"};
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_ID;
				end
			end

			S_WAIT_ID: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_TX_QA;
				end
			end

			// 2. 發送 sendQA
			S_TX_QA: begin
				if (!tx_busy && resp_ok) begin
					send_target_id <= latched_client_id;
					// send_data_reg  <= {sendQA, "\r\n"};
					send_data_reg  <= {"0", "0", quantity_01_tens, quantity_01_ones, "0", "0", quantity_02_tens, quantity_02_ones};
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_QA;
				end
			end

			S_WAIT_QA: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_TX_QT;
				end
			end

			// 3. 發送 sendQT
			S_TX_QT: begin
				if (!tx_busy && resp_ok) begin
					send_target_id <= latched_client_id;
					send_data_reg  <= {sendQT, "\r\n"};
					send_en        <= 1'b1;
					tx_seq_state   <= S_WAIT_QT;
				end
			end

			S_WAIT_QT: begin
				if (!tx_busy && !send_en) begin
					tx_seq_state <= S_IDLE;
				end
			end

			default: tx_seq_state <= S_IDLE;
		endcase
	end
end

endmodule