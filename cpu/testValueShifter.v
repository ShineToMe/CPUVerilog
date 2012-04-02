`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:18:10 03/19/2012
// Design Name:   ValueShifter
// Module Name:   D:/CPUVerilog/cpu/testValueShifter.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ValueShifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testValueShifter;

	// Inputs
	reg [25:0] in;

	// Outputs
	wire [27:0] out;

	// Instantiate the Unit Under Test (UUT)
	ValueShifter uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		in = 32'b0001;
		#100;
		in = 32'b011010;
		#100;
		in = 32'hFFFFFFFF;
		#100;		

	end
      
endmodule

