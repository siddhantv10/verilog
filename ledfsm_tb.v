`timescale 10ms / 1ms
`include "ledfsmopt.v"

module ledfsm_tb();

reg clk;
wire [2:0] light;

ledfsmopt dut(clk, light);

initial begin
	clk = 1'b0;
	$dumpfile("ledfsm.vcd");
	$dumpvars(0, ledfsm_tb);
		
	#100;
	$finish;
	end

always #5 clk = ~clk;

endmodule
