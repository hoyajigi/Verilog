`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:41 06/05/2013
// Design Name:   InstructionMemory
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_InstructionMemory.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_InstructionMemory;

	// Inputs
	reg [31:0] Addr;

	// Outputs
	wire [31:0] Data;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory uut (
		.Addr(Addr), 
		.Data(Data)
	);

	initial begin
		// Initialize Inputs
		Addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

