module ipd_parser(
    input clk,
    input rst_n,
    input [7:0] rx_data,
    input rx_done,

    output reg [7:0] data_out,
    output reg data_valid,
	 output reg [7:0] length       // 要接收幾個byte
);

localparam IDLE   = 0,
           IPD    = 1,
           LEN    = 2,
           COLON  = 3,
           DATA   = 4;

reg [2:0] state;

reg [7:0] count;        // 已接收幾個

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        data_valid <= 0;
        length <= 0;
        count <= 0;
    end 
    else if (rx_done) begin
        data_valid <= 0;

        case(state)

        // 等 "+IPD,"
        IDLE:
            if (rx_data == "+")
                state <= IPD;

        IPD:
            if (rx_data == "I")
                state <= IPD;
            else if (rx_data == "P")
                state <= IPD;
            else if (rx_data == "D")
                state <= IPD;
            else if (rx_data == ",") begin
                length <= 0;
                state <= LEN;
            end
            else
                state <= IDLE;

        // 解析長度（例如 7 或 12）
        LEN:
            if (rx_data >= "0" && rx_data <= "9") begin
                length <=  rx_data - "0";
            end
            else if (rx_data == ":") begin
                count <= 0;
                state <= DATA;
            end

        // 收資料
        DATA: begin
            data_out <= rx_data;
            data_valid <= 1;
            count <= count + 1;

            if (count == length -1  )
                state <= IDLE;
        end

        default:
            state <= IDLE;

        endcase
    end
end

endmodule