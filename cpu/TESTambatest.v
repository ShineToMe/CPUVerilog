`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:04:01 05/28/2012
// Design Name:   ambatest
// Module Name:   D:/superPOWEROVER9000/superPOWEROVER9000/TESTambatest.v
// Project Name:  superPOWEROVER9000
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ambatest
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TESTambatest;

	// Inputs
	reg clk;
	reg [31:0] Adress;
	reg [31:0] WriteData;
	reg MemRead;
	reg MemWrite;
	reg [31:0] SW;

	// Outputs
	wire [31:0] MemData;
	wire isLocked;
	wire [31:0] LED;

	// Instantiate the Unit Under Test (UUT)
	ambatest uut (
		.clk(clk), 
		.Adress(Adress), 
		.WriteData(WriteData), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.MemData(MemData), 
		.isLocked(isLocked), 
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		Adress = 0;
		WriteData = 0;
		MemRead = 0;
		MemWrite = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#300;
		
		////////////////////////////
		
		//READ TEST
		SW = 2;
		Adress = 15;
		MemRead = 1;
	
		#600;		
		MemRead = 0;
		
		#300;		
		Adress = 2;
		MemRead = 1;
		
		#600;		
		MemRead = 0;
		
		/////////////////////////////
	
		/*
		//WRITE TEST
		Adress = 16;
		WriteData = 4;
		MemWrite = 1;
		*/
		
		////////////////////////////

	end
	
always begin
	#100;
	clk = !clk;
end
      
endmodule

