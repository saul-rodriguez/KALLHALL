//Verilog HDL for "KALHALL_STD_LIB", "DFFX1" "functional"

`timescale 1ns/10ps

module DFFX1 ( Q, QN, CK, D );

   input     CK, D;
   output reg Q, QN;

   always @(posedge CK) begin
		Q <= D;
		QN <=~D;
   end

endmodule
