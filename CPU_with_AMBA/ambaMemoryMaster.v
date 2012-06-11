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
module ambaMemoryMaster(
    ////////////CPU interface
	 input [31:0] Adress,    
	 input [31:0] WriteData,
    input MemRead,
    input MemWrite,    
    output reg [31:0] MemData,
	 	 
	 ///////////AMBA interface
	input wire ACLK,
	input wire reset,
	
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

//states
parameter RESET = 0;	
parameter VALID = 1;	
parameter READY = 2;	
parameter RESP = 3;	
parameter UNLOCKING = 4;	

//response codes
parameter RESP_OKAY = 0;
parameter RESP_SLVERR = 10;

//configuration
parameter DATA_WIDTH = 4;  //32 bits = 4 bytes data

reg [2:0] wstate = 0;
reg [2:0] rstate = 0;

reg [31:0] AWADDR_next = 0;
reg [2:0] AWPROT_next = 0;
reg AWVALID_next = 0;
reg [31:0] WDATA_next = 0;
reg [3:0] WSTRB_next = 0;
reg WVALID_next = 0;
reg BREADY_next = 0;
reg [2:0] wstate_next = 0;
			
reg [31:0] ARADDR_next = 0;
reg ARPROT_next = 0;
reg ARVALID_next = 0;
reg RREADY_next = 0;
reg [2:0] rstate_next = 0;

always@ (posedge reset, posedge ACLK)
begin
	if(reset)
		begin
			AWVALID <= 0;
			WVALID <= 0;
			AWADDR <= -1;
			wstate <= RESET;

			ARVALID <= 0;
			ARADDR <= -2;
			rstate <= RESET;			
		end
	else
		begin
			AWADDR <= AWADDR_next;
			AWPROT <= AWPROT_next;
			AWVALID <= AWVALID_next;
			WDATA <= WDATA_next;
			WSTRB <= WSTRB_next;
			WVALID <= WVALID_next;
			BREADY <= BREADY_next;
			wstate <= wstate_next;
			
			ARADDR <= ARADDR_next;
			ARPROT <= ARPROT_next;
			ARVALID <= ARVALID_next;
			RREADY <= RREADY_next;
			rstate <= rstate_next;			
		end
end

always@ (wstate, MemWrite, BVALID, AWREADY, WREADY, BRESP, Adress, WriteData)
begin
	AWADDR_next = AWADDR;
	AWPROT_next = AWPROT;
	AWVALID_next = AWVALID;
	WDATA_next = WDATA;
	WSTRB_next = WSTRB;
	WVALID_next = WVALID;	
	BREADY_next = BREADY;
	wstate_next = wstate;
		
	case (wstate)
		RESET: 
			if(MemWrite) 
			begin
				wstate_next = VALID;				
			end
		VALID: begin
			AWVALID_next = 1;
			AWADDR_next = Adress; 
			AWPROT_next = 3'b010; 
			
			WVALID_next = 1;
			WDATA_next = WriteData; 
			//all data accesses use the full width of the data bus
			WSTRB_next = {(DATA_WIDTH / 8){1'b1}}; 
			
			BREADY_next = 1;			
			wstate_next = READY;
			end
		READY: if(AWREADY & WREADY)
					begin
						WVALID_next = 0;
						AWVALID_next = 0;
						wstate_next = RESP;
					end
		RESP: if(BVALID)
					begin
						BREADY_next = 0;						
						wstate_next = RESET;
					end		
	endcase
end

always@*
begin
	ARADDR_next = ARADDR;
	ARPROT_next = ARPROT;
	ARVALID_next = ARVALID;
	RREADY_next = RREADY;
	
	case (rstate)
		RESET : 
			if(MemRead) begin
				rstate_next = VALID;				
			end
		VALID : begin
			ARVALID_next = 1;
			ARADDR_next = Adress; 
			ARPROT_next = 3'b010;
			RREADY_next = 1;
			rstate_next = READY;
			end
		READY : if(ARREADY)
				begin
					ARVALID_next = 0;
					rstate_next = RESP;
				end
		RESP : if(RVALID)
				begin
					if(RRESP == RESP_OKAY)
						MemData = RDATA;
					RREADY_next = 0;					
					rstate_next = RESET;
				end		
	endcase
end

endmodule
