`timescale 1ns/1ps

/* add module */

module add(input [15:0] i,
	output [7:0] o);
		
	wire temp;
	rca uut (.a(i[15:8]), .b(i[7:0]), .cin(1'b0), .cout(temp), .sum(o));
	
	/* calls ripple carry adder module */
	
endmodule
