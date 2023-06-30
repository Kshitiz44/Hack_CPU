`timescale 1ns/1ps

/* subtraction module */

module sub(input [15:0] i,
	output [7:0] o);
		
	wire [7:0] t1, t2;
	wire temp1, temp2;
		
	not o1[7:0] (t1[7:0], i[7:0]);
	
	rca abc (.a(t1[7:0]), .b(8'b00000001), .cin(1'b0), .cout(temp1), .sum(t2));
	
	/* calculating 2's complement of second operand */
	
	rca uut (.a(i[15:8]), .b(t2), .cin(1'b0), .cout(temp2), .sum(o));
	
	/* calling add module */
	
	
endmodule
