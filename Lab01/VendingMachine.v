`define IDLE	5'd0
`define S01		5'd1
`define S02		5'd2
`define S03		5'd3
`define S04		5'd4
`define S05		5'd5
`define S06		5'd6
`define S07		5'd7
`define S08		5'd8
`define S09		5'd9
`define S10		5'd10
`define S11		5'd11
`define S12		5'd12
`define S13		5'd13
`define S14		5'd14
`define S15		5'd15

`define R1		5'd16
`define R2		5'd17
`define R3		5'd18
`define R4		5'd19
`define R5		5'd20
`define R6		5'd21
`define R7		5'd22
`define R8		5'd23
`define R9		5'd24
`define R10		5'd25

`define C1		2'd1
`define C5		2'd2

module VendingMachine(clk,rst,InCoin,Button,Can,OutCoin);

	input clk, rst;
	input[1:0] InCoin;
	input Button;
	
	output OutCoin, Can;
	reg OutCoin, Can;
	
	reg[4:0] State, NextState;

	always @(posedge clk or posedge rst)
	begin
		if(rst)
			State <= `IDLE;
		else
			State <= NextState;
	end
	
	always @(State or InCoin or Button)
	begin
		case(State)
		`S10: NextState = (Button)?`R10:`S10;
		`S11: NextState = `S10;
		`S12: NextState = `S11;
		`S13: NextState = `S12;
		`S14: NextState = `S13;
		`S15: NextState = `S14;
		
		`R10: NextState = `R9;
		`R9: NextState = `R8;
		`R8: NextState = `R7;
		`R7: NextState = `R6;
		`R6: NextState = `R5;
		`R5: NextState = `R4;
		`R4: NextState = `R3;
		`R3: NextState = `R2;
		`R2: NextState = `R1;
		`R1: NextState = `IDLE;
		default:
		begin
			case(InCoin)
			`C1: NextState = State + 5'd1;
			`C5: NextState = State + 5'd5;
			default: NextState = State;
			endcase
		end
		endcase
	end
	
	always @(State)
	begin
		case(State)
		`S11: {OutCoin,Can} = 2'b10;
		`S12: {OutCoin,Can} = 2'b10;
		`S13: {OutCoin,Can} = 2'b10;
		`S14: {OutCoin,Can} = 2'b10;
		`S15: {OutCoin,Can} = 2'b10;
		
		`R10: {OutCoin,Can} = 2'b01;
		`R9: {OutCoin,Can} = 2'b10;
		`R8: {OutCoin,Can} = 2'b10;
		`R7: {OutCoin,Can} = 2'b10;
		`R6: {OutCoin,Can} = 2'b10;
		`R5: {OutCoin,Can} = 2'b10;
		`R4: {OutCoin,Can} = 2'b10;
		`R3: {OutCoin,Can} = 2'b10;
		`R2: {OutCoin,Can} = 2'b10;
		`R1: {OutCoin,Can} = 2'b10;
		default: {OutCoin,Can} = 2'b00;
		endcase
	end

endmodule
