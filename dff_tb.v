`timescale 10ms / 1ms
`include "dff.v"

module dff_tb();

reg d, set, reset, clk = 1'b0;
wire q,qbar;

dff uut(q,qbar, d, set, reset, clk);

initial begin 

	$dumpfile("dff.vcd");
	$dumpvars(0, dff_tb);
		#3;
	d = 0; set = 1; reset = 1; #10;
	d = 1; set = 0; reset = 1; #10;
	d = 1; set = 1; reset = 0; #10;
	d = 0; set = 0; reset = 0; #10;
	
	
	end

always begin 
	clk = ~clk; #4;
	end

initial begin
	#100; $finish;
	end
	
endmodule
