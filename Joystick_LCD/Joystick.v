module Joystick (
	input  wire clk,           // 50MHz
	input  wire rst_n,
	
	output wire ADS1115_SCL,  // ADS1115 ADC SCL
	inout  wire ADS1115_SDA,  // ADS1115 ADC SDA
	input  wire ADS1115_ALRT, // ADS1115 ADC ALERT (可不接)
	input  wire Joystick_SW,  // 搖桿按鈕 (z 軸，按下為 Low)

	output reg [15:0] joy_x,  // X 軸類比數值暫存器
	output reg [15:0] joy_y,  // Y 軸類比數值暫存器
	output reg        joy_z,  // Z 軸按鈕狀態 (去彈跳後，1: 放開, 0: 按下)
	
	output reg joy_right, joy_left, joy_up, joy_down
);

// -------------------------------------------------------------
// ADS1115 搖桿 X, Y 軸讀取模組例化
// -------------------------------------------------------------
wire [15:0] raw_x;
wire [15:0] raw_y;

ADS1115_Driver ads_driver_u1 (
	.clk         (clk),
	.rst_n       (rst_n),
	.scl         (ADS1115_SCL),
	.sda         (ADS1115_SDA),
	.joy_x_raw   (raw_x),
	.joy_y_raw   (raw_y),
	.update_valid()
);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n)begin
		joy_x = 8700;
		joy_y = 8700;
	end else begin
		joy_x = raw_x;
		joy_y = raw_y;
		
		joy_right <= (joy_x > 10000) ? 1'b1 : 1'b0;
		joy_left  <= (joy_x < 6000)  ? 1'b1 : 1'b0;
		joy_down  <= (joy_y > 10000) ? 1'b1 : 1'b0;
		joy_up    <= (joy_y < 6000)  ? 1'b1 : 1'b0;
	end
end

// -------------------------------------------------------------
// Joystick Z 軸按鍵去彈跳邏輯 (Debounce Circuit)
// -------------------------------------------------------------
localparam DEBOUNCE_CYCLES = 500_000; // 10ms @ 50MHz

reg [18:0] db_cnt;
reg        sw_sync_0, sw_sync_1;

// 雙級觸發器消除非同步跨時域亞穩態
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		sw_sync_0 <= 1'b1;
		sw_sync_1 <= 1'b1;
	end else begin
		sw_sync_0 <= Joystick_SW;
		sw_sync_1 <= sw_sync_0;
	end
end

// 10ms 穩定計數器
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		db_cnt <= 19'd0;
		joy_z  <= 1'b1; // 預設高電位 (未按下)
	end else begin
		if (sw_sync_1 != joy_z) begin
			if (db_cnt < DEBOUNCE_CYCLES - 1) begin
				db_cnt <= db_cnt + 1'b1;
			end else begin
				db_cnt <= 19'd0;
				joy_z  <= sw_sync_1; // 連續 10ms 穩定後更新狀態
			end
		end else begin
			db_cnt <= 19'd0;
		end
	end
end

endmodule