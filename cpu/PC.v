`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:05 03/19/2012 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input reset,
    input enable,
    input [31:0] d,
    output reg[31:0] q
    );

always @(posedge clk or posedge reset)
	if(reset)
		q <= 32'b0;
	else
	if(enable)
		q <= d;

endmodule
