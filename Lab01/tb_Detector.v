`timescale 1ns / 1ps

module tb_Detector;

	// Inputs
	reg clk;
	reg rst;
	reg In;

	// Outputs
	wire Out;

	// Instantiate the Unit Under Test (UUT)
	Detector uut (
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
		#15 rst = 1'b0;
		#10 rst = 1'b1;
	end
	
	initial begin
		#10 In = 1'b0;
		#10 In = 1'b1;
		#10 In = 1'b0;
		#10 In = 1'b1;
		#10 In = 1'b1;
		#10 In = 1'b0;
		#10 In = 1'b1;
		#10 In = 1'b0;
		#10 In = 1'b1;
	end
      
endmodule
