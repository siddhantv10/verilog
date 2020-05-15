`timescale 10ms / 1ms
`include "srlatch.v"


module srlatch_tb();
reg s,r;
wire q, qbar;

srlatch uut(s,r,q,qbar);

initial begin
	$dumpfile("srlatch.vcd");
	$dumpvars(0, srlatch_tb);
	
	#5;
	
	s=1'b0; r=1'b1; #5;
	s=1'b1; r=1'b1; #5;
	s=1'b1; r=1'b0; #5;
	//s=1'b0; r=1'b0; #5;
	
	s=1'b1; r=1'b1; #5;
	
	$finish;
	end
	
endmodule
