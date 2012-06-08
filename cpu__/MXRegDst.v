`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:43:59 03/19/2012 
// Design Name: 
// Module Name:    MXRegDst 
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
module MXRegDst(
    input [1:0] RegDst,
    input [4:0] in0,
    input [4:0] in1,
    input [4:0] in2,
    output reg[4:0] out
    );
    always @(in0 or in1 or in2 or RegDst)
	 begin
	      case (RegDst)
			             2'b00   : out=in0;
							 2'b01   : out=in1;
							 default : out=in2;
			endcase
	 end
endmodule
