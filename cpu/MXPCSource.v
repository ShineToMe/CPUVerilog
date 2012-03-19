`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:09:38 03/19/2012 
// Design Name: 
// Module Name:    MXPCSource 
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
module MXPCSource(
    input [1:0] PCSource,
    input [31:0] in0,
    input [31:0] in1,
    input [31:0] in2,
    input [31:0] in3,
    output reg[31:0] out
    );
	 always @(in0 or in1 or in2 or in3 or PCSource)
	 begin
	      case (PCSource)
			               2'b00 : out=in0;
								2'b01 : out=in1;
								2'b10 : out=in2;
								2'b11 : out=in3;
			endcase
	 end
endmodule
