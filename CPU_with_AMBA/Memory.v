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
    output reg [31:0] MemData,
	 input [31:0] SW,
	 output reg [31:0] LED
    );

reg[31:0]mem[31:0]; //for testing size is 32

initial begin
		//r2 at this code == constant 0
		//r1 = LW mem[r2 + 15] 
		mem[0] = 32'b10001100010000010000000000001111; 
		//r0 = 2 ADDI r2
		mem[1] = 32'b00100000010000000000000000000010;
		//r0 = r0 ADD r1
		mem[2] = 32'b00000000000000010000000000100000;
		//SW mem[r2 + 16] = r0
		mem[3] = 32'b10101100010000000000000000010000;						
		//J -4   
		mem[4] = 32'b00001011111111111111111111111011;
		
		mem[5] = 32'h00000000; 		
		mem[6] = 32'h00000000; 
		mem[7] = 32'h00000000; 		
		mem[8] = 32'h00000000; 
		mem[9] = 32'h00000000; 		
		mem[10] = 32'h00000000; 
		mem[11] = 32'h00000000; 		
		mem[12] = 32'h00000000; 
		mem[13] = 32'h00000000; 		
		mem[14] = 32'h00000000;
 		
		mem[15] = 32'h00000000; 		
		mem[16] = 32'h00000000; 
		
		mem[17] = 32'h00000000; 		
		mem[18] = 32'h00000000; 
		mem[19] = 32'h00000000; 		
		mem[20] = 32'h00000000; 
		mem[21] = 32'h00000000; 		
		mem[22] = 32'h00000000; 
		mem[23] = 32'h00000000; 		
		mem[24] = 32'h00000000; 		
		mem[25] = 32'h00000000; 		
		mem[26] = 32'h00000000; 		
		mem[27] = 32'h00000000; 		
		mem[28] = 32'h00000000; 
		mem[29] = 32'h00000000; 		
		mem[30] = 32'h00000000; 
		mem[31] = 32'h00000000; 				
end
/*
always @(SW)
		mem[15] = SW;
*/		
always @(mem[16])
		LED = mem[16];

wire[4:0] addressLBits = Adress & 5'b11111;
	
always @(MemRead or addressLBits)
begin		
	if(MemRead)
	begin
		MemData = mem[addressLBits];		
	end
end

always @(negedge clk)
begin		
	if(MemWrite)
	begin
		mem[addressLBits] = WriteData;
	end
	mem[15] = SW;
end


endmodule
