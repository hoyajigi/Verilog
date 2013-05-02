`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:50:29 05/02/2013 
// Design Name: 
// Module Name:    PC_Mux 
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
module PC_Mux(Sel,In1,In2,Out);

	input Sel;
	input[31:0] In1, In2;
	
	output[31:0] Out;
	wire[31:0] Out;

	assign Out = (Sel)?In2:In1;

endmodule
