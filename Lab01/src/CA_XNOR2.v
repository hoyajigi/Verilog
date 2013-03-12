`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:05 03/12/2013 
// Design Name: 
// Module Name:    CA_XNOR2 
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
module CA_XNOR2(In1,In2,Out
    );
	input In1,In2;
	output Out;
	
	wire Out=~(In1^In2);


endmodule
