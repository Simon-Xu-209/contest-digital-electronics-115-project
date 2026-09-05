// ============================================================================
// Module Name: MPU6050 (Top-Level Module 修正版)
// ============================================================================
module MPU6050 (
    input  wire        clk,          
    input  wire        rst_n,        
    input  wire [7:0]  switch_8bit,  
    
    output wire        J7_SCL,       
    inout  wire        J7_SDA,       
    output wire        J7_XDA,       
    output wire        J7_XCL,       
    output wire        J7_AD0,       
    input  wire        J7_INT,       

    output wire [15:0] seg_data,     
    output wire [7:0]  seg_com       
);

    assign J7_AD0 = 1'b0;    
    assign J7_XDA = 1'bz;    
    assign J7_XCL = 1'bz;    

    localparam MPU6050_ADDR   = 7'h68;
    localparam REG_PWR_MGMT_1 = 8'h6B; 
    localparam REG_ACCEL_X_H  = 8'h3B; 

    reg [15:0] accel_x, accel_y, accel_z;
    reg [15:0] temp_raw;
    reg [15:0] gyro_x,  gyro_y,  gyro_z;

    reg        i2c_start;
    reg        i2c_rw;
    reg  [7:0] i2c_reg_addr;
    reg  [7:0] i2c_wr_data;
    wire [7:0] i2c_rd_data;
    wire       i2c_busy;
    wire       i2c_done;

    i2c_master u_i2c_master (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (i2c_start),
        .slave_addr (MPU6050_ADDR),
        .rw         (i2c_rw),
        .reg_addr   (i2c_reg_addr),
        .wr_data    (i2c_wr_data),
        .rd_data    (i2c_rd_data),
        .busy       (i2c_busy),
        .done       (i2c_done),
        .scl        (J7_SCL),
        .sda        (J7_SDA)
    );

    seven_segment_display u_seven_segment_display (
        .clk         (clk),
        .rst_n       (rst_n),
        .switch_8bit (switch_8bit),
        .accel_x     (accel_x),
        .accel_y     (accel_y),
        .accel_z     (accel_z),
        .gyro_x      (gyro_x),
        .gyro_y      (gyro_y),
        .gyro_z      (gyro_z),
        .seg_data    (seg_data),
        .seg_com     (seg_com)
    );

    localparam INIT_WAKE     = 3'd0,
               WAIT_INIT     = 3'd1,
               READ_BYTE     = 3'd2,
               WAIT_BYTE     = 3'd3,
               DELAY_INTERVAL= 3'd4;

    reg [2:0]  state;
    reg [3:0]  byte_idx;      
    reg [23:0] delay_cnt;     
    reg [7:0]  temp_high;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= INIT_WAKE;
            i2c_start    <= 1'b0;
            i2c_rw       <= 1'b0;
            i2c_reg_addr <= 8'd0;
            i2c_wr_data  <= 8'd0;
            byte_idx     <= 4'd0;
            delay_cnt    <= 24'd0;
            temp_high    <= 8'd0;
            
            accel_x      <= 16'd0;
            accel_y      <= 16'd0;
            accel_z      <= 16'd0;
            temp_raw     <= 16'd0;
            gyro_x       <= 16'd0;
            gyro_y       <= 16'd0;
            gyro_z       <= 16'd0;
        end else begin
            i2c_start <= 1'b0; 
            
            case (state)
                INIT_WAKE: begin
                    if (!i2c_busy) begin
                        i2c_rw       <= 1'b0; 
                        i2c_reg_addr <= REG_PWR_MGMT_1;
                        i2c_wr_data  <= 8'h00; 
                        i2c_start    <= 1'b1;
                        state        <= WAIT_INIT;
                    end
                end

                WAIT_INIT: begin
                    if (i2c_done) begin
                        state    <= READ_BYTE;
                        byte_idx <= 4'd0;
                    end
                end

                READ_BYTE: begin
                    if (!i2c_busy) begin
                        i2c_rw       <= 1'b1; 
                        i2c_reg_addr <= REG_ACCEL_X_H + byte_idx;
                        i2c_start    <= 1'b1;
                        state        <= WAIT_BYTE;
                    end
                end

                WAIT_BYTE: begin
                    if (i2c_done) begin
                        // 高低位元組依序讀取與更新
                        if (byte_idx[0] == 1'b0) begin
                            temp_high <= i2c_rd_data;
                        end else begin
                            case (byte_idx)
                                4'd1:  accel_x <= {temp_high, i2c_rd_data};
                                4'd3:  accel_y <= {temp_high, i2c_rd_data};
                                4'd5:  accel_z <= {temp_high, i2c_rd_data};
                                4'd7:  temp_raw <= {temp_high, i2c_rd_data};
                                4'd9:  gyro_x  <= {temp_high, i2c_rd_data};
                                4'd11: gyro_y  <= {temp_high, i2c_rd_data};
                                4'd13: gyro_z  <= {temp_high, i2c_rd_data};
                            endcase
                        end

                        if (byte_idx == 4'd13) begin
                            state <= DELAY_INTERVAL;
                        end else begin
                            byte_idx <= byte_idx + 1'b1;
                            state    <= READ_BYTE;
                        end
                    end
                end

                DELAY_INTERVAL: begin
                    if (delay_cnt >= 24'd500_000) begin 
                        delay_cnt <= 24'd0;
                        byte_idx  <= 4'd0;
                        state     <= READ_BYTE;
                    end else begin
                        delay_cnt <= delay_cnt + 1'b1;
                    end
                end

                default: state <= INIT_WAKE;
            endcase
        end
    end
endmodule