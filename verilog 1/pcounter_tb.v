`timescale 100ms / 1ms
`include "pcounter.v"

module pcounter_tb ();
	parameter N = 7;
	reg clear, clock;
	wire [0:N] count;
	
	pcounter uut(clear,clock, count);
		
	initial begin 
		$dumpfile("pcounter.vcd");
		$dumpvars(0,pcounter_tb);
		
		//clock = 0; clear = 0; #10;
		clock = 1; clear = 1; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 1; clear = 1; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
		
		clock = 0; clear = 0; #10;
		clock = 1; clear = 0; #10;
	end
endmodule
