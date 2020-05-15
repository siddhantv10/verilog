module clk(clock);
output reg clock;

initial
	clock = 1'b0;

always
	begin 
	$dumpfile("clk.vcd");
	$dumpvars(0,clk);
	
	#10;
	clock = ~clock;
	
	end
	
initial  begin
	#100;
	$finish;
	end
	
endmodule


