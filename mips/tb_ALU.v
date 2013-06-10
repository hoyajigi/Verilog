`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:09 06/10/2013
// Design Name:   ALU
// Module Name:   C:/Users/hoyajigi/Documents/GitHub/Verilog/mips/tb_ALU.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU;

	// Inputs
	reg [31:0] In1;
	reg [31:0] In2;
	reg [2:0] ControlSignal;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.In1(In1), 
		.In2(In2), 
		.ControlSignal(ControlSignal), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In1 = 0;
		In2 = 0;
		ControlSignal = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

