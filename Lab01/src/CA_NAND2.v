`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:04 03/12/2013 
// Design Name: 
// Module Name:    CA_NAND2 
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
module CA_NAND2(In1,In2,Out
    );
	input In1,In2;
	output Out;
	reg Out;
	
	always @(In1 or In2)
	begin
		case({In1,In2})
			2'b00: Out=1'b1;
			2'b01: Out=1'b1;
			2'b10: Out=1'b1;
			2'b11: Out=1'b0;
		endcase
	end
endmodule
