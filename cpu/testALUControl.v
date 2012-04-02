`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:44:11 03/19/2012
// Design Name:   ALUControl
// Module Name:   D:/CPUVerilog/cpu/testALUControl.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testALUControl;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] opCode5_0;
	reg [5:0] opCode31_26;

	// Outputs
	wire [5:0] decodedALUOp;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.opCode5_0(opCode5_0), 
		.opCode31_26(opCode31_26), 
		.decodedALUOp(decodedALUOp)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		opCode5_0 = 0;
		opCode31_26 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ALUOp = 2;
		opCode5_0 = 6'hff;
		opCode31_26 = 6'h0d;
		#100;
		
		ALUOp = 0;
		opCode5_0 = 6'h11;
		opCode31_26 = 6'hff;
		#100;
		
		ALUOp = 1;
		opCode5_0 = 6'h11;
		opCode31_26 = 6'hff;
		#100;
		
		ALUOp = 2;
		opCode5_0 = 6'h22;
		opCode31_26 = 6'h00;
		#100;
		
	end
      
endmodule

