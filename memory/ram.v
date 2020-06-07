module ram(dout, din, addr, wr, cs);

parameter addr_size = 10, word_size = 8, memory_size= 1024;

input [word_size-1 : 0] din;
input [addr_size -1 : 0] addr;
input wr, cs;

output [word_size-1 : 0] dout;

reg [word_size-1 : 0] mem [0: memory_size-1 ];

assign dout = mem[addr];

always @ (wr or cs)
	
	if (wr)		mem[addr] = din;

endmodule
