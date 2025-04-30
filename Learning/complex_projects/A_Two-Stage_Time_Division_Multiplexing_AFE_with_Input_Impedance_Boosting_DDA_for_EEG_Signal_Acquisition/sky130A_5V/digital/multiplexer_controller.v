module multiplexer_controller(
    input        clk,
    input        RST,
    output reg   CH1,
    output reg   CH2,
    output reg   CH3,
    output reg   CH4
);

reg [1:0] counter; // 2-bit register

always @(posedge clk or posedge RST) begin
    if (RST) begin
        counter <= 2'b00;
    end else begin
        counter <= counter + 2'b01;
    end
end

always @(*) begin
    // Default all channels OFF
    CH1 = 0;
    CH2 = 0;
    CH3 = 0;
    CH4 = 0;

    case (counter)
        2'b00: CH4 = 1;
        2'b01: CH1 = 1;
        2'b10: CH2 = 1;
        2'b11: CH3 = 1;
        default: ; // Do nothing
    endcase
end

endmodule
