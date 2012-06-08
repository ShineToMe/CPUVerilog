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
    input clk,
	 ////////////CPU interface
	 input [31:0] Adress,    
	 input [31:0] WriteData,
    input MemRead,
    input MemWrite,    
    output reg [31:0] MemData,
	 output reg isLocked,
	 	 
	 ///////////AMBA interface
	 output reg Aclk,
	 //reading
	 output reg [31:0] ARAddr,
	 output reg ARValid,
	 input ARReady,
	 input [31:0] RData,	 	 
	 input RValid,
	 output reg RResp,
	 output reg RReady,
	 	 
	 //writing
	 output reg [31:0] AWAddr,
	 output reg AWValid,
	 input AWReady,
	 output reg [31:0] WData,
	 output reg WValid,
	 input WReady,
	 input BResp,
	 output reg BReady,
	 input BValid	
	 );
	
parameter STATE_WAIT = 0;	
parameter STATE_R_ADDRESS_SETTED = 2;		
parameter STATE_R_DATA_READED = 3;		

parameter STATE_W_ADDRESS_SETTED = 4;	
parameter STATE_W_DATA_SETTED = 6;		
parameter STATE_W_RESPONSE_ACCEPTED = 7;		
		
reg [3:0]state;
reg [3:0]state_next;

reg [31:0] MemData_next;
reg isLocked_next;
reg [31:0] ARAddr_next;
reg ARValid_next;
reg RResp_next;
reg RReady_next;
reg [31:0] AWAddr_next;
reg AWValid_next;
reg [31:0] WData_next;
reg WValid_next;
reg BReady_next;

initial begin
	state_next = STATE_WAIT;
	MemData_next = 0;
	isLocked_next = 0;
	ARAddr_next = 0;
	ARValid_next = 0;
	RResp_next = 0;
	RReady_next = 0;
	AWAddr_next = 0;
	AWValid_next = 0;
	WData_next = 0;
	WValid_next = 0;
	BReady_next = 0;
end

always @(clk)
begin
	Aclk = clk;
end

always @(posedge Aclk)
begin
	state = state_next;
	MemData = MemData_next;
	isLocked = isLocked_next;
	ARAddr = ARAddr_next;
	ARValid = ARValid_next;
	RResp = RResp_next;
	RReady =RReady_next;
	AWAddr = AWAddr_next;
	AWValid = AWValid_next;
	WData = WData_next;
	WValid = WValid_next;
	BReady = BReady_next;
end

always@*
begin
	state_next = state;
	MemData_next = MemData;
	isLocked_next = isLocked;
	ARAddr_next = ARAddr;
	ARValid_next = ARValid;
	RResp_next = RResp;
	RReady_next =RReady;
	AWAddr_next = AWAddr;
	AWValid_next = AWValid;
	WData_next = WData;
	WValid_next = WValid;
	BReady_next = BReady;
		
	case(state)
		STATE_WAIT: 
			begin
				if(MemRead) begin
					if(ARReady) begin					
						state_next = STATE_R_ADDRESS_SETTED;
						
						ARAddr_next = Adress;
						ARValid_next = 1;
						RReady_next = 1;
						RResp_next = 0; 
						isLocked_next = 1;
					end
				end else if(MemWrite) begin
					if(AWReady) begin
						state_next = STATE_W_ADDRESS_SETTED;
						AWAddr_next = Adress;
						AWValid_next = 1;
						isLocked_next = 1;
					end					
				end
			end	
		STATE_R_ADDRESS_SETTED: 
			begin
				if(RValid) begin
					state_next = STATE_R_DATA_READED;
					MemData_next = RData;
					ARValid_next = 0;
					RReady_next = 0;
					RResp_next = 1;					
				end
			end	
		STATE_R_DATA_READED: 
			begin				
					state_next = STATE_WAIT;
					RResp_next = 0;		
					isLocked_next = 0;					
			end	
		STATE_W_ADDRESS_SETTED: 
			begin				
				if(WReady) begin
					state_next = STATE_W_DATA_SETTED;
					AWValid_next = 0;
					
					WData_next = WriteData;
					WValid_next = 1;
					BReady_next = 1;					
				end							
			end
		
		STATE_W_DATA_SETTED: 
			begin			
				if(BValid) begin
					state_next = STATE_WAIT;
					
					//here can be IF for checking errors					
					WValid_next = 0;
					BReady_next = 0;	
					isLocked_next = 0;					
				end									
			end
		default: 
			begin
				state_next = STATE_WAIT;
				MemData_next = 0;
				isLocked_next = 0;
				ARAddr_next = 0;
				ARValid_next = 0;
				RResp_next = 0;
				RReady_next = 0;
				AWAddr_next = 0;
				AWValid_next = 0;
				WData_next = 0;
				WValid_next = 0;
				BReady_next = 0;
			end
	endcase
end
endmodule
