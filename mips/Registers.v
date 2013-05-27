`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:58:13 05/02/2013 
// Design Name: 
// Module Name:    Registers 
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
module Registers(
	 input clk,
	 input rst,
	 input write,
    input [4:0] ReadRegister1,
    input [4:0] ReadRegister2,
    input [4:0] WriteRegister,
    input [31:0] WriteData,
    output [31:0] ReadData1,
    output [31:0] ReadData2
    );

	reg[31:0] regs[0:31];
	reg[31:0] ReadData1;
	reg[31:0] ReadData2;

	integer i;

	//TODO: 0번 레지스터 일 경우 0을 출력하고 0번 레지스터에는 쓰기가 되지 않는다.
	
	always @(negedge clk & write)
		regs[WriteRegister]=WriteData;
	
	always @(ReadRegister1 or write)
		ReadData1=regs[ReadRegister1];
	always @(ReadRegister2 or write)
		ReadData2=regs[ReadRegister2];
	
	always @(negedge rst)
	begin
		if(!rst)
			for(i=0; i<32; i=i+1)
				regs[i] <= 32'd0;
	end
	
endmodule
