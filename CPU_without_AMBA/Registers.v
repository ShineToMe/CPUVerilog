`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:04 03/20/2012 
// Design Name: 
// Module Name:    Registers 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Registers(
    input [4:0] ReadRegister1,
    input [4:0] ReadRegister2,
    input [4:0] WriteRegister,
    input [31:0] WriteData,
    input RegWrite,
    input clk,
    output reg [31:0] ReadData1,
    output reg [31:0] ReadData2
    );

reg[31:0]registers[31:0];

initial begin
	registers[0] = 0;
	registers[1] = 0;
	registers[2] = 0;
	registers[3] = 0;
	registers[4] = 0;
	registers[5] = 0;
	registers[6] = 0;
	registers[7] = 0;
	registers[8] = 0;
	registers[9] = 0;
	registers[10] = 0;
	registers[11] = 0;
	registers[12] = 0;
	registers[13] = 0;
	registers[14] = 0;
	registers[15] = 0;
	registers[16] = 0;
	registers[17] = 0;
	registers[18] = 0;
	registers[19] = 0;
	registers[20] = 0;
	registers[21] = 0;
	registers[22] = 0;
	registers[23] = 0;
	registers[24] = 0;
	registers[25] = 0;
	registers[26] = 0;
	registers[27] = 0;
	registers[28] = 0;
	registers[29] = 0;
	registers[30] = 0;
	registers[31] = 0;	
end

always @(ReadRegister1 or ReadRegister2)
begin	
	ReadData1 = registers[ReadRegister1];
	ReadData2 = registers[ReadRegister2];		
end

always @(negedge clk)
begin
	if(RegWrite)
		begin
			registers[WriteRegister] <= WriteData;
		end
end

endmodule
