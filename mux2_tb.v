`timescale 10ms / 1ms
`include "mux2.v"

module mux2_tb();
reg a,b,s;
wire y;

mux2 uut(a,b,s,y);

initial begin
	$dumpfile("mux2.vcd");
	$dumpvars(0, mux2_tb);
	
	a=0; b=0; s=0; #5;
	a=0; b=0; s=1; #5;
	a=0; b=1; s=0; #5;
	a=0; b=1; s=1; #5;
	a=1; b=0; s=0; #5;
	a=1; b=0; s=1; #5;
	a=1; b=1; s=0; #5;
	a=1; b=1; s=1; #5;
	
	$finish;
	end
endmodule
