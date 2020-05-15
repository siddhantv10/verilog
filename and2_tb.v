`timescale 100ms / 1ms
`include "and2.v"

module and2_tb ();

reg a,b;
wire out;

and2 g(a,b,out);

initial begin
  $dumpfile("and2.vcd");
  $dumpvars(0,and2_tb);
  a=0; b=0; #10;
  a=0; b=1; #10;
  a=1; b=0; #10;
  a=1; b=1; #10;

end


endmodule //and2_tb
