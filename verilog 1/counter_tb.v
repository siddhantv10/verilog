`timescale 100ms / 1ms
`include "counter.v"

module counter_tb();

reg clk, rst;
wire [3:0] count;

counter uut(clk, rst, count);

initial begin
	$dumpfile("counter.vcd");
	$dumpvars(0,counter_tb);
	
	clk= 0; rst=0; #10;
	clk= 1; rst=1; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=1; #10;
	clk= 0; rst=0; #10;
	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;

	clk= 1; rst=0; #10;
	clk= 0; rst=0; #10;
end

endmodule
