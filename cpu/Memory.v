`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:59 03/20/2012 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
    input [31:0] Adress,
    input [31:0] WriteData,
    input MemRead,
    input MemWrite,
    input clk,
    output reg [31:0] MemData
    );

reg[31:0]mem[31:0]; //for testing

always @(posedge clk)
begin
	MemData = 0; //maybe delete?
	if(MemWrite)
	begin
		mem[Adress] <= WriteData;
	end
	else if(MemRead) begin
		MemData = mem[Adress];		
	end
end

endmodule
