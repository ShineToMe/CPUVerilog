`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:55:23 06/11/2012
// Design Name:   CPU_with_memory
// Module Name:   D:/cpu_verilog/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba_not_work/superPOWEROVER9000_new_amba/superPOWEROVER9000/Test_CPU_with_memory.v
// Project Name:  superPOWEROVER9000
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_with_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_CPU_with_memory;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] SW;

	// Outputs
	wire [31:0] LED;

	// Instantiate the Unit Under Test (UUT)
	CPU_with_memory uut (
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
		#300;
      reset = 0;		
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

