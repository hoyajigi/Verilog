`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:19:32 03/12/2013 
// Design Name: 
// Module Name:    CA_3_Buf 
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
module CA_3_Buf(En,In,Out
    );
		input En,In;
		output Out;
		wire Out;
		
		assign Out=(En)?~In:1'bz;


endmodule
