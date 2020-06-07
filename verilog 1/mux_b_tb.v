`timescale 100ms / 1ms
`include "mux_b.v"

module mux_b_tb();

reg [15:0] in;
reg [3:0] sel;
wire out;

mux_b uut(in , sel, out);

initial begin
	$dumpfile("mux_b.vcd");
	$dumpvars(0,mux_b_tb);
	
	in = 16'b0010010111010101;
	
	sel = 4'h0; #10;
	sel = 4'h1; #10;
	sel = 4'h2; #10;
	sel = 4'h3; #10;
	sel = 4'h4; #10;
	sel = 4'h5; #10;
	sel = 4'h6; #10;
	sel = 4'h7; #10;
	sel = 4'h8; #10;
	sel = 4'hf; #10;
	sel = 4'he; #10;
	sel = 4'hd; #10;
	sel = 4'hc; #10;
	$finish;
end

endmodule
