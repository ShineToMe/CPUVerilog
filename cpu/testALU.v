`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:27 03/19/2012
// Design Name:   ALU
// Module Name:   D:/CPUVerilog/cpu/testALU.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testALU;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [5:0] ALUOp;

	// Outputs
	wire [31:0] out;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.ALUOp(ALUOp), 
		.out(out), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
      
endmodule

