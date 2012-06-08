`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:23 04/02/2012
// Design Name:   CPU
// Module Name:   /home/stud/3100CPUVerilog/CPUVerilog/cpu/CPUtest.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPUtest;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] SW;

	// Outputs
	wire [31:0] LED;

	// Instantiate the Unit Under Test (UUT)
	CPU uut (
		.clk(clk), 
		.reset(reset), 
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		clk = 1;		
		#50;
		reset = 0;
		clk = 0;		
	end
      
always begin
	#10000;
	SW = SW + 1;
end		
		
always begin
	#200;
	clk = !clk;
end		
		
endmodule

