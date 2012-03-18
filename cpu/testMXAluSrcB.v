`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:41 03/18/2012
// Design Name:   MXAluSrcB
// Module Name:   D:/cpu/testMXAluSrcB.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MXAluSrcB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMXAluSrcB;

	// Inputs
	reg in0;
	reg in1;
	reg in2;
	reg in3;
	reg in4;
	reg in5;
	reg[2:0] ALUSrcB;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	MXAluSrcB uut (
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.in3(in3), 
		.in4(in4), 
		.in5(in5), 
		.ALUSrcB(ALUSrcB), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in0 = 0;
		in1 = 1;
		in2 = 0;
		in3 = 1;
		in4 = 0;
		in5 = 1;
		ALUSrcB = 2'b000;

		// Wait 100 ns for global reset to finish
		#100;
      in1 = 1;
		#100;
      in1 = 0;
		#100;
      in1 = 1;
		#100;
      in1 = 0;
		#100;
      in1 = 1;
		
		while(1)
		begin
			#100;
			if(ALUSrcB == 4)
				ALUSrcB = 0;
			else
				ALUSrcB = ALUSrcB + 1;
		end
		
		// Add stimulus here

	end
      
endmodule

