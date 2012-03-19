`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:29 03/18/2012 
// Design Name: 
// Module Name:    MXIorD 
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
module MXIorD(
    input[31:0] in0,
    input[31:0] in1,
    input IorD,
    output reg [31:0] out
    );

always @*
	 out = IorD ? in1 : in0;

endmodule
