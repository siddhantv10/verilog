module ledfsm(clk,light);

input clk;
output reg [2:0] light;

parameter s0 = 0, s1= 1, s2=2;
parameter red = 3'b001, blue=3'b010, green=3'b100;

reg [1:0] state;

always @ (posedge clk)
	case (state)
			
		s0: begin state <= s1; light <= blue; end
		
		s1: begin state <= s2; light <= green; end		
		s2: begin state <= s0; light <= red; end
		
		default: begin 
			state <= s0;
			 light <= red;
			 end
			
	endcase

endmodule
			
			
