`timescale 1ns/1ps

/* decrement module */

module dec(input [15:0] i,
	output [7:0] o);
		
	wire temp;
	
	rca abc (.a(i[15:8]), .b(8'b11111111), .cin(1'b0), .cout(temp), .sum(o));
	
	/* calls adder module to add 2's complement of 1 */
	
	
endmodule
