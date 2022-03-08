`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:12 03/08/2022 
// Design Name: 
// Module Name:    TestSevenSeg 
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
module TestSevenSeg(
	input [3:0] Switch,
	input 		Btn0,
	output[6:0] Segs,
	output		En
    );
	 
	 assign En = ~Btn0;
	 
	 seven_seg M1_SevenSegs (.Digit(Switch),
	.EnableSegs(En), .Seg(Segs));


endmodule
