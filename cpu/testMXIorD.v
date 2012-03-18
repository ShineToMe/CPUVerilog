`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:10:19 03/18/2012
// Design Name:   MXIorD
// Module Name:   D:/cpu/testMXIorD.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXIorD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMXIorD;

	// Inputs
	reg in0;
	reg in1;
	reg IorD;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXIorD uut (
		.in0(in0), 
		.in1(in1), 
		.IorD(IorD), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in0 = 1;
		in1 = 0;
		IorD = 0;

		// Wait 100 ns for global reset to finish
		#100;
             
		// Add stimulus here
		while(1) begin
			#10;
			IorD = !IorD; 
		end	 
	end
      
endmodule

