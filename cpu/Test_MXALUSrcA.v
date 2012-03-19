`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:19:15 03/19/2012
// Design Name:   MXALUSrcA
// Module Name:   C:/.Xilinx/MXALUSrcA/Test_MXALUSrcA.v
// Project Name:  MXALUSrcA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXALUSrcA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MXALUSrcA;

	// Inputs
	reg ALUSrcA;
	reg [31:0] in0;
	reg [31:0] in1;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXALUSrcA uut (
		.ALUSrcA(ALUSrcA), 
		.in0(in0), 
		.in1(in1), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		ALUSrcA = 0;
		in0 = 0;
		in1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

