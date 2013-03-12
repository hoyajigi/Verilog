`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:53:24 03/12/2013
// Design Name:   Decoder4
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/Lab01/tb/tb_Decoder4.v
// Project Name:  Lab01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Decoder4;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire D0;
	wire D1;
	wire D2;
	wire D3;

	// Instantiate the Unit Under Test (UUT)
	Decoder4 uut (
		.A(A), 
		.B(B), 
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3)
	);

	initial begin
		A = 0;B = 0;#100;
		A = 0;B = 1;#100;
		A = 1;B = 0;#100;
		A = 1;B = 1;#100;
	end
      
endmodule

