`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:06:13 03/14/2013 
// Design Name: 
// Module Name:    Decoder8 
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
module Decoder8(
A,B,C,D0,D1,D2,D3,D4,D5,D6,D7
    );
	input A,B,C;
	output D1,D2,D3,D0,D4,D5,D6,D7;
	reg D0,D1,D2,D3,D4,D5,D6,D7;

	always @(A or B or C)
	begin
		case ({A,B,C})
			3'b000: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b10000000;
			3'b001: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b01000000;
			3'b010: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00100000;
			3'b011: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00010000;
			3'b100: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00001000;
			3'b101: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00000100;
			3'b110: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00000010;
			3'b111: {D0,D1,D2,D3,D4,D5,D6,D7}=8'b00000001;
		endcase
	end


endmodule
