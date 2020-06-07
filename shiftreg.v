module shiftreg(clk, clr, a,e);

input clk, clr, a;
output reg e;

reg b,c,d;

always @ (posedge clk)
	begin
		
		if(!clr)
			begin
					b<=0;
					c<=0;
					d<=0;
					e<=0;
					
			end
		
		else 
			begin
				b <= a;
				c <= b;
				d <= c;
				e <= d;
			end
		
	end
	
endmodule
