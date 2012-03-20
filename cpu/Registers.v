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

always @(posedge clk)
begin
	ReadData1 = 0; //maybe delete?
	ReadData2 = 0;
	if(RegWrite)
	begin
		registers[WriteRegister] <= WriteData;
	end
	else begin
		ReadData1 = registers[ReadRegister1];
		ReadData2 = registers[ReadRegister2];
	end
end

endmodule
