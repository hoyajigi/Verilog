`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:31:04 05/27/2013 
// Design Name: 
// Module Name:    ALUControl 
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
module ALUControl(
    input [5:0] In,
    input [1:0] ALU_OP,
    output [2:0] Control
    );
	 reg[2:0] Control;
	always @(In or ALU_OP)
	begin
		case(ALU_OP)
		//ADD,SUB,AND,OR,SLT
		2'b00:
			case (In)
			//ADD
			6'b100000:Control=3'b000;
			//SUB
			6'b100010:Control=3'b001;
			//AND
			6'b100100:Control=3'b010;
			//OR
			6'b100101:Control=3'b011;
			//SLT
			6'b100000:Control=3'b100;
			endcase
		//Sw
		2'b01:Control=3'b101;
		//Lw
		2'b10:Control=3'b110;
		//Beq
		2'b11:Control=3'b111;
		endcase
	end

endmodule
