//Counter with Asynchronous Reset

module counter(rst, clk, count);
input rst, clk;
output reg [3:0] count = 4'b0000;

always @ (posedge clk or posedge rst)
	begin
		if(rst)
			count = 0;
		else
			count = count + 1;
	end
endmodule	
