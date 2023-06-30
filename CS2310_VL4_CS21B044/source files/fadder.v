`timescale 1ns/1ps

/* full adder module*/

module fa(input a, input b, input cin, output cout, output sum);

	wire tc1, tc2, ts;
	
	/* a and b are input bits to be added
	cin is the carry input bit, cout is the carry out bit
	sum is the sum bit */
	
	hadder uup(.a(a), .b(b), .sum(ts), .carry(tc1));
	hadder abc(.a(ts), .b(cin), .sum(sum), .carry(tc2));
	
	/* half adders are being used to add 3 bits 2 at a time */
		
	or (cout, tc1, tc2);
	
endmodule
