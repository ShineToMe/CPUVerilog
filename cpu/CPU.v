`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:06 03/20/2012 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
    input clk,
    input reset
    );

wire PCWriteIfNonZero;
wire PCWriteIfZero;
wire PCWrite;
wire IorD;
wire MemRead;
wire MemWrite;
wire [1:0] MemToReg;
wire IRWrite;
wire [1:0] PCSource;
wire [1:0] ALUOp;
wire [2:0] ALUSrcB;
wire ALUSrcA;
wire RegWrite;
wire [1:0] RegDst;

wire zero;
wire PCWriteEnable;

wire [31:0] currentPC;

wire [31:0] ALUResult;
wire [31:0] ALUOutValue;

wire [31:0] memAdress = IorD ? ALUOutValue : currentPC;

wire [31:0] memData;
wire [31:0] memDataRegOut;
wire [31:0] BOut;
wire [31:0] AOut;
wire [31:0] readData1;
wire [31:0] readData2;

wire [5:0] instruction31_26;
wire [4:0] instruction25_21;
wire [4:0] instruction20_16;
wire [15:0] instruction15_0;
wire [25:0] instruction25_0 = {instruction25_21, instruction20_16, instruction15_0};

wire [31:0] immediateSignExtend = { {16{instruction15_0[15]}}, instruction15_0[15:0] };
wire [31:0] immediateShift = immediateSignExtend << 2;

wire [5:0] decodedALUOp;

reg [5:0] writeRegister;
	always @*
	begin
		case (RegDst)
		 2'b00   : writeRegister = instruction20_16;
		 2'b01   : writeRegister = instruction15_0[15:11];
		 default : writeRegister = 31;
		endcase
	end
	
reg [31:0] writeData;
	always @*
	begin
		case (MemToReg)
		 2'b00   : writeData = ALUOutValue;
		 2'b01   : writeData = memDataRegOut;
		 default : writeData = {instruction15_0, 15'h0};
		endcase
	end

wire [31:0] aluSrcA = ALUSrcA ? AOut : currentPC;

reg [31:0] aluSrcB;
	always @*
	begin
		case (ALUSrcB)
		 3'b000   : aluSrcB = BOut;
		 3'b001   : aluSrcB = 4;
		 3'b010   : aluSrcB = {15'h0, instruction15_0};
		 3'b101   : aluSrcB = immediateSignExtend;
		 default : aluSrcB = immediateShift; //4
		endcase
	end
	
wire [31:0] JumpAdress = (instruction25_0 << 2) + currentPC;

reg [31:0] newPC;
	always @*
	begin
		case (PCSource)
		 2'b00   : newPC = ALUResult;
		 2'b01   : newPC = ALUOutValue;
		 2'b11   : newPC = JumpAdress;
		 default : newPC = readData1;
		endcase
	end

Control control(
    .clk(clk),
    .reset(reset),
    .opCode(opCode),
    .PCWriteIfNonZero(PCWriteIfNonZero),
    .PCWriteIfZero(PCWriteIfZero),
    .PCWrite(PCWrite),
    .IorD(IorD),
    .MemRead(MemRead),
    .MemWrite(MemWrite),
    .MemToReg(MemToReg),
    .IRWrite(IRWrite),
    .PCSource(PCSource),
    .ALUOp(ALUOp),
    .ALUSrcB(ALUSrcB),
    .ALUSrcA(ALUSrcA),
    .RegWrite(RegWrite),
    .RegDst(RegDst)
);

PCSetter pcSetter(
	 .PCWrite(PCWrite),
    .PCWriteIfZero(PCWriteIfZero),
    .PCWriteIfNonZero(PCWriteIfNonZero),
    .zero(zero),
    .out(PCWriteEnable)
);

PC pc(
	 .clk(clk),
    .reset(reset),
    .enable(PCWriteEnable),
    .d(newPC),
    .q(currentPC)
);

Memory memory(
	.Adress(memAdress),
   .WriteData(BOut),
   .MemRead(MemRead),
   .MemWrite(MemWrite),
   .clk(clk),
   .MemData(memData)
);

SimpleRegister MemoryDataRegister(
	 .clk(clk),
    .reset(reset),
    .d(MemData),
    .q(MemDataRegOut)    
);

InstructionRegister instructionRegister(
    .clk(clk),
    .reset(reset),
    .enable(IRWrite),
    .d(memData),
    .q31_26(instruction31_26),
    .q25_21(instruction25_21),
    .q20_16(instruction20_16),
    .q15_0(instruction15_0)
 );

Registers registers(
    .ReadRegister1(instruction25_21),
    .ReadRegister2(instruction20_16),
    .WriteRegister(writeRegister),
    .WriteData(writeData),
    .RegWrite(RegWrite),
    .clk(clk),
    .ReadData1(readData1),
    .ReadData2(readData2)
);

SimpleRegister ARegister(
	 .clk(clk),
    .reset(reset),
    .d(readData1),
    .q(Aout)    
);

SimpleRegister BRegister(
	 .clk(clk),
    .reset(reset),
    .d(readData2),
    .q(Bout)    
);

ALUControl aluControl(
    .ALUOp(ALUOp),
    .opCode5_0(instruction5_0),
    .opCode31_26(instruction31_26),
    .decodedALUOp(decodedALUOp)
);



ALU(
    .a(aluSrcA),
    .b(aluSrcB),
    .ALUOp(decodedALUOp),
    .out(ALUResult),
    .zero(zero)
    );

SimpleRegister ALUOut(
	 .clk(clk),
    .reset(reset),
    .d(ALUResult),
    .q(ALUOutValue)    
);



endmodule
