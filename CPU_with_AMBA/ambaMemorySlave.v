`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:43 05/28/2012
// Design Name: 
// Module Name:    ambaMemoryMaster 
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
module ambaMemorySlave(
    //////AMBA
	input wire ACLK,
	input wire reset,
	
	input wire [31:0] AWADDR,
	input wire [2:0] AWPROT,
	input wire AWVALID,
	input wire [31:0] WDATA,
	input wire [3:0] WSTRB,
	input wire WVALID,
	input wire BREADY,
	
	input wire [31:0] ARADDR,
	input wire ARPROT,
	input wire ARVALID,
	input wire RREADY,
	
	output reg AWREADY,
	output reg WREADY,
	output reg [1:0] BRESP,
	output reg BVALID,

	output reg ARREADY,
	output reg [31:0] RDATA,
	output reg [1:0] RRESP,
	output reg RVALID,		
	 
	 ///////////SPARTAN DEBUG I/O
	 input [31:0] SW,
	 output reg [31:0] LED    
	 );

reg[31:0]mem[31:0]; //for testing size is 32

//states
parameter RESET = 0;	
parameter READY = 1;
parameter VALID = 2;
parameter RESP = 3;	

//response codes
parameter RESP_OKAY = 0;
parameter RESP_SLVERR = 10;

//configuration
parameter DATA_WIDTH = 4;  //32 bits = 4 bytes data
parameter MEM_MAX_ADDR = 31;  

reg [1:0] wstate = 0;
reg [1:0] rstate = 0;

reg AWREADY_next = 0;
reg WREADY_next = 0;
reg [1:0] BRESP_next = 0;
reg BVALID_next = 0;
reg [1:0] wstate_next = 0;

reg ARREADY_next = 0;
reg [31:0] RDATA_next = 0;
reg [1:0] RRESP_next = 0;
reg RVALID_next = 0;
reg [1:0] rstate_next = 0;		

initial begin			
		//r2 at this code == constant 0
		//r1 = LW mem[r2 + 15] 
		mem[0] = 32'b10001100010000010000000000001111; 
		//r0 = 2 ADDI r2
		mem[1] = 32'b00100000010000000000000000000010;
		//r0 = r0 ADD r1
		mem[2] = 32'b00000000000000010000000000100000;
		//SW mem[r2 + 16] = r0
		mem[3] = 32'b10101100010000000000000000010000;						
		//J -5   
		mem[4] = 32'b00001011111111111111111111111011;		                                       
		
		mem[5] = 32'h00000000; 		
		mem[6] = 32'h00000000; 
		mem[7] = 32'h00000000; 		
		mem[8] = 32'h00000000; 
		mem[9] = 32'h00000000; 		
		mem[10] = 32'h00000000; 
		mem[11] = 32'h00000000; 		
		mem[12] = 32'h00000000; 
		mem[13] = 32'h00000000; 		
		mem[14] = 32'h00000000;
 		
		mem[15] = 32'h00000000; 	//SW	
		mem[16] = 32'h00000000; 	//LED
		
		mem[17] = 32'h00000000; 		
		mem[18] = 32'h00000000; 
		mem[19] = 32'h00000000; 		
		mem[20] = 32'h00000000; 
		mem[21] = 32'h00000000; 		
		mem[22] = 32'h00000000; 
		mem[23] = 32'h00000000; 		
		mem[24] = 32'h00000000; 		
		mem[25] = 32'h00000000; 		
		mem[26] = 32'h00000000; 		
		mem[27] = 32'h00000000; 		
		mem[28] = 32'h00000000; 
		mem[29] = 32'h00000000; 		
		mem[30] = 32'h00000000; 
		mem[31] = 32'h00000000; 				
end
		
always @(mem[16])
		LED = mem[16];

always@(posedge reset, posedge ACLK)
begin
	if(reset)
	begin
		BVALID <= 0;
		wstate <= RESET;

		RVALID <= 0;
		rstate <= RESET;		
	end
	else
	begin
		AWREADY <= AWREADY_next;
		WREADY <= WREADY_next;
		BRESP <= BRESP_next;
		BVALID <= BVALID_next;
		wstate <= wstate_next;

		ARREADY <= ARREADY_next;
		RDATA <= RDATA_next;
		RRESP <= RRESP_next;
		RVALID <= RVALID_next;
		rstate <= rstate_next;
	end
end

always@*
begin
	AWREADY_next = AWREADY;
	WREADY_next = WREADY;
	BRESP_next = BRESP;
	BVALID_next = BVALID;
	wstate_next = wstate;
	
	case (wstate)
	RESET : wstate_next = READY;
	READY :
		begin
		AWREADY_next = 1;
		WREADY_next = 1;
		wstate_next = VALID;
		end
	VALID :if(AWVALID & WVALID)
		begin
			if(AWADDR > MEM_MAX_ADDR)
				BRESP_next = RESP_SLVERR;
			else
			begin
				mem[AWADDR & 5'b11111] = WDATA;
				BRESP_next = RESP_OKAY;
			end
			BVALID_next = 1;
			AWREADY_next = 0;
			WREADY_next = 0;
			wstate_next = RESP;
		end
	RESP : if(BREADY)
		begin
			BVALID_next = 0;
			wstate_next = READY;
		end
	endcase
end

always@ (SW, rstate, ARVALID, RREADY, ARADDR)
begin
	mem[15] = SW;

	ARREADY_next = ARREADY;
	RDATA_next = RDATA;
	RRESP_next = RRESP;
	RVALID_next = RVALID;
	rstate_next = rstate;
		
	case (rstate)
		RESET : begin
			rstate_next = READY;
		end
		READY : begin
			ARREADY_next = 1;
			rstate_next = VALID;
			end
		VALID : if(ARVALID)
			begin
				ARREADY_next = 0;
				RVALID_next = 1;
				rstate_next = RESP;
				if(ARADDR > MEM_MAX_ADDR)
					RRESP_next = RESP_SLVERR;
				else
				begin
					RDATA_next = mem [ARADDR & 5'b11111];
					RRESP_next = RESP_OKAY;
				end
			end
		RESP : if(RREADY)
			begin
				RVALID_next = 0;
				rstate_next = READY;
			end
	endcase
end

endmodule
