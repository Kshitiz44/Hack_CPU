`timescale 1ns/1ps

/* ripple carry adder module */

module rca(input [7:0] a, b, 
	input cin, output [7:0] sum, output cout);
	
	/*takes input as 2 8bit buses, a and b,  and carry in bit cin
	outputs an 8bit sum bus and a carry out bit , cout*/

	wire [7:0] t;
	
	fa uup 
	(.a(a[0]),
	 .b(b[0]), 
	 .sum(sum[0]), 
	 .cin(cin), 
	 
	 .cout(t[0]));
	 
	fa abc[7:1] (.a(a[7:1]), .b(b[7:1]), .sum(sum[7:1]), .cin(t[6:0]), .cout(t[7:1]) );
	
	/* calls full adder module */
	
	assign cout = t[7];
	
endmodule
