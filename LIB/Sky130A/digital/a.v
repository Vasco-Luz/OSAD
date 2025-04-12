module inverter (
    input wire a,     // Input signal
    output wire y     // Output signal
);

    // Invert the input 'a' and assign to output 'y'
    assign y = ~a;

endmodule