`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:19:52 03/19/2012
// Design Name:   Control
// Module Name:   D:/CPUVerilog/cpu/testControl.v
// Project Name:  cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testControl;

	// Inputs
	reg clk;
	reg reset;
	reg [5:0] opCode;

	// Outputs
	wire PCWriteIfNonZero;
	wire PCWriteIfZero;
	wire PCWrite;
	wire IorD;
	wire MemRead;
	wire MemWrite;
	wire [1:0] MemToReg;
	wire IRWrite;
	wire [1:0] PCSource;
	wire [1:0] ALUOp;
	wire [2:0] ALUSrcB;
	wire ALUSrcA;
	wire RegWrite;
	wire [1:0] RegDst;

	// Instantiate the Unit Under Test (UUT)
	Control uut (
		.clk(clk), 
		.reset(reset), 
		.opCode(opCode), 
		.PCWriteIfNonZero(PCWriteIfNonZero), 
		.PCWriteIfZero(PCWriteIfZero), 
		.PCWrite(PCWrite), 
		.IorD(IorD), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemToReg(MemToReg), 
		.IRWrite(IRWrite), 
		.PCSource(PCSource), 
		.ALUOp(ALUOp), 
		.ALUSrcB(ALUSrcB), 
		.ALUSrcA(ALUSrcA), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		opCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1;
		clk = 1;
		#100;
		reset = 0;
		clk = 0;
		
		//command loading
		#100;
		clk = 1;
		#100;
		clk = 0;
		
		//command exec (SLTI)
		opCode = 6'h1a;
		
		while(1)
		begin
			#100;
			clk = !clk;
		end
		
	end
      
endmodule

