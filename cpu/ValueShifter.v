`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:02 03/19/2012 
// Design Name: 
// Module Name:    ValueShifter 
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
module ValueShifter(
    input [25:0] in,
    output [27:0] out
    );

//maybe simply concatenate in++00?
assign out = in << 2;

endmodule
