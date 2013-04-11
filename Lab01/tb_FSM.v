`timescale 1ns / 1ps

module tb_FSM;

	// Inputs
	reg clk;
	reg rst;
	reg In;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clk(clk), 
		.rst(rst), 
		.In(In), 
		.Out(Out)
	);

	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	initial begin
		rst = 1'b1;
		#10;
		rst = 1'b0;
		#10;
		rst = 1'b1;
	end
	
	initial begin
		In = 1'b0;
		#247;
		In = 1'b1;
		#250;
		In = 1'b0;
		#250;
		In = 1'b1;
	end
      
endmodule

