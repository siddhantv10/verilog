module counter(clk, rst, count);
	input clk, rst;
	output [3:0] count;
	reg [3:0] count;

	always @ (posedge clk)
	begin 
		if(rst)
			count = 3'b0;
		else
			count = count+1;
	end
endmodule
	
			
