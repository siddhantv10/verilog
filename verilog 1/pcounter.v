//parameterized design :: N bit counter

module pcounter (clear, clock, count);
	parameter N=7;
	input clear, clock;
	output [0:N] count;
	reg [0:N] count;
	
	always @ (posedge clock or posedge clear)
	if(clear)
		count <= 7'b0;
		
	else
		count <= count + 1;
endmodule
