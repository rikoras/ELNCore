`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:32 03/03/2022 
// Design Name: 
// Module Name:    define 
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

//************** Global macro *************
`define RstEnable 	1'b1
`define RstDisable 	1'b0
`define ZeroWord		32'h00000000
`define WriteEnable	1'b1
`define WriteDisable	1'b0
`define ReadEnable	1'b1
`define ReadDisable	1'b0
`define AluOpBus		7:0
`define AluSelBus		2:0
`define InstValid		1'b1	//instruct enable
`define InstInvalid	1'b0
`define True_v			1'b1	//Logic true
`define False_v		1'b0
`define ChipEnable	1'b1
`define ChipDisable	1'b0

//************* Instruct define ***********
`define EXE_ORI	6'b001101	//ori
`define EXE_NOP	6'b000000	//nop

//AluOp encode
`define EXE_OR_OP		8'b00100101
`define EXE_NOP_OP 	8'b00000000

//AluSel
`define EXE_RES_LOGIC	3'b001
`define EXE_RES_NOP		3'b000

//************ ROM macro ******************
`define InstAddrBus		31:0	//ROM addr width
`define InstBus			31:0	//DATA bus
`define InstMemNum		131071	//128KB ROM
`define InstMemNumLog2	17		//real addr width

//************ Reg macro ******************
`define RegAddrBus		4:0
`define RegBus				31:0
`define RegWidth			32
`define DoubleRegWidth	64
`define DoubleRegBus		63:0
`define RegNum				32
`define RegNumLog2		5	//GReg 5bits for addressing
`define NOPRegAddr		5'b00000


//************ Seven Segments Digit *******
`define SegsSel 			3'b4
`define SegsEnable		1'b1
`define SegsDisable		1'b0
`define SegsBus				6:0