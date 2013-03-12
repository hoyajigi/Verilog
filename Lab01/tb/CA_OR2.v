`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:53 03/12/2013 
// Design Name: 
// Module Name:    CA_OR2 
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
module CA_OR2(In1,In2,Out
    );
	input In1,In2;
	output Out;
	reg Out;
	
	always @(In1 or In2)
	begin
		Out = In1|In2;
	end


endmodule
