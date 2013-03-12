`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:36 03/12/2013 
// Design Name: 
// Module Name:    Decoder4 
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
module Decoder4(A,B,D0,D1,D2,D3
    );
	input A,B;
	output D1,D2,D3,D0;
	reg D0,D1,D2,D3;

	always @(A or B)
	begin
		case ({A,B})
			2'b00: {D0,D1,D2,D3}=4'b1000;
			2'b01: {D0,D1,D2,D3}=4'b0100;
			2'b10: {D0,D1,D2,D3}=4'b0010;
			2'b11: {D0,D1,D2,D3}=4'b0001;
		endcase
	end
endmodule
