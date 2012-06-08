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
    ///////////AMBA interface
	 input Aclk,
	 //reading
	 input [31:0] ARAddr,
	 input ARValid,
	 output reg ARReady,
	 output reg [31:0] RData,	 	 
	 output reg RValid,
	 input RResp,
	 input RReady,
	 	 
	 //writing
	 input [31:0] AWAddr,
	 input AWValid,
	 output reg  AWReady,
	 input [31:0] WData,
	 input WValid,
	 output reg  WReady,
	 output reg  BResp,
	 input BReady,
	 output reg  BValid,
	 	 
	 ///////////SPARTAN DEBUG I/O
	 input [31:0] SW,
	 output reg [31:0] LED    
	 );

reg [31:0] Adress;
wire[4:0] addressLBits = Adress & 5'b11111;
reg[31:0]mem[31:0]; //for testing size is 32
				
parameter STATE_WAIT = 0;	
parameter STATE_R_ADDRESS_READED_AND_DATA_LOADED = 2;		
//parameter STATE_R_DATA_ACCEPTED = 3;		

parameter STATE_W_ADDRESS_READED = 4;	
//parameter STATE_W_DATA_READED = 5;	
parameter STATE_W_DATA_WRITED = 6;		
parameter STATE_W_RESPONSE_ACCEPTED = 7;		
		
reg [3:0]state;
reg [3:0]state_next;
		
reg ARReady_next;
reg [31:0] RData_next;
reg RValid_next;
reg AWReady_next;
reg WReady_next;
reg BResp_next;
reg BValid_next;

initial begin
		state_next = STATE_WAIT;
		ARReady_next = 1;
		RData_next = 0;
		RValid_next = 0;
		AWReady_next = 1;
		WReady_next = 0;
		BResp_next = 0;
		BValid_next = 0;

		//r2 at this code == constant 0
		//r1 = LW mem[r2 + 15] 
		mem[0] = 32'b10001100010000010000000000001111; 
		//r0 = 2 ADDI r2
		mem[1] = 32'b00100000010000000000000000000010;
		//r0 = r0 ADD r1
		mem[2] = 32'b00000000000000010000000000100000;
		//SW mem[r2 + 16] = r0
		mem[3] = 32'b10101100010000000000000000010000;						
		//J -4   
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


always @(posedge Aclk)
begin		
		state = state_next;
		ARReady = ARReady_next;
		RData = RData_next;
		RValid = RValid_next;
		AWReady = AWReady_next;
		WReady = WReady_next;
		BResp = BResp_next;
		BValid = BValid_next;
end

always@*
begin
	mem[15] = SW;
	
	/*state_next = state;
	ARReady_next = ARReady;
	RData_next = RData;
	RValid_next = RValid;
	AWReady_next = AWReady;
	WReady_next = WReady;
	BResp_next = BResp;
	BValid_next = BValid;*/
		
	case(state)
		STATE_WAIT: 
			begin
				if(ARValid) begin
					state_next = STATE_R_ADDRESS_READED_AND_DATA_LOADED;
					
					Adress = ARAddr;
					RData_next = mem[addressLBits];
					RValid_next = 1;					
					ARReady_next = 0;				
					AWReady_next = 0;
				end else if(AWValid) begin
					state_next = STATE_W_ADDRESS_READED;
					
					Adress = AWAddr;
					ARReady_next = 0;				
					AWReady_next = 0;
					WReady_next = 1;
				end
			end	
		STATE_R_ADDRESS_READED_AND_DATA_LOADED: 
			begin
				//if(RReady) begin
					state_next = STATE_WAIT;
					
					RValid_next = 0;					
					ARReady_next = 1;									
					AWReady_next = 1;
				//end
			end	
		STATE_W_ADDRESS_READED: 
			begin
				if(WValid) begin
					state_next = STATE_W_DATA_WRITED;
					
					mem[addressLBits] = WData;	
					WReady_next = 0;					
						BResp_next = 1;
						BValid_next = 1;								
				end
			end	
		STATE_W_DATA_WRITED: 
			begin
				state_next = STATE_WAIT;
				
				ARReady_next = 1;									
				AWReady_next = 1;
				WReady_next = 1;					
				BResp_next = 0;
				BValid_next = 0;									
			end	
	endcase
end

/*
always @(posedge Aclk)
begin	
		mem[15] = SW;
		
		if(ARValid) begin
			//if(isLocked) begin
				RData = mem[addressLBits];
				RValid = 1;					
				ARReady = 0;
				isLocked = 0;
			//end else begin
				Adress = ARAddr;				
				isLocked = 1;				
			end					
		end else begin
			//same as default
			isLocked = 0;
			ARReady = 1;
			RData = 0;
			RValid = 0;
		end	
		
		if(AWValid) begin
			Adress = AWAddr;
			AWReady = 0;
			WReady = 1;
		end 
		
		if(WValid) begin
			mem[addressLBits] = WData;	
			WReady = 0;
			if(BReady == 1) begin
				BResp = 1;
				BValid = 1;
			end
		end
		
		if(~AWValid && ~WValid) begin
			//same as default
			AWReady = 1;
			WReady = 0;
			BResp = 0;
			BValid = 0;
		end
end*/

endmodule
