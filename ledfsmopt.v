module ledfsmopt(clk, light);

input clk;
output reg [2:0] light;

parameter s0 = 0, s1= 1, s2=2;
parameter red = 3'b001, blue=3'b010, green=3'b100;

reg [1:0] state;

always @ (posedge clk)
	case (state)
			
		s0: state <= s1;  
		
		s1:  state <= s2; 		
		s2: state <= s0; 
		
		default: state <= s0;
			
	endcase
	
always @ (posedge clk)
	case (state)
		
		s0:  light <= blue; 
		s1:  light <= green; 
		s2:  light <= red; 
		
		default: light <= red;
			 
			
	endcase

endmodule
