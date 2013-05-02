`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:36 05/02/2013
// Design Name:   LeftShifter
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_LeftShifter.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LeftShifter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_LeftShifter;

	// Inputs
	reg [31:0] In;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	LeftShifter uut (
		.In(In), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		In=10;
		#100;
		In=100;
	end
      
endmodule

