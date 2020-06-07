`timescale 10ms / 1ms
`include "shiftreg.v"

module shiftreg_tb();

reg clk=0, clr=1, a=0;
wire e;

shiftreg uut(clk,clr, a, e);

initial begin
	$dumpfile("shiftreg.vcd");
	$dumpvars(0, shiftreg_tb);
	#10; a=0;
	#10; a=1;
	#10; a=0;
	#10; a=1;
	
	#100;	
	$finish;
	end
	
always 
	begin
		#9; clk = ~clk;
	end

	
endmodule
