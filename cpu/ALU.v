`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:07 03/19/2012 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] a,
    input [31:0] b,
    input [5:0] ALUOp,
    output reg [31:0] out,
    output zero
    );

parameter BEQZ	= 6'h00;
parameter ADD	= 6'h08;
parameter AND	= 6'h0c;
parameter OR	= 6'h0d;	
parameter SEQ	= 6'h18;
parameter SLE	= 6'h1c;
parameter SLL	= 6'h14;
parameter SLT	= 6'h1a;
parameter SNE	= 6'h19;
parameter SRA	= 6'h17;
parameter SRL	= 6'h16;
parameter SUB	= 6'h0a;
parameter XOR	= 6'h0e;

assign zero = (out == 0); 

always @*
begin
	case (ALUOp)
		BEQZ:	out = a;
		ADD:	out = a + b;
		AND:	out = a & b;
		OR:	out = a | b;
		SEQ:	out = (a == b) ? 32'h1 : 32'h0;
		SLE:	out = (a <= b) ? 32'h1 : 32'h0;
		SLL:	out = a << b[2:0];
		SLT:	out = (a < b) ? 32'h1 : 32'h0;
		SNE:	out = (a != b) ? 32'h1 : 32'h0;
		SRA:	out = a >>> b[2:0];
		SRL:	out = a >> b[2:0];
		SUB:	out = a - b;
		XOR:	out = a ^ b;	
		default:	out = 0;
	endcase
end

endmodule
