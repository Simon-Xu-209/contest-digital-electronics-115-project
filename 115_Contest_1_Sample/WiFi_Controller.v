module WiFi_Controller #(
	parameter MAX_CMD_LEN = 64,
	parameter MAX_RX_LEN  = 32,
	parameter CLK_FREQ    = 50_000_000,
	parameter BAUD_RATE   = 115200
)(
	input  wire                     clk,
	input  wire                     rst_n,
	
	// 硬體外設腳位
	input  wire                     WiFi_rx,    // ESP8266 tx
	output wire                     WiFi_tx,    // ESP8266 tx
	output wire                     WiFi_rst_n, // ESP8266 RST
	
	// 上層控制與發送暫存器介面
	input  wire                     send_en,        // 上層發起傳送脈衝
	input  wire [3:0]               send_target_id, // 目標 Client ID
	input  wire [8*MAX_CMD_LEN-1:0] send_data_reg,  // 傳送資料暫存器
	output wire                     tx_busy,        // 傳送模組忙碌旗標

	// 上層接收暫存器介面
	output wire [3:0]               rx_link_id,    // 接收到的 ID
	output wire [15:0]              rx_data_len,   // 接收到的位元數
	output wire [8*MAX_RX_LEN-1:0]  rx_data_reg,   // 接收資料暫存器
	output wire                     rx_done,       // 接收完成脈衝
		 
	// 狀態輸出
	output reg                      init_done      // Wi-Fi 初始化完成
);

// 硬體 RST 腳位保持恆高 (不進行硬體重置)
assign WiFi_rst_n = 1'b1;

reg WiFi_rx_sync1, WiFi_rx_sync2;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		WiFi_rx_sync1 <= 1'b1;
		WiFi_rx_sync2 <= 1'b1;
	end else begin
		WiFi_rx_sync1 <= WiFi_rx;
		WiFi_rx_sync2 <= WiFi_rx_sync1;
	end
end

// -------------------------------------------------------------
// 硬體 Reset & Boot Delay
// -------------------------------------------------------------
reg [27:0] boot_cnt;
reg        boot_ready;

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		boot_cnt   <= 28'd0;
		boot_ready <= 1'b0;
	end else if (!boot_ready) begin
		// 等待上電穩定 (或抓到 ready，或等待 2 秒超時) 後開始發送 AT 指令
		if (got_ready || boot_cnt >= 28'd100_000_000) begin
			boot_ready <= 1'b1; // 2 秒 (100MHz 系統) / 100M 週期
		end else begin
			boot_cnt <= boot_cnt + 1'b1;
		end
	end
end

// -------------------------------------------------------------
// 呼叫底層 WiFi_rx_string 模組
// -------------------------------------------------------------
wire       rx_byte_en;
wire [7:0] rx_byte;

WiFi_rx_string #(
	.MAX_BYTES(MAX_RX_LEN),
	.CLK_FREQ (CLK_FREQ),
	.BAUD_RATE(BAUD_RATE)
) WiFi_rx_string_u1 (
	.clk          (clk),
	.rst_n        (rst_n),
	.rx           (WiFi_rx_sync2),
	.rx_byte_en   (rx_byte_en),
	.rx_byte      (rx_byte),
	.link_ID      (rx_link_id),
	.rx_Data_len  (rx_data_len),
	.rx_Data_reg  (rx_data_reg),
	.rx_done      (rx_done),
	.Data_reg_busy()
);

// -------------------------------------------------------------
// 呼叫底層 WiFi_tx_string 模組
// -------------------------------------------------------------
reg                      tx_start;
reg  [8*MAX_CMD_LEN-1:0] tx_CmdData_reg;
wire                     tx_done;
wire                     got_ready;

WiFi_tx_string #(
	.MAX_BYTES(MAX_CMD_LEN),
	.CLK_FREQ (CLK_FREQ),
	.BAUD_RATE(BAUD_RATE)
) WiFi_tx_string_u1 (
	.clk            (clk),
	.rst_n          (rst_n),
	.tx_start       (tx_start),
	.tx_CmdData_reg (tx_CmdData_reg),
	.WiFi_tx        (WiFi_tx),
	.rx_byte_en     (rx_byte_en),
	.rx_byte        (rx_byte),
	.tx_busy        (tx_busy), // 指令/資料傳送中旗標
	.tx_done        (tx_done), // 指令/資料傳送成功旗標
	.got_connect    (),
	.got_ready      (got_ready) // 偵測 Wi-Fi 是否重置完畢
);

// -------------------------------------------------------------
// 初始化列表狀態機 (AT Initialization Sequence)
// -------------------------------------------------------------
reg [3:0] init_step;
reg [27:0] rst_timeout_cnt; // 防呆計數器 (避免沒抓到 ready 死鎖)

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		init_step      <= 4'd0;
		init_done      <= 1'b0;
		tx_start       <= 1'b0;
		tx_CmdData_reg <= {8*MAX_CMD_LEN{1'b0}};
	end else if (boot_ready && !init_done) begin
		tx_start <= 1'b0;
		case (init_step)
			// Step 0: 發送軟體重置指令 AT+RST
			4'd0: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+RST\r\n"; 
					tx_start       <= 1'b1; 
					init_step      <= 4'd1;
				end
			end
			4'd1: begin
				rst_timeout_cnt <= rst_timeout_cnt + 1'b1;
				// 等待 ESP8266 回傳的 ready，或者等待 5 秒 (250_000_000 週期) 強制進行下一步
				if (got_ready || rst_timeout_cnt >= 28'd250_000_000) begin
					init_step <= 4'd2;
				end
			end

			// Step 1: 設定 RF 功率
			4'd2: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+RFPOWER=0\r\n"; 
					tx_start       <= 1'b1; 
					init_step      <= 4'd3;
				end
			end
			4'd3: if (tx_done) init_step <= 4'd4;

			// Step 2: 設定模式為 AP
			4'd4: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+CWMODE=2\r\n"; 
					tx_start       <= 1'b1; 
					init_step      <= 4'd5;
				end
			end
			4'd5: if (tx_done) init_step <= 4'd6;

			// Step 3: 設定 AP 參數 (SSID, Password 等)
			4'd6: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+CWSAP=\"WiFi_FPGA\",\"048778414\",1,4\r\n"; 
					tx_start       <= 1'b1; 
					init_step      <= 4'd7;
				end
			end
			4'd7: if (tx_done) init_step <= 4'd8;

			// Step 4: 啟動多連線模式 (CIPMUX=1)
			4'd8: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+CIPMUX=1\r\n"; 
					tx_start       <= 1'b1; 
					init_step      <= 4'd9;
				end
			end
			4'd9: if (tx_done) init_step <= 4'd10;

			// Step 5: 啟動 TCP Server (Port 80)
			4'd10: begin
				if (!tx_busy) begin
					tx_CmdData_reg <= "AT+CIPSERVER=1,80\r\n";
					tx_start       <= 1'b1;
					init_step      <= 4'd11;
				end
			end
			4'd11: if (tx_done) init_step <= 4'd12;

			// 完成初始化
			4'd12: begin
				init_done <= 1'b1;
			end
			
			default: ;
		endcase
	end else if (init_done && send_en && !tx_busy) begin
		// 初始化完成後，上層發起傳輸
		tx_CmdData_reg <= send_data_reg;
		tx_start       <= 1'b1;
	end else begin
		tx_start <= 1'b0;
	end
end

endmodule