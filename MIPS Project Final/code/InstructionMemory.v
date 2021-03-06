module InstructionMemory(Addr,Data);

	input[31:0] Addr;
	
	output[31:0] Data;
		reg[31:0] Data;

	reg[31:0] Mem[0:255];
	
	always @(Addr)
	begin
		case(Addr[31:2])
			30'd0:	Data = 32'h8c19003b;	//lw $25, 59($0)
			30'd1:	Data = 32'h8c18003a;	//lw $24, 58($0)
			30'd2:	Data = 32'h8c0f0039;	//lw $15, 57($0)
			30'd3:	Data = 32'h8c0e0038;	//lw $14, 56($0)
			30'd4:	Data = 32'h8c0d0037;	//lw $13, 55($0)
			30'd5:	Data = 32'h8c0c0036;	//lw $12, 54($0)
			30'd6:	Data = 32'h8c0b0035;	//lw $11, 53($0)
			30'd7:	Data = 32'h8c0a0034;	//lw $10, 52($0)
			30'd8:	Data = 32'h8c090033;	//lw $9, 51($0)
			30'd9:	Data = 32'h8c080032;	//lw $8, 50($0)
			30'd10:	Data = 32'h00000000;	//nop
			30'd11:	Data = 32'h00000000;	//nop
			30'd12:	Data = 32'h00000000;	//nop
			30'd13:	Data = 32'h00000000;	//nop
			30'd14:	Data = 32'h00000000;	//nop
			30'd15:	Data = 32'h00008020;	//add $16, $0, $0
			30'd16:	Data = 32'h00008820;	//add $17, $0, $0
			30'd17:	Data = 32'h00009020;	//add $18, $0, $0
			30'd18:	Data = 32'h00009820;	//add $19, $0, $0
			30'd19:	Data = 32'h0000a020;	//add $20, $0, $0
			30'd20:	Data = 32'h01f8a820;	//add $21, $15, $24
			30'd21:	Data = 32'h0000b020;	//add $22, $0, $0
			30'd22:	Data = 32'h0000b820;	//add $23, $0, $0
			30'd23:	Data = 32'h00000000;	//nop
			30'd24:	Data = 32'h00000000;	//nop
			30'd25:	Data = 32'h00000000;	//nop
			30'd26:	Data = 32'h00000000;	//nop
			30'd27:	Data = 32'h00000000;	//nop
			30'd28:	Data = 32'h02098020;	//add $16, $16, $9
			30'd29:	Data = 32'h02098020;	//add $16, $16, $9
			30'd30:	Data = 32'h02098020;	//add $16, $16, $9
			30'd31:	Data = 32'h02298822;	//sub $17, $17, $9
			30'd32:	Data = 32'h02298822;	//sub $17, $17, $9
			30'd33:	Data = 32'h02298822;	//sub $17, $17, $9
			30'd34:	Data = 32'h0192982a;	//slt $19, $12, $18
			30'd35:	Data = 32'h02499020;	//add $18, $18, $9
			30'd36:	Data = 32'h1260fffd;	//beq $19, $0, -12
			30'd37:	Data = 32'h0299a020;	//add $20, $20, $25
			30'd38:	Data = 32'h00000000;	//nop
			30'd39:	Data = 32'h00000000;	//nop
			30'd40:	Data = 32'h00000000;	//nop
			30'd41:	Data = 32'h00000000;	//nop
			30'd42:	Data = 32'h00000000;	//nop
			30'd43:	Data = 32'h02afa824;	//and $21, $21, $15
			30'd44:	Data = 32'h02aba824;	//and $21, $21, $11
			30'd45:	Data = 32'h02ada824;	//and $21, $21, $13
			30'd46:	Data = 32'h02c9b025;	//or $22, $22, $9
			30'd47:	Data = 32'h02cab025;	//or $22, $22, $10
			30'd48:	Data = 32'h02ccb025;	//or $22, $22, $12
			30'd49:	Data = 32'h8c17003b;	//lw $23, 59($0)
			30'd50:	Data = 32'h02eab820;	//add $23, $23, $10
			30'd51:	Data = 32'h00000000;	//nop
			30'd52:	Data = 32'h00000000;	//nop
			30'd53:	Data = 32'h00000000;	//nop
			30'd54:	Data = 32'h00000000;	//nop
			30'd55:	Data = 32'h00000000;	//nop
			30'd56:	Data = 32'hac170007;	//sw $23, 7($0)
			30'd57:	Data = 32'hac160006;	//sw $22, 6($0)
			30'd58:	Data = 32'hac150005;	//sw $21, 5($0)
			30'd59:	Data = 32'hac140004;	//sw $20, 4($0)
			30'd60:	Data = 32'hac130003;	//sw $19, 3($0)
			30'd61:	Data = 32'hac120002;	//sw $18, 2($0)
			30'd62:	Data = 32'hac110001;	//sw $17, 1($0)
			30'd63:	Data = 32'hac100000;	//sw $16, 0($0)
			30'd64:	Data = 32'hac190064;	//sw $25, 100($0)
		default:		Data = 32'h00000000;
		endcase
	end

endmodule
