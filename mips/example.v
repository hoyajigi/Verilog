`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:01 05/02/2013 
// Design Name: 
// Module Name:    example 
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
module D_FF(clk,rst,D,Q);

	input clk, rst;
	input D;

	output Q;
	reg Q;

	//Rising Edge Clock, Falling Edge Reset
	//Async. Reset
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			Q <= 1'b0;
		else
			Q <= D;
	end

endmodule

module FullAdder1(A,B,Cin,S,Cout);

	input A, B, Cin;

	output S, Cout;
	wire S, Cout;

	assign {Cout,S} = A + B + Cin;

endmodule

module FullAdder2(A,B,Cin,S,Cout);

	input A, B, Cin;

	output S, Cout;
	reg S, Cout;

	always @(A or B or Cin)
	begin
		case({A,B,Cin})
		3'b000: {S,Cout} = 2'b00;
		3'b001: {S,Cout} = 2'b10;
		3'b010: {S,Cout} = 2'b10;
		3'b011: {S,Cout} = 2'b01;
		3'b100: {S,Cout} = 2'b10;
		3'b101: {S,Cout} = 2'b01;
		3'b110: {S,Cout} = 2'b01;
		3'b111: {S,Cout} = 2'b11;
		endcase
	end

endmodule

module FullAdder3(A,B,Cin,S,Cout);

	input A, B, Cin;

	output S, Cout;
	wire S, Cout;

	wire w1, w2, w3;

	//Using Gate
	XOR2 uut1 (w1,A,B);
	XOR2 uut2 (S,w1,Cin);

	NAND2 uut4 (w2,A,B);
	NAND2 uut5 (w3,Cin,w1);
	NAND2 uut6 (Cout,w3,w2);

endmodule
