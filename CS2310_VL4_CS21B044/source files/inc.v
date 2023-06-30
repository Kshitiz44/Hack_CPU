`timescale 1ns/1ps

/* increment module */

module inc(input [15:0] i,
	output [7:0] o);
		
	wire temp;
	rca uut (.a(i[15:8]), .b(8'b00000001), .cin(1'b0), .cout(temp), .sum(o));
	
	/* adds 1 to the furst operand */
endmodule
