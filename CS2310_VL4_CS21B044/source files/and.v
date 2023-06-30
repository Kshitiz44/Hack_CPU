`timescale 1ns/1ps

/* bitwise and module */

module andd(input [15:0] i,
	output [7:0] o);
		
	
	and o1[7:0] (o[7:0], i[15:8], i[7:0]);
	
	/*takes and of each input bit of the inputs */

	
	
endmodule
