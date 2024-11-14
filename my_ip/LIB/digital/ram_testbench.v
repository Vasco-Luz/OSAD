`timescale 1ns / 1ps

module top_module_tb;

    // Testbench signals
    reg clk;
    reg reset;
    wire wr;
    wire B_line;
    wire B_line_neg;

    // Instantiate the top module
    top_module uut (
        .clk(clk),
        .reset(reset),
        .wr(wr),
        .B_line(B_line),
        .B_line_neg(B_line_neg)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period (50 MHz)
    end

    // Test sequence
    initial begin
        // Initialize and reset
        reset = 1;
        #20;               // Hold reset high for 20ns
        reset = 0;

        // Run simulation for a certain number of clock cycles
        #10000;              // Simulate for 500ns (can adjust as needed)

        // Finish simulation
        $stop;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0dns, reset=%b, wr=%b, B_line=%b, B_line_neg=%b", 
                 $time, reset, wr, B_line, B_line_neg);
    end
    initial begin
        $dumpfile("waveform.vcd"); // Name of the output file
        $dumpvars(0, top_module_tb); // Dumps all variables in the testbench
    end

endmodule
