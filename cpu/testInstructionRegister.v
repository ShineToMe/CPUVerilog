`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:46 03/19/2012
// Design Name:   InstructionRegister
// Module Name:   D:/CPUVerilog/cpu/testInstructionRegister.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testInstructionRegister;

	// Inputs
	reg clk;
	reg reset;
	reg enable;
	reg [31:0] d;

	// Outputs
	wire [5:0] q31_26;
	wire [4:0] q25_21;
	wire [4:0] q20_16;
	wire [15:0] q15_0;

	// Instantiate the Unit Under Test (UUT)
	InstructionRegister uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.d(d), 
		.q31_26(q31_26), 
		.q25_21(q25_21), 
		.q20_16(q20_16), 
		.q15_0(q15_0)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		clk = 1;
		#100;
		clk = 0;
		reset = 0;
		d = 32'hAF31AF31;		
		#100;
		enable = 1;
		clk = 1;
		#100;
		enable = 0;
		clk = 0;
		d = 32'h0;
		#100;
		clk = 1;
		#100;
		clk = 0;
	end
      
endmodule

