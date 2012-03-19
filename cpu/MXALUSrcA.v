`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:58:29 03/19/2012 
// Design Name: 
// Module Name:    MXALUSrcA 
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
module MXALUSrcA(
    input ALUSrcA,
    input [31:0] in0,
    input [31:0] in1,
    output reg[31:0] out
    );
	 always @(in0 or in1 or ALUSrcA)
	 begin
	      case (ALUSrcA)
			              1'b0: out=in0;
							  1'b1: out=in1;
			endcase
	 end
endmodule
