module sp_ram_sync_rw(addr, data, clk, rd, wr, cs);

input [9:0] addr; 
input 		clk;
input 		rd;
input 		wr;
input 		cs;		//chip-select

inout [7:0] data;		//since it is a type wire, hence we cannot use it
						//to assign data
						//hence using dout to take data from memory 
						// and then assigning it to data

reg [7:0] mem [1023 : 0];

reg [7:0] dout;

assign data = (cs && rd) ? dout : 8'bz;

always @ (posedge clk) 				//for asynchronous, remove the clk 
									//from the whole code and use * here

	if(cs && wr && !rd) 	mem[addr] = data;
	
always @ (posedge clk)
	
	if(cs && rd && !wr) 	dout = mem[addr];


endmodule
