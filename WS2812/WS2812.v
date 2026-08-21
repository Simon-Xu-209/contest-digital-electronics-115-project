module WS2812 (
    input wire clk,     // 50 MHz
    input wire rst_n,
    output reg DIN      // J6_DIN
);

// 時序參數設定 (50MHz)
localparam T0H_CYCLES   = 17;
localparam BIT_CYCLES   = 62;
localparam T1H_CYCLES   = 45;
localparam RESET_CYCLES = 5000; // 100 us RESET

// 狀態機 (WS2812B 驅動)
localparam STATE_IDLE   = 2'd0;
localparam STATE_RESET  = 2'd1;
localparam STATE_SEND   = 2'd2;

// 模式定義
localparam MODE_CLEAR     = 2'd0;
localparam MODE_ANIMATION = 2'd1; // 模式 1: RGB 跑馬燈

reg [1:0]  sys_mode = MODE_ANIMATION;
reg [1:0]  state = STATE_IDLE;
reg [15:0] clk_cnt = 0;
reg [5:0]  led_idx = 0;         // 當前發送的 LED 編號 (0 ~ 63)
reg [4:0]  bit_idx = 23;        // 23 ~ 0 (GRB 24-bit)
reg [23:0] current_color;

// 顏色定義 (GRB 格式)
localparam COLOR_BLOCK = 24'h00_00_00; // 熄滅
localparam COLOR_RED   = 24'h00_FF_00; // 紅光 (G=0, R=FF, B=0)

// -------------------------------------------------------------------------
// 計時器與跑馬燈目標位置控制 (0 -> 1 -> 2 -> ... -> 63)
// -------------------------------------------------------------------------
reg [23:0] timer_cnt = 0;       // 0.3 秒計時器
reg [5:0]  active_led = 0;      // 當前應該點亮的 LED 編號 (0 ~ 63)

// 影格同步暫存器
reg [1:0]  draw_mode = MODE_CLEAR;
reg [5:0]  draw_target = 0;     // 鎖存要點亮的 LED 編號
reg        update_req = 0;      // 畫面刷新旗標

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        timer_cnt  <= 0;
        active_led <= 0;
        sys_mode   <= MODE_CLEAR;
        update_req <= 1'b1;
    end else begin
        sys_mode <= MODE_ANIMATION;
        
        // ----------------- 按編號 0 ~ 63 依序移動 -----------------
        if (sys_mode == MODE_ANIMATION) begin
            if (timer_cnt < 24'd15_000_000 - 1) begin // 約 0.3 秒
                timer_cnt <= timer_cnt + 1'b1;
            end else begin
                timer_cnt  <= 0;
                update_req <= 1'b1;
                
                // 亮燈位置從 0 加到 63，滿 63 後回到 0
                if (active_led < 63) begin
                    active_led <= active_led + 1'b1;
                end else begin
                    active_led <= 0;
                end
            end
        end
        
        if (state == STATE_IDLE && update_req) begin
            draw_target <= active_led; // 鎖存目標編號
            update_req  <= 1'b0;
        end
    end
end

// -------------------------------------------------------------------------
// 顏色判斷 (比對當前發送的 led_idx 是否為目標 active_led)
// -------------------------------------------------------------------------
always @(*) begin
    if (draw_mode == MODE_ANIMATION) begin
        if (led_idx == draw_target) begin
            current_color = COLOR_RED;   // 目標 LED 亮紅燈
        end else begin
            current_color = COLOR_BLOCK; // 其餘 LED 熄滅
        end
    end else begin
        current_color = COLOR_BLOCK;
    end
end

// -------------------------------------------------------------------------
// WS2812B 主控制狀態機
// -------------------------------------------------------------------------
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state     <= STATE_IDLE;
        clk_cnt   <= 0;
        led_idx   <= 0;
        bit_idx   <= 23;
        draw_mode <= MODE_CLEAR;
        DIN       <= 1'b0;
    end else begin
        case (state)
            STATE_IDLE: begin
                DIN     <= 1'b0;
                clk_cnt <= 0;
                if (update_req) begin
                    draw_mode <= sys_mode;
                    state     <= STATE_RESET;
                end
            end

            STATE_RESET: begin
                DIN <= 1'b0;
                if (clk_cnt < RESET_CYCLES - 1) begin
                    clk_cnt <= clk_cnt + 1'b1;
                end else begin
                    clk_cnt <= 0;
                    led_idx <= 0;
                    bit_idx <= 23;
                    state   <= STATE_SEND;
                end
            end

            STATE_SEND: begin
                // 依據當前 Bit 輸出高電位寬度
                if (current_color[bit_idx]) begin
                    DIN <= (clk_cnt < T1H_CYCLES) ? 1'b1 : 1'b0;
                end else begin
                    DIN <= (clk_cnt < T0H_CYCLES) ? 1'b1 : 1'b0;
                end

                // 控制單一 Bit 的總週期 (BIT_CYCLES)
                if (clk_cnt < BIT_CYCLES - 1) begin
                    clk_cnt <= clk_cnt + 1'b1;
                end else begin
                    clk_cnt <= 0;
                    if (bit_idx > 0) begin
                        bit_idx <= bit_idx - 1'b1;
                    end else begin
                        bit_idx <= 23;
                        if (led_idx < 63) begin
                            led_idx <= led_idx + 1'b1; // 順序傳送下一顆 LED (0 -> 63)
                        end else begin
                            led_idx <= 0;
                            state   <= STATE_IDLE;    // 送完 64 顆，進入 IDLE 停等刷新
                        end
                    end
                end
            end

            default: state <= STATE_IDLE;
        endcase
    end
end

endmodule