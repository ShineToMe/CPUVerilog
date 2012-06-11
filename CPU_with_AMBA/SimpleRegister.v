`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:35:15 03/20/2012 
// Design Name: 
// Module Name:    SimpleRegister 
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
module SimpleRegister(
    input clk,
    input reset,
    input [31:0] d,
    output reg [31:0] q
    );

always @(negedge clk)
begin
	if(reset)
		q = 32'b0;	
	else 
		q = d;
end

endmodule
