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
	wire PCsrc;
	// Wire
	wire[31:0] Mux_Out;
	wire[31:0] Adder_Out;
	wire[31:0] BranchAdder_Out;
	wire[31:0] LeftShiferOut;
	
	PC PC (clk,rst,Mux_Out,Addr);
	Adder PCAdder (Result,32'd4,Adder_Out);
	Adder BranchAdder (Adder_Out,LeftShiferOut,BranchAdder_Out);
	//TODO 나중에 0을 브랜치 주소로 바꾼다.
	PC_Mux PC_Mux (PCsrc,Adder_Out,BranchAdder_Out,Mux_Out);
	assign BranchAdder_Out=32'd0;
	assign PCsrc = 1'b0;
	//Addr 연결함
	//TODO Result는 브랜치 주소에도 쓰임
/* PC 끝 */

/* 레지스터 시작 */
	wire write;
	wire [4:0] WriteRegister;
	wire [31:0] WriteData;
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;
	
	Registers Reg (.clk(clk),.rst(rst),.write(write), .ReadRegister1(Data[25:21]),
		.ReadRegister2(Data[20:16]), .WriteRegister(WriteRegister), .WriteData(WriteData), 
		.ReadData1(ReadData1), .ReadData2(ReadData2));
	
/* 레지스터 끝 */

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

/* ALUControl 시작 */
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
/* ALUControl 끝 */

/* ControlUnit 시작 */
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
		.OPCode(Data[31:26]), 
		.WriteReg(WriteReg), 
		.MemToReg(MemToReg), 
		.Branch(Branch), 
		.ReadMem(ReadMemSig), 
		.WriteMem(WriteMemSig), 
		.DstReg(DstReg), 
		.ALUSrc(ALUSrc), 
		.ALU_OP(ALU_OP)
	);
/* ControlUnit 끝 */

/* LeftShifer 시작 */
	wire [31:0] SignExtendOut;
	// Outputs
	

	// Instantiate the Unit Under Test (UUT)
	LeftShifter LeftShifer (
		.In(SignExtendOut), 
		.Out(LeftShiferOut)
	);
/* LeftShifer 끝 */

/* SignExtend 시작 */
	SignExtend SignExtend (
		.In(Data[15:0]), 
		.Out(SignExtendOut)
	);
/* SignExtend 끝 */
endmodule
