`include "ram.v"

module ram_tb();

reg [9:0] addr;
reg [7:0] din;
reg select, wr;


wire [7:0] dout;

integer k, myseed;

ram RAM (dout, din, addr, wr, select);

initial begin
	
	for (k=0; k < 1024; k = k+1)
		begin 
			
			din = (k+k) % 256; wr =1 ; select = 1;
			
			#2 addr = k; wr = 0; select =0;
			
		end
	
	repeat (20)
		begin 
			
			#2 addr = $random(myseed)%1024;
			wr= 0; select =1;
			
			$display ("Adress: %5d Data : %4d", addr, dout);
		end
end

initial 
myseed = 35;

endmodule	
