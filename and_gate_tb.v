`timescale 1ns/1ps

module and_gate_tb;
    reg a, b;       // Inputs are 'reg' in testbenches
    wire out;       // Outputs are 'wire'

    // Connect our design (UUT = Unit Under Test)
    and_gate uut (
        .a(a), 
        .b(b), 
        .out(out)
    );

    initial begin
        // Tell Icarus to save the "waves" so we can see them later
        $dumpfile("and_gate_test.vcd");
        $dumpvars(0, and_gate_tb);

        // Test cases
        a = 0; b = 0; #10; // Wait 10ns
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $display("Test Complete");
        $finish;
    end
endmodule
