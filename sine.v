module sine;
    
 real x;
 real y;
 integer i;
 initial begin
   $dumpfile("sine.vcd");
   $dumpvars(0,sine);
   for (i=0;i<360;i=i+10)begin
       x=i*3.14159/180.0;
       y=$sine(x);
       #10;
   end
   $finish;
  end
endmodule
