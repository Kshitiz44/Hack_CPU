`timescale 1ns/1ps

/* control unit */

module cu (input [18:0] i,
	output [7:0] o);
		
	
	wire [7:0] d, ad, ad1, sb, sb1, in, in1, dc, dc1, aand, aand1, oor, oor1, nnot, nnot1;
	
	decoder a1 (.i(i[18:16]), .o(d));
	/* sending instruction bits to decoder module */

	add a2 (.i(i[15:0]), .o(ad1));
	sub a3 (.i(i[15:0]), .o(sb1));
	inc a4 (.i(i[15:0]), .o(in1));
	dec a5 (.i(i[15:0]), .o(dc1));
	andd a6 (.i(i[15:0]), .o(aand1));
	orr a7 (.i(i[15:0]), .o(oor1));
	nott a8 (.i(i[15:0]), .o(nnot1));
	
	/* calculated output for possible entries */
	
	and add_module[7:0] (ad[7:0], ad1[7:0], d[1]);
	and sub_module[7:0] (sb[7:0], sb1[7:0], d[2]);
	and inc_module[7:0] (in[7:0], in1[7:0], d[3]);
	and dec_module[7:0] (dc[7:0], dc1[7:0], d[4]);
	and and_module[7:0] (aand[7:0], aand1[7:0], d[5]);
	and or_module[7:0] (oor[7:0], oor1[7:0], d[6]);
	and not_module[7:0] (nnot[7:0], nnot1[7:0], d[7]);
	
	/* taking and of the possible outputs of all modules with the decoder output bit */
	
	/* only the output with decoder bit 1 will remain, rest become 0 buses */
	
	
	or (o[0], ad[0], sb[0], in[0], dc[0], aand[0], oor[0], nnot[0]);
	or (o[1], ad[1], sb[1], in[0], dc[1], aand[1], oor[1], nnot[1]);
	or (o[2], ad[2], sb[2], in[2], dc[2], aand[2], oor[2], nnot[2]);
	or (o[3], ad[3], sb[3], in[3], dc[3], aand[3], oor[3], nnot[3]);
	or (o[4], ad[4], sb[4], in[4], dc[4], aand[4], oor[4], nnot[4]);
	or (o[5], ad[5], sb[5], in[5], dc[5], aand[5], oor[5], nnot[5]);
	or (o[6], ad[6], sb[6], in[6], dc[6], aand[6], oor[6], nnot[6]);
	or (o[7], ad[7], sb[7], in[7], dc[7], aand[7], oor[7], nnot[7]);
	
	/* taking bitwise or of all output bits to get the final output bus */

endmodule
