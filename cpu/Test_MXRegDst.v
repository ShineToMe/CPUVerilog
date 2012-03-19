`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:21:16 03/19/2012
// Design Name:   MXRegDst
// Module Name:   C:/.Xilinx/MXRegDst/Test_MXRegDst.v
// Project Name:  MXRegDst
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXRegDst
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MXRegDst;

	// Inputs
	reg [1:0] RegDst;
	reg [4:0] in0;
	reg [4:0] in1;
	reg [4:0] in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXRegDst uut (
		.RegDst(RegDst), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		RegDst = 0;
		in0 = 0;
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

