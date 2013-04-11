`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:14:43 04/11/2013 
// Design Name: 
// Module Name:    Mux2 
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
module Mux2(
	 input PCsrc,
    input [31:0] In,
    output [31:0] Out
    );
	
	reg[31:0] Out;
	always @(PCsrc or In)
	begin
		case(PCsrc)
			1'b0: Out = In;
			1'b1: Out = 32'b00000000_00000000_00000000_00000000;
		endcase
	end
endmodule