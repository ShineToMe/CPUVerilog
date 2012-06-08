`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:49:04 03/18/2012 
// Design Name: 
// Module Name:    PCSetter 
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
module PCSetter(
    input PCWrite,
    input PCWriteIfZero,
    input PCWriteIfNonZero,
    input zero,
    output out
    );

assign out = PCWrite | (zero & PCWriteIfZero) | (!zero & PCWriteIfNonZero);

endmodule
