`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:55 03/12/2013 
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
module FullAdder(A,B,Cin,Sum,Cout
    );
	input A,B;
	input Cin;
	
	output Sum,Cout;
	
	wire Sum,Cout;
	
	assign {Cout,Sum}=A+B+Cin;


endmodule
