module FSM(clk,rst,In,Out);

	input clk, rst;
	input In;
	
	output Out;
	reg Out;
	
	reg[1:0] State, NextState;
	
	always @(posedge clk or negedge rst)
	begin
		if(!rst)
			State <= 2'b00;
		else
			State <= NextState;
	end
	
	always @(State or In)
	begin
		case(State)
		2'b00: NextState = 2'b01;
		2'b01: NextState = 2'b10;
		2'b10: NextState = 2'b11;
		2'b11: NextState = (In)?2'b00:2'b11;
		endcase
	end
	
	always @(State)
	begin
		case(State)
		2'b00: Out = 1'b0;
		2'b01: Out = 1'b0;
		2'b10: Out = 1'b0;
		2'b11: Out = 1'b1;
		endcase
	end

endmodule
