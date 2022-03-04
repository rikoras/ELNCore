`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:30 03/03/2022 
// Design Name: 
// Module Name:    pc_reg 
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
module pc_reg(
	input wire						clk,
	input wire						rst,
	output reg[`InstAddrBus] 	pc,
	output reg 						ce
    );

	always @ (posedge clk) begin
		if(rst == `RstEnable) begin
			ce <= `ChipDisable;
		end 
		else begin
			ce <= `ChipEnable;
		end
	end
	
	always @ (posedge clk) begin
		if(ce == `ChipDisable) begin
			pc <= 32'h00000000;
		end
		else begin
			pc <= pc + 4'h4;
		end
	end

endmodule
