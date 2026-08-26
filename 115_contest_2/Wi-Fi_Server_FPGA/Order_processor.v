module Order_processor #(
	parameter MAX_RX_LEN = 32
)(
	input clk,
	input rst_n,
	input  [8*MAX_RX_LEN-1:0] rx_Data_reg, // 資料暫存器
	output reg [31:0] orderID,       // 訂單 ID
	output reg [63:0] orderQuantity, // 訂購數量
	output reg [63:0] bidAmount,     // 出價金額
	output reg [31:0] productQuota,  // 商品配額
	output reg [31:0] grandTotal     // 付款總額
);

// =========================================================
// 拆解 32 個 Byte
// =========================================================
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_Data_reg[8*g +: 8];
	end
endgenerate

reg [31:0] orderID_reg;
integer i;
always @(posedge clk) begin
	orderID_reg = 32'd0; // 預設值（防止產生 Latch）
	for (i = 6; i < MAX_RX_LEN; i = i + 1) begin
		if ((bytes[i] == "I") && (bytes[i-1] == "D") && (bytes[i-2] == ":")) begin
			orderID_reg = {bytes[i-3], bytes[i-4], bytes[i-5], bytes[i-6]};
		end
	end
end

initial begin
	orderID = "0102";
	//"0000", "0000" [63:56], [55:48], [47:40], [39:32] ||| [31:24], [23:16], [15:8], [7:0]
	orderQuantity[31:0] = "0065"; orderQuantity[63:32] = "0040";
	bidAmount[31:0]     = "0070"; bidAmount[63:32]     = "0030";
end


endmodule