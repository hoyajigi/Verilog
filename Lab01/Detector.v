`define S0 0
`define S1 1
`define S2 2
`define S3 3

module Detector(clk,rst,In,Out);

	input clk, rst;
	input In;
	
	output Out;
	reg Out;
	
	reg[1:0] State, NextState;
	
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			State <= `S0;
		else
			State <= NextState;
	end
	
	always @(State or In)
	begin
		case(State)
		`S0: NextState = (In)?`S1:`S0;
		`S1: NextState = (In)?`S1:`S2;
		`S2: NextState = (In)?`S3:`S0;
		`S3: NextState = (In)?`S1:`S2;
		endcase
	end
	
	always @(State)
	begin
		case(State)
		`S0: Out = 1'b0;
		`S1: Out = 1'b0;
		`S2: Out = 1'b0;
		`S3: Out = 1'b1;
		endcase
	end
	
endmodule
