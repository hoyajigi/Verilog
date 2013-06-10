`timescale 1ns / 1ps

module tb_MIPS_Datapath;

	// Inputs
	reg clk;
	reg rst;

	// Test Outputs
	wire[31:0] TestPort;
	
	// Test Count
	reg[31:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	MIPS_Datapath MIPS_Datapath (
		.clk(clk), 
		.rst(rst), 
		.TestPort(TestPort) //For Test
	);
	
	//For Test
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			cnt <= 32'd0;
		else
			cnt <= cnt + 32'd1;
	end
	
	//Clock Period 2nSec
	initial begin
		clk = 1'b0;
		forever #1 clk = ~clk;
	end
	
	initial begin
		rst = 1'b1;
		#10 rst = 1'b0;
		#10 rst = 1'b1;
	end
      
endmodule

