`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:20:31 03/19/2012
// Design Name:   MXMemToReg
// Module Name:   C:/.Xilinx/MXMemToReg/Test_MXMemToReg.v
// Project Name:  MXMemToReg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXMemToReg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MXMemToReg;

	// Inputs
	reg [1:0] MemToReg;
	reg [31:0] in0;
	reg [31:0] in1;
	reg [31:0] in2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXMemToReg uut (
		.MemToReg(MemToReg), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		MemToReg = 0;
		in0 = 0;
		in1 = 0;
		in2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

