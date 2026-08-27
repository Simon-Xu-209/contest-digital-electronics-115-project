module Order_processor #(
	parameter MAX_RX_LEN = 32
)(
	input  wire                   clk,
	input  wire                   rst_n,
	input  wire                   start_proc,    // 來自 connect_detector 的 conn_pulse
	input  wire [8*MAX_RX_LEN-1:0] rx_Data_reg,  // 資料暫存器
	
	// 內部原始訂單資料
	output reg  [31:0]            orderID,       // 訂單 ID (4 Bytes)
	output reg  [63:0]            orderQuantity, // 訂購數量 (8 Bytes)
	output reg  [63:0]            bidAmount,     // 出價金額 (8 Bytes)
	output reg  [31:0]            productQuota,  // 商品配額 (4 Bytes)
	output reg  [31:0]            grandTotal,    // 付款總額 (4 Bytes)
	
	// ⭐ 專為外送/VB介面打包的傳輸暫存器
	output reg  [31:0]            sendID,        // 傳送 ID (例如: "0102")
	output reg  [63:0]            sendQA,        // 傳送數量/組合A (例如: "00650040")
	output reg  [63:0]            sendQT,        // 傳送數量金額/組合B (例如: 配額與總額混合)
	
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

	// 狀態機
	reg [1:0] state;
	localparam S_IDLE = 2'd0, S_CALC = 2'd1, S_DONE = 2'd2;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			state         <= S_IDLE;
			proc_done     <= 1'b0;
			
			// 原始暫存器預設值
			orderID       <= "0102";
			orderQuantity <= {"0065", "0040"};
			bidAmount     <= {"0070", "0030"};
			productQuota  <= "0050";
			grandTotal    <= "0100";
			
			// ⭐ 傳輸暫存器預設值
			sendID        <= orderID;
			sendQA        <= orderQuantity;
			sendQT        <= "";
		end else begin
			proc_done <= 1'b0;

			case (state)
				S_IDLE: begin
					if (start_proc) begin
						state <= S_CALC;
					end
				end

				S_CALC: begin
					// 1. 更新內部暫存資料
					// 2. 將需要傳送至 VB 的資料組合寫入三個 send 暫存器
					sendID        <= orderID;                  // 訂單 ID
					sendQA        <= orderQuantity;           // 數量混合資料
					sendQT        <= "";        // 額度與總額混合資料
					
					state <= S_DONE;
				end

				S_DONE: begin
					proc_done <= 1'b1; // 發送單週期完成脈衝
					state     <= S_IDLE;
				end

				default: state <= S_IDLE;
			endcase
		end
	end

endmodule