`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:34 03/19/2012 
// Design Name: 
// Module Name:    ALUOut 
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
module ALUOut(
    input clk,
    input reset,
    input [31:0] d,
    output reg [31:0] q
    );

always @(posedge clk or posedge reset)
	if(reset)
		q <= 32'b0;
	else	
		q <= d;

endmodule
