`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:59 05/02/2013
// Design Name:   example
// Module Name:   C:/Users/hlug/Documents/GitHub/Verilog/mips/tb_example.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: example
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_test;

	//Input
	//Clock, Reset
	reg clk, rst;

	//D_FF
	reg D;

	//FullAdder
	reg A, B, Cin;


	//Output
	//D_FF
	wire Q;

	//FullAdder1
	wire S1, Cout1;
	//FullAdder1
	wire S2, Cout2;
	//FullAdder1
	wire S3, Cout3;

	D_FF uut1 (clk,rst,D,Q);
	FullAdder1 uut2 (A,B,Cin,S1,Cout1);
	FullAdder2 uut3 (A,B,Cin,S2,Cout2);
	FullAdder3 uut4 (A,B,Cin,S3,Cout3);

	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1'b1;
		#7 rst = 1'b0;
		#5 rst = 1'b1;
	end

	//D_FF Test Input
	initial begin
		D = 1'b0;
		#13 D = 1'b0;
		#10 D = 1'b1;
		#10 D = 1'b0;
		#10 D = 1'b1;
		#10 D = 1'b0;
		#10 D = 1'b1;
		#10 D = 1'b0;
	end

	//FullAdder Test Input
	initial begin
		#10 {A,B,Cin} = 3'b000;
		#10 {A,B,Cin} = 3'b001;
		#10 {A,B,Cin} = 3'b010;
		#10 {A,B,Cin} = 3'b011;
		#10 {A,B,Cin} = 3'b100;
		#10 {A,B,Cin} = 3'b101;
		#10 {A,B,Cin} = 3'b110;
		#10 {A,B,Cin} = 3'b111;
	end

endmodule
