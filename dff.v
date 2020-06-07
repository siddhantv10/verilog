module dff(d,clk, q, qbar);

input d,clk;

output reg q, qbar;

always @ (posedge clk)
	begin 
		q = d;
		qbar = ~d;
	end
endmodule // dff


