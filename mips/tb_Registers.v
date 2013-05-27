`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:27:54 05/02/2013
// Design Name:   Registers
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_Registers.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Registers;

	// Inputs
	reg clk;
	reg rst;
	reg write;
	reg [4:0] ReadRegister1;
	reg [4:0] ReadRegister2;
	reg [4:0] WriteRegister;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	Registers uut (
		.clk(clk),
		.rst(rst),
		.write(write), 
		.ReadRegister1(ReadRegister1), 
		.ReadRegister2(ReadRegister2), 
		.WriteRegister(WriteRegister), 
		.WriteData(WriteData), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);
	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		write = 0;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 0;
		WriteData = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		WriteRegister = 0;
		WriteData = 0;
		write=1;
		#100;
		WriteRegister = 1;
		WriteData = 1;
		write=1;
		#100;
		
		WriteRegister = 2;
		WriteData = 2;
		write=1;
		#100;
		ReadRegister1=1;
		ReadRegister2=2;
	end
      
endmodule

