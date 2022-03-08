`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:54 03/08/2022 
// Design Name: 
// Module Name:    seven_seg 
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
module seven_seg(
	input [3:0] 		Digit,
	input 					EnableSegs,
	output reg [`SegsBus] Seg
    );
	 
	reg [`SegsBus] A_G;
	
	always @ (Digit or EnableSegs) begin
		if(EnableSegs == `SegsEnable)
			case ( Digit )
				0: A_G = 7'b1111110;
				1: A_G = 7'b0110000;
				2: A_G = 7'b1101101;
				3: A_G = 7'b1111001;
				4: A_G = 7'b0110011;
				5: A_G = 7'b1011011;
				6: A_G = 7'b1011111;
				7: A_G = 7'b1110000;
				8: A_G = 7'b1111111;
				9: A_G = 7'b1110011;
				10: A_G = 7'b1110111;
				11: A_G = 7'b0011111;
				12: A_G = 7'b1001110;
				13: A_G = 7'b0111101;
				14: A_G = 7'b1001111;
				15: A_G = 7'b1000111;
				default: A_G = 7'bx;
			endcase
		else
			A_G = 7'b0;
		Seg = {A_G[0],A_G[2],A_G[2],A_G[3],A_G[4],A_G[5],A_G[6]};
	end
endmodule
