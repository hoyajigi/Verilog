`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:30 03/12/2013
// Design Name:   CA_AND2
// Module Name:   C:/Windows/System32/Lab01/tb/tb_CA_AND2.v
// Project Name:  Lab01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CA_AND2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_CA_AND2;

	// Inputs
	reg In1;
	reg In2;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	CA_AND2 uut (
		.In1(In1), 
		.In2(In2), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In1 = 1'b0;
		In2 = 1'b0;
		
		#50;
		
		In1 = 1'b0;
		In2 = 1'b1;
		
		#50;
		
		In1 = 1'b1;
		In2 = 1'b0;
		
		#50;
		
		In1 = 1'b1;
		In2 = 1'b1;
	end  
endmodule

