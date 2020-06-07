module mux2 (a,b,s,y);
input a,b,s;
output reg y;

always @ (*)
	if(s)
		y = b;
		
	else 
		y = a;
		
endmodule
