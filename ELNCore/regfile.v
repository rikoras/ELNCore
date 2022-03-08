`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:06 03/08/2022 
// Design Name: 
// Module Name:    regfile 
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
module regfile(
	input wire 		clk,
	input wire 		rst,
	
	input wire					we,
	input wire[`RegAddrBus]	waddr,
	input wire[`RegBus]		wdata,
	
	input wire					re1,
	input wire[`RegAddrBus]	raddr1,
	output wire[`RegBus]		rdata1,
	
	input wire					re2,
	input wire[`RegAddrBus]	raddr2,
	output reg[`RegBus]		rdata
    );

reg[`RegBus]	regs[0:`RegNum-1];	//regs
	
	//Write
	always @ (posedge clk) begin
		if(rst == `RstDisable) begin
			if((we == `WriteEnable) && (waddr != `RegNumLog2'h0)) begin
				regs[waddr] <= wdata;
			end
		end
	end
	
	//Read1
	always @ (*) begin
		if(rst == `RstEnable) begin
			rdata1 <= `ZeroWord;
		end 
		else if (raddr1 == `RegNumLog2'h0) begin
			rdata1 <= `ZeroWord;
		end
		else if ((raddr1 == waddr) && (we == `WriteEnable) 
						&&(re1 == `ReadEnable)) begin
			rdata1 <= wdata;
		end
		else if (re1 == `ReadEnable) begin
			rdata1 <= regs[raddr1];
		end
		else begin
			rdata1 <= `ZeroWord;
		end
	end
	
	//Read2
	
	always @ (*) begin
		if(rst == `RstEnable) begin
			rdata2 <= `ZeroWord;
		end 
		else if (raddr2 == `RegNumLog2'h0) begin
			rdata2 <= `ZeroWord;
		end
		else if ((raddr2 == waddr) && (we == `WriteEnable) 
						&&(re2 == `ReadEnable)) begin
			rdata2 <= wdata;
		end
		else if (re2 == `ReadEnable) begin
			rdata2 <= regs[raddr2];
		end
		else begin
			rdata2 <= `ZeroWord;
		end
	end
endmodule
