`timescale 10ms / 1ms
`include "dff.v"

module dff_tb();
reg d = 1'b0, clk = 1'b0;
wire q, qbar;

dff uut(d,clk,q,qbar);

initial begin 
	$dumpfile("dff.vcd");
	$dumpvars(0,dff_tb);
	end

always begin 
	#7;
	d = ~d;
	end
	
always begin
	clk = ~clk; #3;
	end

initial	begin
	#100;
	$finish;
	end
	
endmodule
