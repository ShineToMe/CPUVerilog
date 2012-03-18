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
    output[31:0] out
    );

reg tmp;

assign out = tmp;

always @*
	case(ALUSrcB)
		3'b000: tmp = in0;
		3'b001: tmp = in1;
		3'b010: tmp = in2;
		3'b011: tmp = in3;
		3'b100: tmp = in4;
		default: tmp = in5;
	endcase

endmodule
