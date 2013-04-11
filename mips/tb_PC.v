`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:24:29 04/11/2013
// Design Name:   Reg_PC
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_PC.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_PC;

	// Inputs
	wire [31:0] In;
	wire [31:0] Loopback;
	reg clk;
	reg PCsrc;
	// Outputs
	wire [31:0] Out;
	
	
	Mux2 uu1(PCsrc,Loopback,In);
	// Instantiate the Unit Under Test (UUT)
	Reg_PC uut (
		.In(In), 
		.Out(Out)
	);
	FullAdder uu2(Out,clk,Loopback);

	initial begin
		// Initialize Inputs
		clk=0;
		PCsrc=1'b1;
		
		// Wait 100 ns for global reset to finish
		#5;clk=1;#5;clk=0;
      #5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0; PCsrc=1'b0;
		// Add stimulus here
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
		#5;clk=1;#5;clk=0;
	end
      
endmodule

