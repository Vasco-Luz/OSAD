module top_module (
    input wire clk,          // Clock input
    input wire reset,         // Reset input for both counter and state machine
    output wire wr,
    output wire B_line,
    output wire B_line_neg

);

    wire [5:0] count;        // 6-bit count output from counter, input to state machine

    // Instantiate the 6-bit counter
    counter_6bit counter_inst (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Instantiate the state machine
    state_machine state_machine_inst (
        .clk(clk),
        .reset(reset),
        .count(count),
        .wr(wr),
        .B_line(B_line),
        .B_line_neg(B_line_neg)
    );

endmodule


module state_machine (
    input  wire        clk,       // Clock
    input  wire        reset,     // Reset for testing purposes
    input  wire [5:0]  count,     // Simple 6-bit counter for testing purposes
    output reg         wr,        // Read or write command
    output reg         B_line,    // Positive bit line
    output reg         B_line_neg // Negative bit line
);

    // State encoding for basic state machine
    localparam IDLE     = 2'b00;
    localparam WRITE_1  = 2'b01;
    localparam READ     = 2'b10;
    localparam WRITE_0  = 2'b11;

    reg [1:0] state, next_state;

    // State transition on clock edge
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // State machine logic based on count values
    always @(*) begin
        // Default values
        next_state = state;

        case (state)
            IDLE: begin
                if (count == 6'b000001) begin
                    next_state = WRITE_1;
                    wr = 0;
                    B_line = 0;
                    B_line_neg = 0;
                end
            end

            WRITE_1: begin
                if (count == 6'b000010) begin  // Write a 1b in RAM (negative logic because PMOS used to write)
                    B_line = 0;       // Set the PMOS
                    B_line_neg = 1;
                    wr = 0; 
                end
                if (count == 6'b000011) begin
                    wr = 1;           // Write the value to RAM
                    B_line = 0;       // Set the PMOS
                    B_line_neg = 1;
                end
                if (count == 6'b000100) begin
                    wr = 0;           // Shut the write command
                    B_line = 1;       // Shut off charging PMOS
                    B_line_neg = 1;
                end
                if (count == 6'b000101) begin
                    B_line = 1;       // Shut off charging PMOS
                    B_line_neg = 1;
                    next_state = READ;
                end
            end

            READ: begin
                if (count == 6'b000110 || count == 6'b001111) begin
                    B_line = 0;       // Charge both lines
                    B_line_neg = 0;
                end
                if (count == 6'b000111 || count == 6'b010000) begin
                    B_line = 1;       // Shut off PMOS
                    B_line_neg = 1;
                end
                if (count == 6'b001000 || count == 6'b010001) begin
                    wr = 1;           // Read content of SRAM
                    B_line = 1;       // Shut off PMOS
                    B_line_neg = 1;
                end
                if (count == 6'b001001 || count == 6'b010011) begin
                    wr = 0;           // Reset
                    next_state = WRITE_0;
                end
            end

            WRITE_0: begin
                if (count == 6'b001010) begin
                    B_line = 1;       // Set PMOS
                    B_line_neg = 0;
                end
                if (count == 6'b001011) begin
                    wr = 1;           // Write the value to RAM
                end
                if (count == 6'b001100) begin
                    wr = 0;           // Shut the write command
                    B_line = 1;       // Shut off charging PMOS
                    B_line_neg = 1;
                end
                if (count == 6'b001101) begin
                    next_state = READ;
                end
            end
        endcase
    end
endmodule



module counter_6bit (
    input  wire clk,          // Clock signal
    input  wire reset,        // Synchronous reset signal
    output reg  [5:0] count   // 6-bit counter output
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 6'b0;     // Reset counter to 0
        end else begin
            count <= count + 1; // Increment counter
        end
    end
endmodule

