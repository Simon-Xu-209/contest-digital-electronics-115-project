module Joystick (
	input  wire clk,           // 50MHz
	input  wire rst_n,
	
	output wire ADS1115_SCL,  // ADS1115 ADC SCL
	inout  wire ADS1115_SDA,  // ADS1115 ADC SDA
	input  wire ADS1115_ALRT, // ADS1115 ADC ALERT (可不接)
	input  wire Joystick_SW,  // 搖桿按鈕 (z 軸，按下為 Low)

	output wire [15:0] joystick_x, // X 軸類比數值暫存器
	output wire [15:0] joystick_y, // Y 軸類比數值暫存器
	output reg         joystick_z, // Z 軸按鈕狀態 (去彈跳後，1: 放開, 0: 按下)
	
	output wire joystick_up,
	output wire joystick_down,
	output wire joystick_right,
	output wire joystick_left,
	
	output wire joystick_z_pulse,    // 搖桿按下脈衝
	output wire joystick_up_pulse,   // 搖桿上脈衝
	output wire joystick_down_pulse, // 搖桿下脈衝
	output wire joystick_left_pulse, // 搖桿左脈衝
	output wire joystick_right_pulse // 搖桿右脈衝
);

// -------------------------------------------------------------
// ADS1115 搖桿 X, Y 軸讀取模組例化
// -------------------------------------------------------------
wire [15:0] raw_x;
wire [15:0] raw_y;

ADS1115_Driver ads_driver_u1 (
	.clk           (clk),
	.rst_n         (rst_n),
	.scl           (ADS1115_SCL),
	.sda           (ADS1115_SDA),
	.joystick_x_raw(raw_x),
	.joystick_y_raw(raw_y),
	.update_valid  ()
);

assign joystick_x = raw_x;
assign joystick_y = raw_y;

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
		joystick_z  <= 1'b1; // 預設高電位 (未按下)
	end else begin
		if (sw_sync_1 != joystick_z) begin
			if (db_cnt < DEBOUNCE_CYCLES - 1) begin
				db_cnt <= db_cnt + 1'b1;
			end else begin
				db_cnt <= 19'd0;
				joystick_z  <= sw_sync_1; // 連續 10ms 穩定後更新狀態
			end
		end else begin
			db_cnt <= 19'd0;
		end
	end
end



// --------------------------------------------------------------------
// 搖桿邊緣脈衝偵測器
// --------------------------------------------------------------------
reg    joystick_z_d1;
assign joystick_up    = (joystick_y < 6000);
assign joystick_down  = (joystick_y > 10000);
assign joystick_right = (joystick_x > 10000);
assign joystick_left  = (joystick_x < 6000);

always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		joystick_z_d1 <= 1'b0;
	end else begin
		joystick_z_d1 <= joystick_z;
	end
end

reg joystick_up_d1, joystick_down_d1, joystick_left_d1, joystick_right_d1;
always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		joystick_up_d1    <= 1'b0;
		joystick_down_d1  <= 1'b0;
		joystick_left_d1  <= 1'b0;
		joystick_right_d1 <= 1'b0;
	end else begin
		joystick_up_d1    <= joystick_up;
		joystick_down_d1  <= joystick_down;
		joystick_left_d1  <= joystick_left;
		joystick_right_d1 <= joystick_right;
	end
end

assign joystick_z_pulse     = joystick_z     && !joystick_z_d1;
assign joystick_up_pulse    = joystick_up    && !joystick_up_d1;
assign joystick_down_pulse  = joystick_down  && !joystick_down_d1;
assign joystick_left_pulse  = joystick_left  && !joystick_left_d1;
assign joystick_right_pulse = joystick_right && !joystick_right_d1;

endmodule