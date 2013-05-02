`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:36 05/02/2013
// Design Name:   SignExtend
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_SignExtend.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_SignExtend;

	// Inputs
	reg [15:0] In;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	SignExtend uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
      
		// Add stimulus here
		In = -10;
		
		#100;
		In = 10;
		
		
	end
      
endmodule

