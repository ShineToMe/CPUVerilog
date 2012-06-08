`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:33 03/19/2012 
// Design Name: 
// Module Name:    InstructionRegister 
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
module InstructionRegister(
    input clk,
    input reset,
    input enable,
    input [31:0] d,
    output [5:0] q31_26,
    output [4:0] q25_21,
    output [4:0] q20_16,
    output [15:0] q15_0
    );

reg[31:0] instruction;

assign q31_26 = instruction[31:26];
assign q25_21 = instruction[25:21];
assign q20_16 = instruction[20:16];
assign q15_0 = instruction[15:0];

always @(posedge clk or posedge reset)
	if(reset)
		instruction <= 32'b0;
	else
	if(enable)
		instruction <= d;

endmodule
