module joystick_button (
    input  wire clk,
    input  wire rst_n,
    input  wire SW,
    output reg  sw_pressed
);
    reg [19:0] cnt;
    reg        sw_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt        <= 0;
            sw_reg     <= 1'b1;
            sw_pressed <= 1'b0;
        end else begin
            sw_reg <= SW;
            if (sw_reg == SW) begin
                if (cnt < 20'd1_000_000)
                    cnt <= cnt + 1;
                else
                    sw_pressed <= ~sw_reg; // 搖桿按下為低電位，此處反相輸出高電位(1)
            end else begin
                cnt <= 0;
            end
        end
    end
endmodule