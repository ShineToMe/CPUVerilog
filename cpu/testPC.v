`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:51:12 03/19/2012
// Design Name:   PC
// Module Name:   D:/CPUVerilog/cpu/testPC.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testPC;

	// Inputs
	reg clk;
	reg reset;
	reg enable;
	reg [31:0] d;

	// Outputs
	wire [31:0] q;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.d(d), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		enable = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;
		clk = 1;
		#100
		reset = 0;
		clk = 0;
		d = 32'b1110101;
		#100;
		clk = 1;
		#100;
		clk = 0;
		enable = 1;
		#100;
		clk = 1;
		#100;
		clk = 0;
		d = 32'b0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		
		// Add stimulus here

	end
      
endmodule

