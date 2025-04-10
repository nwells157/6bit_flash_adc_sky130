// Inverter Module
module inv (
    input wire a,
    output wire y
);
    assign y = ~a; // Logical NOT operation
endmodule
