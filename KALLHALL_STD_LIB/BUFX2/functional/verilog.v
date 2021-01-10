//Verilog HDL for "KALHALL_STD_LIB", "BUFX2" "functional"

// type:  
`timescale 1ns/10ps
`celldefine
module BUFX2 (Y, A);
	output Y;
	input A;

	// Function
	buf (Y, A);

	// Timing
	specify
		(A => Y) = 0;
	endspecify
endmodule
`endcelldefine
