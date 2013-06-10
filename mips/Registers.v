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

	reg[31:0] regs[1:31];
	wire[31:0] ReadData1;
	wire[31:0] ReadData2;

	integer i;

	assign ReadData1 = (ReadRegister1==5'd0)?(32'd0):(regs[ReadRegister1]);
	assign ReadData2 = (ReadRegister2==5'd0)?(32'd0):(regs[ReadRegister2]);

	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			for(i=1; i<32; i=i+1)
				regs[i] <= 32'd0;
		else
			if(write)
				regs[WriteRegister] <= WriteData;
	end
	
endmodule
