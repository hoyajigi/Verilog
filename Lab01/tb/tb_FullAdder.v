`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:42 03/12/2013
// Design Name:   FullAdder
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/Lab01/tb/tb_FullAdder.v
// Project Name:  Lab01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_FullAdder;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire Sum;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.Sum(Sum), 
		.Cout(Cout)
	);

	initial begin
		A = 0;B = 0;Cin = 0;#100;
      A = 0;B = 0;Cin = 1;#100;
		A = 0;B = 1;Cin = 0;#100;
		A = 0;B = 1;Cin = 1;#100;
		A = 1;B = 0;Cin = 0;#100;
		A = 1;B = 0;Cin = 1;#100;
		A = 1;B = 1;Cin = 0;#100;
		A = 1;B = 1;Cin = 1;#100;
	end
      
endmodule

