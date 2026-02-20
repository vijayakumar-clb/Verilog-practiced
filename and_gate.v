// This is a simple 2-input AND gate
module and_gate (
    input a, 
    input b, 
    output out
);
    assign out = a & b;
endmodule
