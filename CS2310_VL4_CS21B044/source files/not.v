`timescale 1ns/1ps

/* bitwise not module */

module nott (input [15:0] i,
	output [7:0] o);
		
	
	not o1[7:0] (o[7:0], i[15:8]);

	/* returns not of every input nit */
	
endmodule
