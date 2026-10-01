module UART_Server (
	input  wire clk,           // CPLD/FPGA 50MHz
	input  wire rst_n,         // CPLD/FPGA Reset 按鍵 (Low Active)

	input  wire [7:0] switch_8bit, // 8Bit 指撥開關 (SW1 ~ SW8)

	output wire WiFi_tx,      // ESP8266 Wi-Fi 的 rx
	input  wire WiFi_rx,      // ESP8266 Wi-Fi 的 tx
	output wire WiFi_RST,     // ESP8266 Wi-Fi 的 RST
	
	output reg  [15:0] WiFi_signal,
	
	//===================================================
	// Debug 用
	//===================================================
	output wire USB2UART_WiFi_tx, // USB to TTL 的 rx
	output wire USB2UART_WiFi_rx  // USB to TTL 的 rx
);

parameter CLK_FREQ    = 50_000_000; // 50MHz
parameter BAUD        = 115200;     // UART 鮑率
parameter MAX_TX_LEN  = 64;         // UART 最大可接收的 AT 指令/資料位元數
parameter MAX_RX_LEN  = 32;         // UART 最大可接收的資料位元數


parameter LCD_MAX_CHARS = 16;

// 可透過串口調適助手檢查傳送給 ESP8266 Wi-Fi 模組以及接收的資料
assign USB2UART_WiFi_tx = WiFi_tx;
assign USB2UART_WiFi_rx = WiFi_rx;



// ESP8266 Wi-Fi 主控制器
wire            send_en;
wire [3:0]      tx_link_id;
wire [8*64-1:0] send_data_reg;
wire            tx_busy;
wire [3:0]      rx_link_id;
wire [15:0]     rx_data_len;
wire [8*32-1:0] rx_data_reg;
wire            rx_done;
wire            WiFi_init_done;

WiFi_Controller #(
	.MAX_TX_LEN(MAX_TX_LEN),
	.MAX_RX_LEN(MAX_RX_LEN),
	.CLK_FREQ(50_000_000),
	.BAUD_RATE(115200)
) WiFi_Controller_u1 (
	.clk           (clk),
	.rst_n         (rst_n),
	
	// 腳位分配
	.WiFi_rx       (WiFi_rx),
	.WiFi_tx       (WiFi_tx),
	.WiFi_rst_n    (WiFi_RST),
	
	// 發送介面
	.send_en       (send_en),
	.send_target_id(tx_link_id),    // 目標 Clinet 連線 ID 暫存器
	.send_data_reg (send_data_reg), // 傳送指令/資料暫存器
	.tx_busy       (tx_busy),       // 指令/資料傳送中旗標
	
	// 接收介面
	.rx_link_id    (rx_link_id),   // Client 連線 ID 暫存器
	.rx_data_len   (rx_data_len),  // 接收資料長度暫存器 (Byte)
	.rx_data_reg   (rx_data_reg),  // 接收資料暫存器
	.rx_done       (rx_done),      // 資料接收完成脈衝
	
	.init_done     (WiFi_init_done) // ESP8266 Wi-Fi 初始化完畢
);


// 拆解 32 個 Byte (bytes[0] 為 lowest byte，即最後收到的字元)
wire [7:0] bytes[0:MAX_RX_LEN-1];
genvar g;
generate
	for (g = 0; g < MAX_RX_LEN; g = g + 1) begin : BYTE_ASSIGN
		assign bytes[g] = rx_data_reg[8*g +: 8];
	end
endgenerate

// 搜尋 "Num:" (字串靠右存入，較早收到的字元索引較大)
// 格式範例：bytes[g+4]="N", bytes[g+3]="u", bytes[g+2]="m", bytes[g+1]=':', bytes[g]="1", bytes[g-1]="\r", bytes[g-2]="\n"
wire [MAX_RX_LEN-1:0] match_num;    // 偵測資料所在位元組位置
reg  [8:0]            detected_num; // 偵測到的資料
reg                   num_found;

generate
	for (g = 0; g < MAX_RX_LEN-4; g = g + 1) begin : MATCH_GEN
		assign match_num[g] = (bytes[g+4] == "N") && 
									(bytes[g+3] == "u") && 
									(bytes[g+2] == "m") && 
									(bytes[g+1] == ":");
	end
endgenerate

// Num: 擷取
integer k;
always @(*) begin
	num_found    = 1'b0;
	detected_num = 8'd0;
	for (k = 0; k < MAX_RX_LEN; k = k + 1) begin
		if (match_num[k] && !num_found) begin
			num_found    = 1'b1;
			// 擷取 "Num:" 後方的 1 碼，高位 Byte 擺左側
			detected_num = bytes[k];
		end
	end
end

// --------------------------------------------------------------------
// 主邏輯匯總控制區塊 (單一順序驅動關鍵暫存器)
// --------------------------------------------------------------------
reg [2:0] prev_system_state; 

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		WiFi_signal <= 16'd15;
	end else begin
		if (detected_num == "0") begin
			WiFi_signal <= 16'd0; // 七段顯示器顯示:"InF:  00"
		end else if (detected_num == "1") begin
			WiFi_signal <= 16'd1;
		end else if (detected_num == "2") begin
			WiFi_signal <= 16'd2;
		end else if (detected_num == "3") begin
			WiFi_signal <= 16'd3;
		end else if (detected_num == "4") begin
			WiFi_signal <= 16'd4;
		end else if (detected_num == "5") begin
			WiFi_signal <= 16'd5;
		end else if (detected_num == "6") begin
			WiFi_signal <= 16'd6;
		end else if (detected_num == "7") begin
			WiFi_signal <= 16'd7;
		end else if (detected_num == "8") begin
			WiFi_signal <= 16'd8;
		end else begin
			WiFi_signal <= 16'd16;
		end
	end
end

endmodule