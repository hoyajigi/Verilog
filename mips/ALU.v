`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:51 05/27/2013 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] In1,
    input [31:0] In2,
    input [2:0] ControlSignal,
    output [31:0] Out
    );
	 reg[31:0] Out;
	always @(In1 or In2 or ControlSignal)
	begin
		case(ControlSignal)
			//ADD
			3'b000: Out=In1+In2;
			//SUB
			3'b001: Out=In1-In2;
			//AND
			3'b010: Out=In1&In2;
			//OR
			3'b011: Out=In1|In2;
			//SLT
			3'b100: Out=In1-In2;
			//Sw
			3'b101: Out=In1;
			//Lw
			3'b110: Out=In1;
			//Beq
			3'b111: Out=In1-In2;
		endcase
	end

endmodule
