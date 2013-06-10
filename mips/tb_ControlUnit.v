`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:15 06/10/2013
// Design Name:   ControlUnit
// Module Name:   C:/Users/hoyajigi/Documents/GitHub/Verilog/mips/tb_ControlUnit.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ControlUnit;

	// Inputs
	reg [5:0] OPCode;

	// Outputs
	wire WriteReg;
	wire MemToReg;
	wire Branch;
	wire ReadMem;
	wire WriteMem;
	wire DstReg;
	wire ALUSrc;
	wire [1:0] ALU_OP;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.OPCode(OPCode), 
		.WriteReg(WriteReg), 
		.MemToReg(MemToReg), 
		.Branch(Branch), 
		.ReadMem(ReadMem), 
		.WriteMem(WriteMem), 
		.DstReg(DstReg), 
		.ALUSrc(ALUSrc), 
		.ALU_OP(ALU_OP)
	);

	initial begin
		// Initialize Inputs
		OPCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

