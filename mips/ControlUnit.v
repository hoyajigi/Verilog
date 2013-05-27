`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:11 05/27/2013 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
    input [5:0] OPCode,
    output WriteReg,
    output MemToReg,
    output Branch,
    output ReadMem,
    output WriteMem,
    output DstReg,
    output ALUSrc,
    output [1:0] ALU_OP
    );
	 reg WriteReg,MemToReg,Branch,ReadMem,WriteMem,DstReg,ALUSrc;
	 reg[1:0] ALU_OP;
	always @(OPCode)
	begin
		case(OPCode)
		//ADD,SUB,AND,OR,SLT
		6'd000000: {WriteReg,MemToReg,Branch,ReadMem,WriteMem,DstReg,ALUSrc,ALU_OP[1],ALU_OP[0]}=9'b000000000;
		//Sw
		6'd101011: {WriteReg,MemToReg,Branch,ReadMem,WriteMem,DstReg,ALUSrc,ALU_OP[1],ALU_OP[0]}=9'b000000001;
		//Lw
		6'd100011: {WriteReg,MemToReg,Branch,ReadMem,WriteMem,DstReg,ALUSrc,ALU_OP[1],ALU_OP[0]}=9'b000000010;
		//Beq
		6'd000100: {WriteReg,MemToReg,Branch,ReadMem,WriteMem,DstReg,ALUSrc,ALU_OP[1],ALU_OP[0]}=9'b000000011;
		endcase
	end

endmodule
