module dff_tb;
    reg clk, d;
    wire q;

    dff uut (.clk(clk), .d(d), .q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0, dff_tb);
        d = 0;
        #12 d = 1;
        #10 d = 0;
        #10 d = 1;
        #20 $finish;
    end
endmodule
