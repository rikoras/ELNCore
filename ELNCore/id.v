`timescale 1ns / 1ps
`include "define.v"

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:02 03/08/2022 
// Design Name: 
// Module Name:    id 
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
module id(
	input wire						rst,
	input wire[`InstAddrBus]	pc_i,
	input wire[`InstBus]			inst_i,
	
	//data from regfile
	input wire[`RegBus]			reg1_data_i,
	input wire[`RegBus]			reg2_data_i,
	
	//regfile ctr signal
	output reg						reg1_read_o,	//ctr
	output reg						reg2_read_o,
	output reg[`RegAddrBus]		reg1_addr_o,
	output reg[`RegAddrBus]		reg2_addr_o,
	
	//to ALU
	output reg[`AluOpBus]		aluop_o,
	output reg[`AluSelBus]		alusel_o,
	output reg[`RegBus]			reg1_o,
	output reg[`RegBus]			reg2_o,
	output reg[`RegAddrBus]		wd_o,	//addr of reg to write
	output reg						wreg_o
    );
	 
	wire[5:0] op = inst_i[31:26];
	wire[4:0] op2 = inst_i[10:6];
	wire[5:0] op3 = inst_i[5:0];
	wire[4:0] op4 = inst_i[20:16];
	
	reg[`RegBus] imm;
	
	//is instruction valid
	reg instvalid;
	
	//decode
	always @ (*) begin
		if(rst == `RstEnable) begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_RES_NOP;
			//wd_o
			end
	 end


endmodule
