`timescale 1ns/1ps

/* decoder module */

module decoder(input [2:0] i,
	output [7:0] o);
		
	/* i is the 3bit input and o is the 8 bit output */
	wire n0, n1, n2;
	
	not(n0, i[0]);
	not(n1, i[1]);
	not(n2, i[2]);
	
	/* calculating nots of each input bit */
	
	and(o[0], n2, n1, n0);
	and(o[1], n2, n1, i[0]);
	and(o[2], n2, i[1], n0);
	and(o[3], n2, i[1], i[0]);
	
	and(o[4], i[2], n1, n0);
	and(o[5], i[2], n1, i[0]);
	and(o[6], i[2], i[1], n0);
	and(o[7], i[2], i[1], i[0]);
	
	/* output calculation using truth table */
	
endmodule
