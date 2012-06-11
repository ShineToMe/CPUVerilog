`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:41:47 06/11/2012 
// Design Name: 
// Module Name:    CPU_with_memory 
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
module CPU_with_memory(
    input clk,
    input reset,
	 
	 //SPARTAN I/O
	 input [31:0] SW,
	 output reg [31:0] LED
);

///////////AMBA interface
wire BVALID;
wire AWREADY;
wire WREADY;
wire BRESP;

wire ARREADY;
wire RVALID;
wire [1:0] RRESP;
wire [31:0] RDATA;
	
wire [31:0] AWADDR;
wire [2:0] AWPROT;
wire AWVALID;
wire [31:0] WDATA;
wire [3:0] WSTRB;
wire WVALID;
wire BREADY;

wire [31:0] ARADDR;
wire ARPROT;
wire ARVALID;
wire RREADY;

//trick: fix for 'deleting unused wires'
wire [31:0] LED_tmp; 
always@(LED_tmp) begin
	LED = LED_tmp;
end

CPU cpu(	
	.clk(clk),
	.reset(reset),
	
	//AMBA MASTER
	.BVALID(BVALID),
	.AWREADY(AWREADY),
	.WREADY(WREADY),
	.BRESP(BRESP),
	.ARREADY(ARREADY),
	.RVALID(RVALID),
	.RRESP(RRESP),
	.RDATA(RDATA),
	.AWADDR(AWADDR),
	.AWPROT(AWPROT),
	.AWVALID(AWVALID),
	.WDATA(WDATA),
	.WSTRB(WSTRB),
	.WVALID(WVALID),
	.BREADY(BREADY),
	.ARADDR(ARADDR),
	.ARPROT(ARPROT),
	.ARVALID(ARVALID),
	.RREADY(RREADY)
);

ambaMemorySlave ambaMemSlave(	 
	//AMBA SLAVE
	.ACLK(clk),
	.reset(reset),
	.BVALID(BVALID),
	.AWREADY(AWREADY),
	.WREADY(WREADY),
	.BRESP(BRESP),
	.ARREADY(ARREADY),
	.RVALID(RVALID),
	.RRESP(RRESP),
	.RDATA(RDATA),
	.AWADDR(AWADDR),
	.AWPROT(AWPROT),
	.AWVALID(AWVALID),
	.WDATA(WDATA),
	.WSTRB(WSTRB),
	.WVALID(WVALID),
	.BREADY(BREADY),
	.ARADDR(ARADDR),
	.ARPROT(ARPROT),
	.ARVALID(ARVALID),
	.RREADY(RREADY),
		 
	//SPARTAN I/O
	.SW(SW),
	.LED(LED_tmp)  	
);

endmodule
