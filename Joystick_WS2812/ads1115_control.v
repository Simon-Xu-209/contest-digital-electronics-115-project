module ads1115_control (
    input  wire         clk,
    input  wire         rst_n,
    output wire         SCL,
    inout  wire         SDA,
    input  wire         ALRT,
    output reg  [15:0]  joystick_x,
    output reg  [15:0]  joystick_y
);

    localparam STATE_IDLE       = 4'd0,
               STATE_WRITE_CH0  = 4'd1,
               STATE_WAIT_CH0   = 4'd2,
               STATE_READ_CH0   = 4'd3,
               STATE_WRITE_CH1  = 4'd4,
               STATE_WAIT_CH1   = 4'd5,
               STATE_READ_CH1   = 4'd6,
               STATE_ERROR      = 4'd7;

    reg [3:0]  current_state, next_state;
    reg [23:0] delay_cnt;
    reg [3:0]  sub_step;

    // 驅動 I2C Master 的訊號
    reg        i2c_start, i2c_stop, i2c_write, i2c_read, i2c_ack_in;
    reg  [7:0] i2c_data_in;
    wire [7:0] i2c_data_out;
    wire       i2c_busy;
    wire       i2c_ack_out; // 從機回應訊號 (0: ACK 成功, 1: NACK 失敗)

    i2c_master u_i2c (
        .clk(clk),
        .rst_n(rst_n),
        .start(i2c_start),
        .stop(i2c_stop),
        .write(i2c_write),
        .read(i2c_read),
        .ack_in(i2c_ack_in),
        .data_in(i2c_data_in),
        .data_out(i2c_data_out),
        .ack_out(i2c_ack_out),
        .busy(i2c_busy),
        .scl(SCL),
        .sda(SDA)
    );

    reg [7:0] data_high;
    reg       i2c_busy_d;
    reg       last_was_write; // 記錄上一次操作是否為寫入 (寫入才需要檢查 ACK)

    // 邊緣檢測
    wire i2c_done    = (i2c_busy_d && !i2c_busy); 
    wire i2c_started = (!i2c_busy_d && i2c_busy); 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) i2c_busy_d <= 0;
        else        i2c_busy_d <= i2c_busy;
    end

    reg i2c_cmd_ack;

    // 時序邏輯區塊
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_state  <= STATE_IDLE;
            delay_cnt      <= 0;
            sub_step       <= 0;
            joystick_x     <= 16'h7FF0; //16'h7FFF;
            joystick_y     <= 16'h7FF0; //16'h7FFF;
            data_high      <= 8'h00;
            i2c_start      <= 0;
            i2c_stop       <= 0;
            i2c_write      <= 0;
            i2c_read       <= 0;
            i2c_ack_in     <= 0;
            i2c_data_in    <= 8'h00;
            i2c_cmd_ack    <= 0;
            last_was_write <= 0;
        end else begin
            current_state <= next_state;

            // 轉換延時計數
            if (current_state == STATE_WAIT_CH0 || current_state == STATE_WAIT_CH1)
                delay_cnt <= delay_cnt + 1;
            else
                delay_cnt <= 0;

            // 清除發送脈衝
            if (i2c_started) begin
                i2c_start   <= 0;
                i2c_stop    <= 0;
                i2c_write   <= 0;
                i2c_read    <= 0;
                i2c_cmd_ack <= 1;
            end

            // --- ACK / NACK 判定與資料採樣 ---
            if (i2c_done) begin
                i2c_cmd_ack <= 0;
                
                // 若寫入沒收到 ACK，進入復位保護 (sub_step = 15)
                if (last_was_write && i2c_ack_out == 1'b1) begin
                    sub_step <= 4'd15;
                end else begin
                    sub_step <= sub_step + 1;
                    
                    if (current_state == STATE_READ_CH0 || current_state == STATE_READ_CH1) begin
                        if (sub_step == 4'd5) begin
                            data_high <= i2c_data_out; // 鎖存高位 Byte (MSB)
                        end else if (sub_step == 4'd6) begin
                            if (current_state == STATE_READ_CH0)
                                joystick_x <= {data_high, i2c_data_out}; // 組合 16-bit X 軸數值
                            else
                                joystick_y <= {data_high, i2c_data_out}; // 組合 16-bit Y 軸數值
                        end
                    end
                end
            end else if (current_state != next_state) begin
                sub_step    <= 0;
                i2c_cmd_ack <= 0;
            end

            // 依據子步驟發送命令
            if (!i2c_busy && !i2c_cmd_ack && (i2c_start == 0 && i2c_stop == 0 && i2c_write == 0 && i2c_read == 0)) begin
                
                if (sub_step == 4'd15) begin
                    i2c_stop <= 1; // 發生 NACK 錯誤時發送 STOP 復位總線
                end else begin
                    case (current_state)
                        STATE_WRITE_CH0: begin
                            case (sub_step)
                                4'd0: begin i2c_start <= 1; last_was_write <= 0; end
                                4'd1: begin i2c_write <= 1; i2c_data_in <= 8'h90; last_was_write <= 1; end // 寫入地址 + W
                                4'd2: begin i2c_write <= 1; i2c_data_in <= 8'h01; last_was_write <= 1; end // Config Reg
                                4'd3: begin i2c_write <= 1; i2c_data_in <= 8'hC1; last_was_write <= 1; end // 單端 AIN0, +/-6.144V
                                4'd4: begin i2c_write <= 1; i2c_data_in <= 8'h83; last_was_write <= 1; end // 128 SPS
                                4'd5: begin i2c_stop  <= 1; last_was_write <= 0; end
                                default: ;
                            endcase
                        end

                        STATE_READ_CH0: begin
                            case (sub_step)
                                4'd0: begin i2c_start <= 1; last_was_write <= 0; end
                                4'd1: begin i2c_write <= 1; i2c_data_in <= 8'h90; last_was_write <= 1; end
                                4'd2: begin i2c_write <= 1; i2c_data_in <= 8'h00; last_was_write <= 1; end // Conversion Reg
                                4'd3: begin i2c_start <= 1; last_was_write <= 0; end                      // Repeated Start
                                4'd4: begin i2c_write <= 1; i2c_data_in <= 8'h91; last_was_write <= 1; end // 寫入地址 + R
                                4'd5: begin i2c_read  <= 1; i2c_ack_in  <= 1'b0; last_was_write <= 0; end // 讀取 MSB 給 ACK
                                4'd6: begin i2c_read  <= 1; i2c_ack_in  <= 1'b1; last_was_write <= 0; end // 讀取 LSB 給 NACK
                                4'd7: begin i2c_stop  <= 1; last_was_write <= 0; end
                                default: ;
                            endcase
                        end

                        STATE_WRITE_CH1: begin
                            case (sub_step)
                                4'd0: begin i2c_start <= 1; last_was_write <= 0; end
                                4'd1: begin i2c_write <= 1; i2c_data_in <= 8'h90; last_was_write <= 1; end
                                4'd2: begin i2c_write <= 1; i2c_data_in <= 8'h01; last_was_write <= 1; end
                                4'd3: begin i2c_write <= 1; i2c_data_in <= 8'hD1; last_was_write <= 1; end
                                4'd4: begin i2c_write <= 1; i2c_data_in <= 8'h83; last_was_write <= 1; end
                                4'd5: begin i2c_stop  <= 1; last_was_write <= 0; end
                                default: ;
                            endcase
                        end

                        STATE_READ_CH1: begin
                            case (sub_step)
                                4'd0: begin i2c_start <= 1; last_was_write <= 0; end
                                4'd1: begin i2c_write <= 1; i2c_data_in <= 8'h90; last_was_write <= 1; end
                                4'd2: begin i2c_write <= 1; i2c_data_in <= 8'h00; last_was_write <= 1; end
                                4'd3: begin i2c_start <= 1; last_was_write <= 0; end
                                4'd4: begin i2c_write <= 1; i2c_data_in <= 8'h91; last_was_write <= 1; end
                                4'd5: begin i2c_read  <= 1; i2c_ack_in  <= 1'b0; last_was_write <= 0; end
                                4'd6: begin i2c_read  <= 1; i2c_ack_in  <= 1'b1; last_was_write <= 0; end
                                4'd7: begin i2c_stop  <= 1; last_was_write <= 0; end
                                default: ;
                            endcase
                        end
                        default: ;
                    endcase
                end
            end
        end
    end

    // 狀態轉移邏輯
    always @(*) begin
        next_state = current_state;
        case (current_state)
            STATE_IDLE: begin
                next_state = STATE_WRITE_CH0;
            end
            
            STATE_WRITE_CH0: begin
                if (sub_step == 4'd6 || sub_step == 4'd15)
                    next_state = STATE_WAIT_CH0;
            end

            STATE_WAIT_CH0: begin
                if (delay_cnt > 24'd500_000) // 等待轉換完成 (約 10ms)
                    next_state = STATE_READ_CH0;
            end

            STATE_READ_CH0: begin
                if (sub_step == 4'd8 || sub_step == 4'd15)
                    next_state = STATE_WRITE_CH1;
            end
            
            STATE_WRITE_CH1: begin
                if (sub_step == 4'd6 || sub_step == 4'd15)
                    next_state = STATE_WAIT_CH1;
            end
            
            STATE_WAIT_CH1: begin
                if (delay_cnt > 24'd500_000)
                    next_state = STATE_READ_CH1;
            end
            
            STATE_READ_CH1: begin
                if (sub_step == 4'd8 || sub_step == 4'd15)
                    next_state = STATE_WRITE_CH0;
            end
            
            default: next_state = STATE_IDLE;
        endcase
    end
endmodule