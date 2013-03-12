`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:14 03/12/2013 
// Design Name: 
// Module Name:    Mux4 
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
module Mux4(Se1,In1,In2,In3,In4,Out
    );

	input[1:0] Se1;
	input In1,In2,In3,In4;
	
	output Out;
	reg Out;
	
	always @(Se1 or In1 or In2 or In3 or In4)
	begin
		case(Se1)
			2'b00: Out = In1;
			2'b01: Out = In1;
			2'b10: Out = In1;
			2'b11: Out = In1;
		endcase
	end

endmodule
