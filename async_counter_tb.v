`timescale 10ms / 1ms
`include "async_counter.v"

module counter_tb();
reg rst=0, clk = 0;
wire [3:0] count;

counter uut(rst, clk, count);

initial begin
	$dumpfile("async_counter.vcd");
	$dumpvars(0, counter_tb);
	
	end
	
always begin
		 #25; rst = ~rst;
		end
	
always begin
	clk = ~clk; #4;
	end

initial begin
	#100;
	$finish;
	end

endmodule

