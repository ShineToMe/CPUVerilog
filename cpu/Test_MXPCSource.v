`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:20:55 03/19/2012
// Design Name:   MXPCSource
// Module Name:   C:/.Xilinx/MXPCSource/Test_MXPCSource.v
// Project Name:  MXPCSource
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXPCSource
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MXPCSource;

	// Inputs
	reg [1:0] PCSource;
	reg [31:0] in0;
	reg [31:0] in1;
	reg [31:0] in2;
	reg [31:0] in3;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXPCSource uut (
		.PCSource(PCSource), 
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		PCSource = 0;
		in0 = 0;
		in1 = 0;
		in2 = 0;
		in3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

