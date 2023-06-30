`timescale 1ns/1ps

module cutb();
	reg [18:0] i;
	wire [7:0] o;
	
	cu uut ( .i(i), .o(o));
	
	initial begin
	
		$dumpfile("cu_test.vcd");
		$dumpvars(0, cutb);
		
		i = 19'b0010010001100010100; #10;
		i = 19'b0100010001100010100; #10;
		i = 19'b0110010001100010100; #10;
		i = 19'b1000010001100010100; #10;
		i = 19'b1010010001100010100; #10;
		i = 19'b1100010001100010100; #10;
		i = 19'b1110010001100010100; #10;
		
		$finish;
	end
endmodule

