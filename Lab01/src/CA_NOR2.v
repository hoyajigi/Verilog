`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:38 03/12/2013 
// Design Name: 
// Module Name:    CA_NOR2 
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
module CA_NOR2(In1,In2,Out
    );
	input In1,In2;
	output Out;
	wire Out;
	
	wire nOut;
	
	assign Out=~nOut;
	
	CA_OR2 uut(In1,In2,nOut);
endmodule
