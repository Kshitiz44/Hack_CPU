`timescale 1ns/1ps

/* half adder module */ 

module hadder(input a, input b, output sum, output carry);
	xor (sum, a, b);
	and (carry, a, b);
endmodule

