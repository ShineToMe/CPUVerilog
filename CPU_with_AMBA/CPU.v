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
    input reset,
	 
	 ///////////AMBA interface
	input wire BVALID,
	input wire AWREADY,
	input wire WREADY,
	input wire BRESP,
	
	input wire ARREADY,
	input wire RVALID,
	input wire [1:0] RRESP,
	input wire [31:0] RDATA,
		
	output reg [31:0] AWADDR,
	output reg [2:0] AWPROT,
	output reg AWVALID,
	output reg [31:0] WDATA,
	output reg [3:0] WSTRB,
	output reg WVALID,
	output reg BREADY,
	
	output reg [31:0] ARADDR,
	output reg ARPROT,
	output reg ARVALID,
	output reg RREADY
);

//trick: fix for 'deleting unused wires'
reg [31:0] AWADDR_tmp = 0;
reg [2:0] AWPROT_tmp = 0;
reg AWVALID_tmp = 0;
reg [31:0] WDATA_tmp = 0;
reg [3:0] WSTRB_tmp = 0;
reg WVALID_tmp = 0;
reg BREADY_tmp = 0;
reg [31:0] ARADDR_tmp = 0;
reg ARPROT_tmp = 0;
reg ARVALID_tmp = 0;
reg RREADY_tmp = 0;	
always@*
begin
	AWADDR =  AWADDR_tmp;
	AWPROT = AWPROT_tmp;
	AWVALID = AWVALID_tmp;
	WDATA = WDATA_tmp;
	WSTRB = WSTRB_tmp;
	WVALID = WVALID_tmp;
	BREADY = BREADY_tmp;
	ARADDR = ARADDR_tmp;
	ARPROT = ARPROT_tmp;
	ARVALID = ARVALID_tmp;
	RREADY = RREADY_tmp;
end

wire innerClk;
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
wire PCWriteEnable = PCWrite | (zero & PCWriteIfZero) | (!zero & PCWriteIfNonZero);
wire [31:0] currentPC;

wire [31:0] ALUResult;
wire [31:0] ALUOutValue;

wire [31:0] memAdress = IorD ? ALUOutValue : currentPC;

wire [31:0] memData;
wire [31:0] memDataRegOut;
wire [31:0] Bout;
wire [31:0] Aout;
wire [31:0] readData1;
wire [31:0] readData2;

wire [5:0] instruction31_26;
wire [4:0] instruction25_21;
wire [4:0] instruction20_16;
wire [15:0] instruction15_0;
wire [5:0] instruction5_0 = instruction15_0[5:0];
wire [25:0] instruction25_0 = {instruction25_21, instruction20_16, instruction15_0};

wire [31:0] immediateSignExtend = { {16{instruction15_0[15]}}, instruction15_0[15:0] };
wire [31:0] immediateShift = immediateSignExtend << 2;

wire [5:0] decodedALUOp;

wire isAmbaLocked;

reg [4:0] writeRegister;
	always @*
	begin
		case (RegDst)
		 2'b00   : writeRegister = instruction20_16;
		 2'b01   : writeRegister = instruction15_0[15:11];
		 default : writeRegister = 31; //case 'b10
		endcase
	end
	
reg [31:0] writeData;
	always @*
	begin
		case (MemToReg)
		 2'b00   : writeData = ALUOutValue;
		 2'b01   : writeData = memDataRegOut;
		 default : writeData = {instruction15_0, 15'h0}; //case 'b10
		endcase
	end

wire [31:0] aluSrcAValue = ALUSrcA ? Aout : currentPC;

reg [31:0] aluSrcBValue;
	always @*
	begin
		case (ALUSrcB)
		 3'b000   : aluSrcBValue = Bout;
		 3'b001   : aluSrcBValue = 1; //for PC++
		 3'b010   : aluSrcBValue = {15'h0, instruction15_0};
		 3'b011   : aluSrcBValue = immediateSignExtend;
		 default : aluSrcBValue = immediateShift; //case 'b100
		endcase
	end
	
wire [31:0] instruction25_0SignExtend = {{6{instruction25_0[25]}}, instruction25_0[25:0] };
wire [31:0] JumpAdress = instruction25_0SignExtend + currentPC;

reg [31:0] newPC;
	always @*
	begin
		case (PCSource)
		 2'b00   : newPC = ALUResult;
		 2'b01   : newPC = ALUOutValue;
		 2'b10   : newPC = JumpAdress;
		 default : newPC = readData1; //case 'b11
		endcase
	end
	
wire AluResultEnable;

Control control(
    .clk(clk),
    .reset(reset),
	 .isAmbaLocked(isAmbaLocked),
    .opCode(instruction31_26),
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
    .RegDst(RegDst),
	 .clkOut(innerClk),
	 .AluResultEnable(AluResultEnable)
);

EnableRegister pc(
	 .clk(innerClk),
    .reset(reset),
    .enable(PCWriteEnable && ~isAmbaLocked),
    .d(newPC),
    .q(currentPC)
);

ambaMemoryMaster memory(	
	.ACLK(clk),
	.reset(reset),
	
	.Adress(memAdress),    
	.WriteData(Bout),
	.MemRead(MemRead),
	.MemWrite(MemWrite),    
   .MemData(memData),

	
	.BVALID(BVALID),
	.AWREADY(AWREADY),
	.WREADY(WREADY),
	.BRESP(BRESP),
	.ARREADY(ARREADY),
	.RVALID(RVALID),
	.RRESP(RRESP),
	.RDATA(RDATA),
	.AWADDR(AWADDR_tmp),
	.AWPROT(AWPROT_tmp),
	.AWVALID(AWVALID_tmp),
	.WDATA(WDATA_tmp),
	.WSTRB(WSTRB_tmp),
	.WVALID(WVALID_tmp),
	.BREADY(BREADY_tmp),
	.ARADDR(ARADDR_tmp),
	.ARPROT(ARPROT_tmp),
	.ARVALID(ARVALID_tmp),
	.RREADY(RREADY_tmp)
);

EnableRegister MemoryDataRegister(
	 .clk(innerClk),
    .reset(reset),
    .d(memData),
    .q(memDataRegOut),
    .enable(~isAmbaLocked)
);

InstructionRegister instructionRegister(
    .clk(innerClk),
    .reset(reset),
    .enable(IRWrite && ~isAmbaLocked),
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
    .RegWrite(RegWrite && ~isAmbaLocked),
    .clk(innerClk),
    .ReadData1(readData1),
    .ReadData2(readData2)
);

EnableRegister ARegister(
	 .clk(innerClk),
    .reset(reset),
    .d(readData1),
    .q(Aout),
    .enable(~isAmbaLocked)    
);

EnableRegister BRegister(
	 .clk(innerClk),
    .reset(reset),
    .d(readData2),
    .q(Bout),
    .enable(~isAmbaLocked)    
);

ALUControl aluControl(
    .ALUOp(ALUOp),
    .opCode5_0(instruction5_0),
    .opCode31_26(instruction31_26),
    .decodedALUOp(decodedALUOp)
);

ALU alu(
    .a(aluSrcAValue),
    .b(aluSrcBValue),
    .ALUOp(decodedALUOp),
    .out(ALUResult),
    .zero(zero)
    );

EnableRegister ALUOut(
	 .clk(innerClk),
    .reset(reset),
    .d(ALUResult),
    .q(ALUOutValue),
	 .enable(AluResultEnable && ~isAmbaLocked)
);



endmodule
