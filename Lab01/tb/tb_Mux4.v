`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:58 03/12/2013
// Design Name:   Mux4
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/Lab01/tb/tb_Mux4.v
// Project Name:  Lab01
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Mux4;

	// Inputs
	reg [1:0] Se1;
	reg In1;
	reg In2;
	reg In3;
	reg In4;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Mux4 uut (
		.Se1(Se1), 
		.In1(In1), 
		.In2(In2), 
		.In3(In3), 
		.In4(In4), 
		.Out(Out)
	);

	initial begin
		Se1 = 2'b00;
		In1 = 0;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 1;#100;
		
		Se1 = 2'b01;
		In1 = 0;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 1;#100;
		
		Se1 = 2'b10;
		In1 = 0;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 1;#100;
		
		Se1 = 2'b11;
		In1 = 0;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 0;In2 = 1;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 0;In3 = 1;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 0;In4 = 1;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 0;#100;
		In1 = 1;In2 = 1;In3 = 1;In4 = 1;#100;
	end
      
endmodule

