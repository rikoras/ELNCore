`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:55 03/08/2022 
// Design Name: 
// Module Name:    if_id 
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
module if_id(				//instruct fetch/decode
	input wire clk,
	input wire rst,
	
	input wire[`InstAddrBus]	if_pc,
	input wire[`InstBus]			if_inst,
	
	output reg[`InstAddrBus]		id_pc,
	output reg[`InstBus]				id_inst
    );
	
	always @ (posedge clk) begin
		if(rst == `RstEnable) begin
			id_pc <= `ZeroWord;
			id_inst <= `ZeroWord;
		end
		else begin
			id_pc <= if_pc;
			id_inst <= if_inst;
		end
	end
endmodule
