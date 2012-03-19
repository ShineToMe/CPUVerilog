`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:48 03/19/2012 
// Design Name: 
// Module Name:    ImmediateSignExtend 
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
module ImmediateSignExtend(
    input [15:0] in,
    output [31:0] out
    );

//Concatenation: Replication(in[15]) ++ in [15-0]
assign out[31:0] = { {16{in[15]}}, in[15:0] };

endmodule
