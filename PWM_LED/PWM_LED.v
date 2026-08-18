module PWM_LED (
    input wire clk,           // 系統時脈 (假設 50MHz)
    input wire rst_n,         // 低電位復位
    output reg [2:0] LED      // LED[2]=LED_R, LED[1]=LED_G, LED[0]=LED_Y
);

// ==================================================================
// 部分一：LED PWM 呼吸燈控制 (EX2: LED_R 2秒呼吸漸變)
// ==================================================================

// LED PWM 週期計數器 (1 kHz)
reg [15:0] led_pwm_counter;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        led_pwm_counter <= 16'd0;
    else if (led_pwm_counter >= 16'd49_999)
        led_pwm_counter <= 16'd0;
    else
        led_pwm_counter <= led_pwm_counter + 1'b1;
end

// LED 亮度更新時脈 (2秒改變 256 階，每階約 7.81 ms)
reg [18:0] led_step_counter;
wire led_step_tick = (led_step_counter == 19'd390_624);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        led_step_counter <= 19'd0;
    else if (led_step_tick)
        led_step_counter <= 19'd0;
    else
        led_step_counter <= led_step_counter + 1'b1;
end

// LED 占空比 (Duty Cycle) 與方向控制
reg [7:0] duty_cycle_R;
reg led_dir; // LED 模式 0: 漸暗, 1: 漸亮

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        duty_cycle_R <= 8'd255; // 預設最亮
        led_dir      <= 1'b0;   // 預設先變暗
    end else if (led_step_tick) begin
        if (led_dir == 1'b0) begin
            if (duty_cycle_R == 8'd0)
                led_dir <= 1'b1;
            else
                duty_cycle_R <= duty_cycle_R - 1'b1;
        end else begin
            if (duty_cycle_R == 8'd255)
                led_dir <= 1'b0;
            else
                duty_cycle_R <= duty_cycle_R + 1'b1;
        end
    end
end

// LED 訊號比較與輸出
wire led_pwm_signal = (led_pwm_counter[15:8] < duty_cycle_R); // led_pwm_counter[15:8] 表示把 led_pwm_counter 分成 256 等分

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        LED <= 3'b100; // 初始化：LED_R 亮
    end else begin
        LED[2] <= led_pwm_signal;// LED_R 呼吸燈
        LED[1] <= 1'b0;          // LED_G 關閉
        LED[0] <= 1'b0;          // LED_Y 關閉
    end
end

endmodule