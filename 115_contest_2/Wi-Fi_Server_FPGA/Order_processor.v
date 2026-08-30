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
	output reg  [15:0]            grandTotal,    // 付款總額

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
wire [7:0] total_01_tens = 8'd48 + (grandTotal[15:8] / 10);
wire [7:0] total_01_ones = 8'd48 + (grandTotal[15:8] % 10);
wire [7:0] total_02_tens = 8'd48 + (grandTotal[7:0] / 10);
wire [7:0] total_02_ones = 8'd48 + (grandTotal[7:0] % 10);



// 狀態機
reg [1:0] state;
localparam S_IDLE = 2'd0,
			  S_CALC = 2'd1,
			  S_EDIT = 2'd2,
			  S_SEND = 2'd3;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		proc_done <= 1'b0;
		state <= S_IDLE;
		
		// 原始暫存器預設值
		orderID       <= "0102";
		orderQuantity <= {8'd65, 8'd40};
		bidAmount     <= {8'd70, 8'd30};
		productQuota  <= 16'd0;
		grandTotal    <= 16'd0;
		
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
			case (state)
			S_IDLE: begin
				if ((switch_8bit == 8'b0001_0000) && start_proc) begin
					state <= S_CALC;
				end else if ((switch_8bit[7:4] == 4'b0100) && KEY == 6) begin
					state <= S_EDIT;
				end else if ((switch_8bit[7:4] == 4'b0100) && KEY == 8) begin
					state <= S_IDLE;
				end
			end

			S_CALC: begin
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
				
				state <= S_SEND;
			end

			S_EDIT: begin
				if (switch_8bit[7:4] != 4'b0100) begin
					state <= S_IDLE;
				end else begin
					// 只有在完整放開按鍵的單一 Cycle 觸發加減
					if (key_pulse != 4'd15) begin
						if (switch_8bit[3:0] == 4'b0001) begin
							orderID <= "0001";
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
							 orderID <= "0002";
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
				end
			end
			
			S_SEND: begin
				proc_done <= 1'b1; // 發送單週期完成脈衝
				state     <= S_IDLE;
			end

			default: begin
				state <= S_IDLE;
			end
			
		endcase
	end
end

endmodule