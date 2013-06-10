`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:13 06/05/2013 
// Design Name: 
// Module Name:    MIPS_Datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MIPS_Datapath(
    input clk,
    input rst,
    output [31:0] TestPort
    );

/* 명령어는 명령어 메모리에서 나오니까 명령어 메모리부터 시작해보자 */
/* 명령어 메모리 시작 */
	// Inputs
	wire [31:0] Addr;

	// Outputs
	wire [31:0] Data;

	InstructionMemory IMem (
		.Addr(Addr), 
		.Data(Data)
	);
/* 명령어 메모리 끝 */
/* PC 시작 */
	reg PCsrc;
	// Wire
	wire[31:0] Mux_Out;
	wire[31:0] Adder_Out;

	PC PC (clk,rst,Mux_Out,Addr);
	Adder Adder (Result,32'd4,Adder_Out);
	PC_Mux PC_Mux (PCsrc,Adder_Out,32'd0,Mux_Out);
	
	initial begin
		PCsrc = 1'b1;
		#100 PCsrc = 1'b0;
	end
/* PC 끝 */


	//Wires
	
	wire write;
	wire [4:0] ReadRegister1;
	wire [4:0] ReadRegister2;
	wire [4:0] WriteRegister;
	wire [31:0] WriteData;
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	
	Registers Reg (.clk(clk),.rst(rst),.write(write), .ReadRegister1(ReadRegister1),
		.ReadRegister2(ReadRegister2), .WriteRegister(WriteRegister), .WriteData(WriteData), 
		.ReadData1(ReadData1), .ReadData2(ReadData2));
	
	
/* 데이터 메모리 시작 */
	// Inputs
	wire ReadMem;
	wire WriteMem;
	wire [31:0] DataAddr;
	wire [31:0] Data_i;

	// Outputs
	wire [31:0] Data2;
	wire [31:0] TestPort;
	
//clk,ReadMem,WriteMem,Addr,Data_i,Data,TestPort
	DataMemory DMem (
		.clk(clk), 
		.ReadMem(ReadMem), 
		.WriteMem(WriteMem), 
		.Addr(DataAddr), 
		.Data_i(Data_i), 
		.Data(Data2), 
		.TestPort(TestPort)
	);
/* 데이터 메모리 끝 */

/* ALU 시작 */
// Inputs
	reg [31:0] In1;
	reg [31:0] In2;
	reg [2:0] ControlSignal;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	ALU ALU (
		.In1(In1), 
		.In2(In2), 
		.ControlSignal(ControlSignal), 
		.Out(Out)
	);
/* ALU 끝 */

/*  */
// Inputs
	wire [5:0] ALUControlIn;
	wire [1:0] ALU_OP;

	// Outputs
	wire [2:0] Control;

	// Instantiate the Unit Under Test (UUT)
	ALUControl ALUControl (
		.In(ALUControlIn), 
		.ALU_OP(ALU_OP), 
		.Control(Control)
	);
/*  */

/*  */
// Inputs
	reg [5:0] OPCode;

	// Outputs
	wire WriteReg;
	wire MemToReg;
	wire Branch;
	wire ReadMemSig;
	wire WriteMemSig;
	wire DstReg;
	wire ALUSrc;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit ControlUnit (
		.OPCode(OPCode), 
		.WriteReg(WriteReg), 
		.MemToReg(MemToReg), 
		.Branch(Branch), 
		.ReadMem(ReadMemSig), 
		.WriteMem(WriteMemSig), 
		.DstReg(DstReg), 
		.ALUSrc(ALUSrc), 
		.ALU_OP(ALU_OP)
	);
/*  */

/*  */
// Inputs
	wire [31:0] LeftShiferIn;

	// Outputs
	wire [31:0] LeftShiferOut;

	// Instantiate the Unit Under Test (UUT)
	LeftShifter LeftShifer (
		.In(LeftShiferIn), 
		.Out(LeftShiferOut)
	);
/*  */

/*  */
// Inputs
	reg [15:0] SignExtendIn;

	// Outputs
	wire [31:0] SignExtendOut;

	// Instantiate the Unit Under Test (UUT)
	SignExtend SignExtend (
		.In(SignExtendIn), 
		.Out(SignExtendOut)
	);
/*  */
endmodule
