`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:56 03/19/2012 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(
    input [1:0] ALUOp,
    input [5:0] opCode5_0,
    input [5:0] opCode31_26,
    output reg [5:0] decodedALUOp
    );

parameter BEQZ	= 6'h00;
parameter SW = 6'h2b;
parameter LW = 6'h23;


parameter ADD	= 6'h20;
parameter AND	= 6'h24;
parameter OR	= 6'h25;	
parameter SEQ	= 6'h28;
parameter SLE	= 6'h2c;
parameter SLL	= 6'h04;
parameter SLT	= 6'h2A;
parameter SNE	= 6'h29;
parameter SRA	= 6'h07;
parameter SRL	= 6'h06;
parameter SUB	= 6'h22;
parameter XOR	= 6'h26;

parameter ADDI	= 6'h08;
parameter ANDI	= 6'h0c;
parameter ORI	= 6'h0d;	
parameter SEQI	= 6'h18;
parameter SLEI	= 6'h1c;
parameter SLLI	= 6'h14;
parameter SLTI	= 6'h1a;
parameter SNEI	= 6'h19;
parameter SRAI	= 6'h17;
parameter SRLI	= 6'h16;
parameter SUBI	= 6'h0a;
parameter XORI	= 6'h0e;

always @*
begin
	case(ALUOp)
		2'b00: decodedALUOp = ADDI;
		2'b01: decodedALUOp = BEQZ;
		2'b10: decodedALUOp = LW;
		2'b11: decodedALUOp = SW;
		default: begin
			if(opCode31_26 == 0)
			begin
				//R-type
				case(opCode5_0)
					ADD: decodedALUOp = ADDI; 
					AND: decodedALUOp = ANDI; 
					OR:  decodedALUOp = ORI; 
					SEQ: decodedALUOp = SEQI; 
					SLE: decodedALUOp = SLEI; 
					SLL: decodedALUOp = SLLI; 
					SLT: decodedALUOp = SLTI; 
					SNE: decodedALUOp = SNEI; 
					SRA: decodedALUOp = SRAI; 
					SRL: decodedALUOp = SRLI; 
					SUB: decodedALUOp = SUBI; 									
					default: decodedALUOp = XORI; //XOR
				endcase
			end
			else begin
				//I-type
				decodedALUOp = opCode31_26;
			end
		end
	endcase
end

endmodule
