`timescale 100ms / 1ms
`include "alu.v"

module alu_tb();
reg [15:0] x,y;
wire [15:0] z;
wire sign, zero, carry, parity, overflow; 

alu uut(x,y,z, sign, zero, carry, parity, overflow);

initial begin 
	$dumpfile ("alu.vcd");
	$dumpvars(0,alu_tb);
	#5;
	x = 16'h8fff; y = 16'h8000; #5;
	x = 16'hfffe; y = 16'h0002; #5;
	x = 16'haaaa; y = 16'h5555; #5;
	
	$finish;
	
	end
	
endmodule

	
