`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:51:50 03/18/2012
// Design Name:   PCSetter
// Module Name:   D:/cpu/testPCSetter.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCSetter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testPCSetter;

	// Inputs
	reg PCWrite;
	reg PCWriteIfZero;
	reg PCWriteIfNonZero;
	reg zero;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	PCSetter uut (
		.PCWrite(PCWrite), 
		.PCWriteIfZero(PCWriteIfZero), 
		.PCWriteIfNonZero(PCWriteIfNonZero), 
		.zero(zero), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		PCWrite = 0;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 0;
		zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		#100;
      PCWrite = 0;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 0;
		zero = 1;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 1;
		zero = 0;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 1;
		zero = 1;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 0;
		zero = 0;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 0;
		zero = 1;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 1;
		zero = 0;
		
		#100;
      PCWrite = 0;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 1;
		zero = 1;
		
		////
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 0;
		zero = 1;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 1;
		zero = 0;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 0;
		PCWriteIfNonZero = 1;
		zero = 1;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 0;
		zero = 0;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 0;
		zero = 1;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 1;
		zero = 0;
		
		#100;
      PCWrite = 1;
		PCWriteIfZero = 1;
		PCWriteIfNonZero = 1;
		zero = 1;
		

	end
      
endmodule

