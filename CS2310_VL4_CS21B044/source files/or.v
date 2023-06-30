`timescale 1ns/1ps

/* bitwise or module */

module orr(input [15:0] i,
	output [7:0] o);
		
	
	or o1[7:0] (o[7:0], i[15:8], i[7:0]);

	/* takes or of every but of both the inputs and returns */
	
endmodule
