`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:24:24 06/10/2013
// Design Name:   ALUControl
// Module Name:   C:/Users/hoyajigi/Documents/GitHub/Verilog/mips/tb_ALUControl.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUControl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALUControl;

	// Inputs
	reg [5:0] In;
	reg [1:0] ALU_OP;

	// Outputs
	wire [2:0] Control;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.In(In), 
		.ALU_OP(ALU_OP), 
		.Control(Control)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		ALU_OP = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

