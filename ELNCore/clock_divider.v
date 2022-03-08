`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:56:05 03/08/2022 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(
	input Reset,
	input Clock,
	output reg DividedClock
    );
	 parameter COUNTER = 32'hC350;
	 reg [32:0] clock_count;
	
	always @ (posedge Clock or posedge Reset)
		if(Reset == 1'b1)
			clock_count <= {32{1'b1}};
		else begin
			clock_count <= clock_count + 1;
			if(clock_count == COUNTER)
			begin
				DivededClock <= ~DividedClock;
				clock_count <= {32{1'b0}};
				end
			end
endmodule
