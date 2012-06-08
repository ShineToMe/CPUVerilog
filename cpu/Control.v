`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:13:29 03/19/2012 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input clk,
    input reset,
	 input isAmbaLocked,
    input [5:0] opCode,
    output reg PCWriteIfNonZero,
    output reg PCWriteIfZero,
    output reg PCWrite,
    output reg IorD,
    output reg MemRead,
    output reg MemWrite,
    output reg [1:0] MemToReg,
    output reg IRWrite,
    output reg [1:0] PCSource,
    output reg [1:0] ALUOp,
    output reg [2:0] ALUSrcB,
    output reg ALUSrcA,
    output reg RegWrite,
    output reg [1:0] RegDst,
	 output reg AluResultEnable,
	 output reg clkOut
    );

//STATES:
//(https://github.com/ShineToMe/CPUVerilog/wiki/Control-states-graph)
parameter STATE_RESET = -1;	//
parameter STATE_0 = 0;	// 
parameter STATE_1 = 1;	//
parameter STATE_2 = 2;	//LW or SW - adress
parameter STATE_3 = 3;	//LW - execute
parameter STATE_4 = 4;	//LW - save to reg
parameter STATE_5 = 5;	//SW - execute
parameter STATE_6 = 6;	//R-type - execute
parameter STATE_7 = 7;	//R-type - save to reg
parameter STATE_8 = 8;	//ADDI, ORI, SEQI, SLEI, SLLI, SLTI, SNEI, SRAI, SUBI, XORI - execute
parameter STATE_9 = 9;	//I-type - save to reg
parameter STATE_10 = 10;//ANDI, SRLI - execute
parameter STATE_11 = 11;//LHI - execute
parameter STATE_12 = 12;//BEQZ - execute
parameter STATE_13 = 13;//BNEZ - execute
parameter STATE_14 = 14;//J - execute
parameter STATE_15 = 15;//JAL - execute
parameter STATE_16 = 16;//JALR - execute
parameter STATE_17 = 17;//JR - execute

//OPERAION-CODES
//(https://github.com/ShineToMe/CPUVerilog/wiki/Instruction-set)
parameter LW	= 6'h23;
parameter SW	= 6'h2b;	
parameter ADDI	= 6'h08;
parameter ORI	= 6'h0d;	
parameter SEQI	= 6'h18;
parameter SLEI	= 6'h1c;
parameter SLLI	= 6'h14;
parameter SLTI	= 6'h1a;
parameter SNEI	= 6'h19;
parameter SRAI	= 6'h17;
parameter SUBI	= 6'h0a;
parameter XORI	= 6'h0e;
parameter ANDI	= 6'h0c;
parameter SRLI	= 6'h16;
parameter LHI	= 6'h0f;
parameter BEQZ	= 6'h04;
parameter BNEZ	= 6'h05;
parameter J		= 6'h02;
parameter JAL	= 6'h03;
parameter JALR	= 6'h13;
parameter JR	= 6'h12;

////////////

reg [4:0]state;
reg [4:0]state_next;

reg PCWriteIfNonZero_next;
reg PCWriteIfZero_next;
reg PCWrite_next;
reg IorD_next;
reg MemRead_next;
reg MemWrite_next;
reg [1:0] MemToReg_next;
reg IRWrite_next;
reg [1:0] PCSource_next;
reg [1:0] ALUOp_next;
reg [2:0] ALUSrcB_next;
reg ALUSrcA_next;
reg RegWrite_next;
reg [1:0] RegDst_next;
reg AluResultEnable_next;

////////////////

always @(clk)
begin
	clkOut = clk;
end

always @(posedge clk or posedge reset)
begin
	//clkOut = clk; //todo: remove this shit
	if(reset)
	begin
		state = STATE_RESET; //      
		
		PCWriteIfNonZero = 0;
		PCWriteIfZero = 0;
		PCWrite = 0;
		IorD = 0;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		IRWrite = 0;
		PCSource = 0;
		ALUOp = 0;
		ALUSrcB = 0;
		ALUSrcA = 0;
		RegWrite = 0;
		RegDst = 0;
		AluResultEnable = 0;
	end		
	else if(~isAmbaLocked)
		begin
			state = state_next;
			
			PCWriteIfNonZero = PCWriteIfNonZero_next;
			PCWriteIfZero = PCWriteIfZero_next;
			PCWrite = PCWrite_next;
			IorD = IorD_next;
			MemRead = MemRead_next;
			MemWrite = MemWrite_next;
			MemToReg = MemToReg_next;
			IRWrite = IRWrite_next;
			PCSource = PCSource_next;
			ALUOp = ALUOp_next;
			ALUSrcB = ALUSrcB_next;
			ALUSrcA = ALUSrcA_next;
			RegWrite = RegWrite_next;
			RegDst = RegDst_next;
			AluResultEnable = AluResultEnable_next;
		end
end

always @*
begin
	state_next = state;
	
	PCWriteIfNonZero_next = PCWriteIfNonZero;
	PCWriteIfZero_next = PCWriteIfZero;
	PCWrite_next = PCWrite;
	IorD_next = IorD;
	MemRead_next = MemRead;
	MemWrite_next = MemWrite;
	MemToReg_next = MemToReg;
	IRWrite_next = IRWrite;
	PCSource_next = PCSource;
	ALUOp_next = ALUOp;
	ALUSrcB_next = ALUSrcB;
	ALUSrcA_next = ALUSrcA;
	RegWrite_next = RegWrite;
	RegDst_next = RegDst;
	AluResultEnable_next = AluResultEnable;
	case(state)
		STATE_0: begin
						state_next = STATE_1;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 0;
						IorD_next = 0;
						MemRead_next = 0;
						MemWrite_next = 0;
						MemToReg_next = 0;
						IRWrite_next = 0;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 4;
						ALUSrcA_next = 0;
						RegWrite_next = 0;
						RegDst_next = 0;
						AluResultEnable_next = 1;
					end
		STATE_1: begin
						if(opCode == LW || opCode == SW)
						begin
							state_next = STATE_2;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 0;
							ALUSrcB_next = 3;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end
						else if(opCode == ADDI || opCode == ORI || opCode == SEQI || opCode == SLEI || opCode == SLLI || 
								opCode == SLTI || opCode == SNEI || opCode == SRAI || opCode == SUBI || opCode == XORI)
						begin
							state_next = STATE_8;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 2;
							ALUSrcB_next = 3;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end	
						else if(opCode == ANDI || opCode == SRLI)
						begin
							state_next = STATE_10;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 2;
							ALUSrcB_next = 2;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end		
						else if(opCode == LHI)
						begin
							state_next = STATE_11;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 2;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 1;
							RegDst_next = 0;
							AluResultEnable_next = 0;
						end				
						else if(opCode == BEQZ)
						begin
							state_next = STATE_12;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 1;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 1;
							ALUOp_next = 1;
							ALUSrcB_next = 0;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end	
						else if(opCode == BNEZ)
						begin
							state_next = STATE_13;
							
							PCWriteIfNonZero_next = 1;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 1;
							ALUOp_next = 1;
							ALUSrcB_next = 0;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end	
						else if(opCode == J)
						begin
							state_next = STATE_14;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 1;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 2;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 0;
						end
						else if(opCode == JAL)
						begin
							state_next = STATE_15;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 1;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 2;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 1;
							RegDst_next = 2;
							AluResultEnable_next = 0;
						end
						else if(opCode == JALR)
						begin
							state_next = STATE_16;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 1;
							RegDst_next = 2;
							AluResultEnable_next = 0;
						end
						else if(opCode == JR)
						begin
							state_next = STATE_17;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 1;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 3;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 0;
						end
						else //R-type
						begin
							state_next = STATE_6;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 0;
							MemRead_next = 0;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 2;
							ALUSrcB_next = 0;
							ALUSrcA_next = 1;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 1;
						end		
					end
		STATE_2: begin
						if(opCode == LW)
						begin
							state_next = STATE_3;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 1;
							MemRead_next = 1;
							MemWrite_next = 0;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 0;
						end
						else begin
							state_next = STATE_5;
							
							PCWriteIfNonZero_next = 0;
							PCWriteIfZero_next = 0;
							PCWrite_next = 0;
							IorD_next = 1;
							MemRead_next = 0;
							MemWrite_next = 1;
							MemToReg_next = 0;
							IRWrite_next = 0;
							PCSource_next = 0;
							ALUOp_next = 0;
							ALUSrcB_next = 0;
							ALUSrcA_next = 0;
							RegWrite_next = 0;
							RegDst_next = 0;
							AluResultEnable_next = 0;
						end
					end		
		STATE_3: begin
						state_next = STATE_4;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 0;
						IorD_next = 0;
						MemRead_next = 0;
						MemWrite_next = 0;
						MemToReg_next = 1;
						IRWrite_next = 0;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 0;
						ALUSrcA_next = 0;
						RegWrite_next = 1;
						RegDst_next = 0;
						AluResultEnable_next = 0;
					end		
		STATE_6: begin
						state_next = STATE_7;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 0;
						IorD_next = 0;
						MemRead_next = 0;
						MemWrite_next = 0;
						MemToReg_next = 0;
						IRWrite_next = 0;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 0;
						ALUSrcA_next = 0;
						RegWrite_next = 1;
						RegDst_next = 1;
						AluResultEnable_next = 0;
					end					
		STATE_8: begin
						state_next = STATE_9;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 0;
						IorD_next = 0;
						MemRead_next = 0;
						MemWrite_next = 0;
						MemToReg_next = 0;
						IRWrite_next = 0;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 0;
						ALUSrcA_next = 0;
						RegWrite_next = 1;
						RegDst_next = 0;
						AluResultEnable_next = 0;
					end	
		STATE_10: begin
						state_next = STATE_9;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 0;
						IorD_next = 0;
						MemRead_next = 0;
						MemWrite_next = 0;
						MemToReg_next = 0;
						IRWrite_next = 0;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 0;
						ALUSrcA_next = 0;
						RegWrite_next = 1;
						RegDst_next = 0;
						AluResultEnable_next = 0;
					end	
		default: begin
						state_next = STATE_0;
						
						PCWriteIfNonZero_next = 0;
						PCWriteIfZero_next = 0;
						PCWrite_next = 1;
						IorD_next = 0;
						MemRead_next = 1;
						MemWrite_next = 0;
						MemToReg_next = 0;
						IRWrite_next = 1;
						PCSource_next = 0;
						ALUOp_next = 0;
						ALUSrcB_next = 1;
						ALUSrcA_next = 0;
						RegWrite_next = 0;
						RegDst_next = 0;
						AluResultEnable_next = 1;
					end	
	endcase
end

endmodule
