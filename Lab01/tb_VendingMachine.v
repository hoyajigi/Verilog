`timescale 1ns / 1ps

module tb_VendingMachine;

	// Inputs
	reg clk;
	reg rst;
	reg[1:0] InCoin;
	reg Button;

	// Outputs
	wire Can;
	wire OutCoin;
	
	wire tCan = clk & Can;
	wire tOutCoin = clk & OutCoin;

	// Instantiate the Unit Under Test (UUT)
	VendingMachine uut (
		.clk(clk), 
		.rst(rst), 
		.InCoin(InCoin), 
		.Button(Button), 
		.Can(Can), 
		.OutCoin(OutCoin)
	);

	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk;
	end
	
	initial begin
		rst = 1'b0;
		#10 rst = 1'b1;
		#10 rst = 1'b0;
	end
	
	initial begin
		Button = 1'b0;
		InCoin = 2'd0;
		#50;
		InCoin = 2'd1;
		#70;
		InCoin = 2'd2;
		#50;
		InCoin = 2'd0;
		
		#50;
		Button = 1'b1;
		#10;
		Button = 1'b0;
	end
      
endmodule

