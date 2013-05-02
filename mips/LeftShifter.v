`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:54:51 05/02/2013 
// Design Name: 
// Module Name:    LeftShifter 
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
module LeftShifter(
    input [31:0] In,
    output [31:0] Out
    );
	assign Out=In<<2;

endmodule
