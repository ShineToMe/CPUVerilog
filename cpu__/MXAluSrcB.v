`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:33 03/18/2012 
// Design Name: 
// Module Name:    MXAluSrcB 
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
module MXAluSrcB(
    input[31:0] in0,
    input[31:0] in1,
    input[31:0] in2,
    input[31:0] in3,
    input[31:0] in4,
    input[31:0] in5,
    input [2:0] ALUSrcB,
    output reg [31:0] out
    );

always @*
	case(ALUSrcB)
		3'b000: out = in0;
		3'b001: out = in1;
		3'b010: out = in2;
		3'b011: out = in3;
		3'b100: out = in4;
		default: out = in5;
	endcase

endmodule
