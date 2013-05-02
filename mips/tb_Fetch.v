`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:51:14 05/02/2013
// Design Name:   Adder
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_Fetch.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_Fetch;

	// Inputs
	reg clk;
	reg rst;
	reg PCsrc;

	// Outputs
	wire [31:0] Result;

	// Wire
	wire[31:0] Mux_Out;
	wire[31:0] Adder_Out;

	PC PC (clk,rst,Mux_Out,Result);
	Adder Adder (Result,32'd4,Adder_Out);
	PC_Mux PC_Mux (PCsrc,Adder_Out,32'd0,Mux_Out);

	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1'b1;
		#10 rst = 1'b0;
		#10 rst = 1'b1;
	end

	initial begin
		PCsrc = 1'b1;
		#100 PCsrc = 1'b0;
	end

endmodule