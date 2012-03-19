`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:30:43 03/19/2012
// Design Name:   ImmediateSignExtend
// Module Name:   D:/CPUVerilog/cpu/testImmediateSignExtend.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ImmediateSignExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testImmediateSignExtend;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	ImmediateSignExtend uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 16'b1;
		#100;
		in = 16'h7FFF;
		#100;
		in = 16'h8000;
		#100;
		in = 16'hAAFA;
		#100;

	end
      
endmodule

