module rom(addr, data, rd_en, cs);

input [2:0] addr;
input rd_en, cs;

output reg [7:0] data;

always @ (*)
	case (addr)
		0: data = 00;
		1: data = 11;
		2: data = 22;
		3: data = 33;
		4: data = 44;
		. 
		.
		.
		7: data = 23;
		
	endcase

endmodule
