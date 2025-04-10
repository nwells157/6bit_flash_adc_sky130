// Testbench for Inverter
module tb_inv;

    // Inputs and Outputs
    reg a; // Test input (stimulus)
    wire y; // Output from the inverter

    // Instantiate the Unit Under Test (UUT)
    inv uut (
        .a(a),
        .y(y)
    );

    // Testbench Stimulus
    initial begin
        // Create a waveform dump file for simulation
        $dumpfile("./iverilog_outputs/inv.vcd");
        $dumpvars(0, tb_inv);

        // Test Cases
        a = 0; #10; // Apply 0 to input, wait 10 time units
        a = 1; #10; // Apply 1 to input, wait 10 time units

        // Finish simulation
        $finish;
    end

    // Monitor output for debugging
    initial begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
    end

endmodule
