`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:51:50 03/19/2012 
// Design Name: 
// Module Name:    MXMemToReg 
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
module MXMemToReg(
    input [1:0] MemToReg,
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    output reg [31:0] out
    );
	 always @(in0 or in1 or in2 or MemToReg)
	 begin
	      case (MemToReg)
			               2'b00   : out=in0;
								2'b01   : out=in1;
								default : out=in2;
			endcase
	 end
endmodule
