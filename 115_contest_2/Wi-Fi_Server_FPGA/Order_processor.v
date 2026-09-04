module Order_processor #(
	parameter MAX_RX_LEN = 32
)(
	input  wire                   clk,
	input  wire                   rst_n,
	input  wire                   start_proc,    // 來自 connect_detector 的 conn_pulse
	input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg,  // 資料暫存器

	input wire [7:0] switch_8bit,
	input wire [3:0] KEY,
	input wire       Pressed,

	// 內部原始訂單資料
	output reg  [31:0]            orderID,       // 訂單 ID (字串)
	output reg  [15:0]            orderQuantity, // 訂購數量
	output reg  [15:0]            bidAmount,     // 出價金額
	output reg  [15:0]            productQuota,  // 商品配額
	output wire [31:0]            grandTotal,    // 付款總額

	// 專為外送/VB介面打包的傳輸暫存器
	output reg  [31:0]            sendID,        // 對應 VB 訂單ID
	output reg  [63:0]            sendQA,        // 對應 VB 訂購數量與出價金額欄位
	output reg  [63:0]            sendQT,        // 對應 VB 配額與付款總額

	output reg                    proc_done      // 通知 tx_buffer_controller 開始發送
);

// 拆解 32 個 Byte
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_Data_reg[8*g +: 8];
	end
endgenerate

wire [MAX_RX_LEN-7:0] id_match_mask;
reg  [31:0]           detected_id;
reg                   id_found;

genvar idx;
generate
	for (idx = 0; idx <= MAX_RX_LEN - 7; idx = idx + 1) begin : ID_SEARCH
		// 判斷連續 3 個 Byte 是否 match "I", "D", ":"
		assign id_match_mask[idx] = (bytes[idx+6]   == "I") && 
											 (bytes[idx+4] == "D") && 
											 (bytes[idx+5] == ":");
	end
endgenerate

integer k;
always @(*) begin
	id_found    = 1'b0;
	detected_id = 32'd0;
	for (k = 0; k <= MAX_RX_LEN - 7; k = k + 1) begin
		if (id_match_mask[k] && !id_found) begin
			id_found    = 1'b1;
			// 抓取 "ID:" 之後的 4 個 ASCII 字元 (XXXX)
			detected_id = {bytes[k+3], bytes[k+2], bytes[k+1], bytes[k]};
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
localparam SYS_IDLE = 2'd0,
			  SYS_EDIT = 2'd1,
			  SYS_DONE = 2'd2;

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
		SYS_EDIT: begin end
		SYS_DONE: begin end
		default:;
	endcase
	
	if ((switch_8bit[7:4] == 4'b0100) && ((switch_8bit[3:0] == 4'b0001) || (switch_8bit[3:0] == 4'b0010))) begin
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

// 狀態機
reg [1:0] SEND_state;
localparam S_IDLE = 2'd0,
			  S_INIT = 2'd1,
			  S_SEND = 2'd2;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		proc_done <= 1'b0;
		SEND_state <= S_IDLE;

		// 傳輸暫存器預設值
		sendID <= orderID;
		sendQA <= {
					  "0",
					  "0",
					  quantity_01_tens,// 確切 8-bit ASCII
					  quantity_01_ones,// 確切 8-bit ASCII
					  "0",
					  "0",
					  quantity_02_tens,// 確切 8-bit ASCII
					  quantity_02_ones // 確切 8-bit ASCII
		};
		sendQT <= "0000    ";
	end else begin
		proc_done <= 1'b0;
			case (SEND_state)
			S_IDLE: begin
				if ((switch_8bit == 8'b0001_0000) && start_proc) begin
					SEND_state <= S_INIT;
				end
			end

			S_INIT: begin
				// 1. 更新內部暫存資料
				// 2. 將需要傳送至 VB 的資料組合寫入三個 send 暫存器
				sendID <= orderID; // 訂單 ID
				sendQA <= {
					  "0",
					  "0",
					  quantity_01_tens,// 確切 8-bit ASCII
					  quantity_01_ones,// 確切 8-bit ASCII
					  "0",
					  "0",
					  quantity_02_tens,// 確切 8-bit ASCII
					  quantity_02_ones // 確切 8-bit ASCII
				 };
				sendQT <= {
					"#",
					(detected_id == "9901") ? quota_01_tens : quota_02_tens,
					(detected_id == "9901") ? quota_01_ones : quota_02_ones,
					"$",
					(detected_id == "9901") ? total_01_thousands : total_02_thousands,
					(detected_id == "9901") ? total_01_hundreds : total_02_hundreds,
					(detected_id == "9901") ? total_01_tens : total_02_tens,
					(detected_id == "9901") ? total_01_ones : total_02_ones
				};
				SEND_state <= S_SEND;
			end

			S_SEND: begin
				proc_done <= 1'b1; // 發送單週期完成脈衝
				SEND_state     <= S_IDLE;
			end

			default: begin
				SEND_state <= S_IDLE;
			end
			
		endcase
	end
end

endmodule