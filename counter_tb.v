`timescale 10ms / 1ms
`include "counter.v"

module counter_tb();
reg rst=0, clk = 0;
wire [3:0] count;

counter uut(rst, clk, count);

initial begin
	$dumpfile("counter.vcd");
	$dumpvars(0, counter_tb);
	
	end
	
always begin
		rst = ~rst; #25;
		end
	
always begin
	clk = ~clk; #4;
	end

initial begin
	#100;
	$finish;
	end

endmodule
