`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:53 05/02/2013 
// Design Name: 
// Module Name:    PC 
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
module PC(clk,rst,In,Out);

	input clk, rst;
	input[31:0] In;
	
	output[31:0] Out;
	reg[31:0] Out;
	
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			Out <= 32'd0;
		else
			Out <= In;
	end

endmodule
