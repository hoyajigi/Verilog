`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:25 05/02/2013 
// Design Name: 
// Module Name:    Adder 
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
module Adder(In1,In2,Out);

	input[31:0] In1, In2;
	
	output[31:0] Out;
	wire[31:0] Out;

	//과제 그림에서 Carry Out은 그려져있지 않으므로 고려하지 않는다.
	assign Out = In1 + In2;

endmodule

