`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:04 05/28/2012 
// Design Name: 
// Module Name:    ambatest 
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
module ambatest(
		 input clk,
		 input [31:0] Adress,    
		 input [31:0] WriteData,
		 input MemRead,
		 input MemWrite,    
		 output reg [31:0] MemData,
		 output reg isLocked,
		 
		 //SPARTAN I/O
		 input [31:0] SW,
		 output reg [31:0] LED  
    );

 ///////////AMBA interface
 wire Aclk;
 //reading
 wire [31:0] ARAddr;
 wire ARValid;
 wire ARReady;
 wire [31:0] RData;
 wire RValid;
 wire RResp;
 wire RReady;
	 
 //writing
 wire [31:0] AWAddr;
 wire AWValid;
 wire  AWReady;
 wire [31:0] WData;
 wire  WValid;
 wire  WReady;
 wire  BResp;
 wire  BReady;
 wire  BValid;
 
wire [31:0] OLOLOMemData;
wire OLOLOisLocked;
wire [31:0] OLOLOLED; 

always@(OLOLOMemData) begin
	MemData = OLOLOMemData;
end

always@(OLOLOisLocked) begin
	isLocked = OLOLOisLocked;
end

always@(OLOLOLED) begin
	LED = OLOLOLED;
end

ambaMemoryMaster ambaMemMaster(
	 .clk(clk),
	 .Adress(Adress),    
	 .WriteData(WriteData),
    .MemRead(MemRead),
    .MemWrite(MemWrite),    
    .MemData(OLOLOMemData),
	 .isLocked(OLOLOisLocked),
	 
	 .Aclk(Aclk),
	 .ARAddr(ARAddr),
	 .ARValid(ARValid),
	 .ARReady(ARReady),
	 .RData(RData),	 	 
	 .RValid(RValid),
	 .RResp(RResp),
	 .RReady(RReady),
	 
	 .AWAddr(AWAddr),
	 .AWValid(AWValid),
	 .AWReady(AWReady),
	 .WData(WData),
	 .WValid(WValid),
	 .WReady(WReady),
	 .BResp(BResp),
	 .BReady(BReady),
	 .BValid(BValid)
);

ambaMemorySlave ambaMemSlave(
	 .Aclk(Aclk),
	 .ARAddr(ARAddr),
	 .ARValid(ARValid),
	 .ARReady(ARReady),
	 .RData(RData),	 	 
	 .RValid(RValid),
	 .RResp(RResp),
	 .RReady(RReady),
	 
	 .AWAddr(AWAddr),
	 .AWValid(AWValid),
	 .AWReady(AWReady),
	 .WData(WData),
	 .WValid(WValid),
	 .WReady(WReady),
	 .BResp(BResp),
	 .BReady(BReady),
	 .BValid(BValid),
	 
	 .SW(SW),
	 .LED(OLOLOLED)    
);

endmodule
