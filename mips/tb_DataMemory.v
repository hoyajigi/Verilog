`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:21 06/05/2013
// Design Name:   DataMemory
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_DataMemory.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_DataMemory;

	// Inputs
	reg clk;
	reg ReadMem;
	reg WriteMem;
	reg [31:0] Addr;
	reg [31:0] Data_i;

	// Outputs
	wire [31:0] Data;
	wire [31:0] TestPort;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.clk(clk), 
		.ReadMem(ReadMem), 
		.WriteMem(WriteMem), 
		.Addr(Addr), 
		.Data_i(Data_i), 
		.Data(Data), 
		.TestPort(TestPort)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ReadMem = 0;
		WriteMem = 0;
		Addr = 0;
		Data_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

