`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:21:06 04/11/2013 
// Design Name: 
// Module Name:    FullAdder 
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
module FullAdder(
    input [31:0] In,
	 input clk,
    output [31:0] Out
    );
	
	reg[31:0] Out;
	
	always @(posedge clk)// or negedge rst)
		Out=In+32'b00000000_00000000_00000000_00000100;

endmodule
