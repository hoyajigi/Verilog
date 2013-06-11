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
 	reg PCsrc;
	always @(negedge rst)
	begin
		PCsrc = 1'b0;
	end
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

	// Wire
	wire[31:0] Mux_Out;
	wire[31:0] Adder_Out;
	wire[31:0] BranchAdder_Out;
	wire[31:0] LeftShiferOut;
	wire clk,rst;
	PC PC (clk,rst,Mux_Out,Addr);
	Adder PCAdder (Addr,32'd4,Adder_Out);
	Adder BranchAdder (Adder_Out,LeftShiferOut,BranchAdder_Out);
	//TODO 나중에 0을 브랜치 주소로 바꾼다.
	PC_Mux PC_Mux (PCsrc,Adder_Out,BranchAdder_Out,Mux_Out);
//	assign BranchAdder_Out=32'd0;
//	assign PCsrc = 1'b0;
	//Addr 연결함
	//TODO Result는 브랜치 주소에도 쓰임
/* PC 끝 */


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

/* 빠이쁘라이닝을 위한 거시기들 시작 */
	//WB1
	reg WriteReg1;
	reg MemToReg1;
	//WB2
	reg WriteReg2;
	reg MemToReg2;
	//WB3
	reg WriteReg3;
	reg MemToReg3;
	//MEM1
	reg Branch1;
	reg ReadMemSig1;
	reg WriteMemSig1;
	//MEM2
	reg Branch2;
	reg ReadMemSig2;
	reg WriteMemSig2;
	//EX1
	reg DstReg1;
	reg ALUSrc1;
	reg[1:0] ALU_OP1;
	
	//일단 무조건 할당
	always @(posedge clk)
	begin
		WriteReg1=WriteReg;
		WriteReg2=WriteReg1;
		WriteReg3=WriteReg2;
	
		MemToReg1=MemToReg;
		MemToReg2=MemToReg1;
		MemToReg3=MemToReg2;

		Branch1=Branch;
		Branch2=Branch1;

		ReadMemSig1=ReadMemSig;
		ReadMemSig2=ReadMemSig1;

		WriteMemSig1=WriteMemSig;
		WriteMemSig2=WriteMemSig1;

		DstReg1=DstReg;
		ALUSrc1=ALUSrc;
		ALU_OP1=ALU_OP;
	end
/* 빠이쁘라이닝을 위한 거시기들 끝 */
	wire [4:0] WriteRegister;
	wire [31:0] ReadData2;
	wire [31:0] In2;
	wire [31:0] SignExtendOut;
	wire [31:0] Out;
	wire [31:0] Data2;
	wire [31:0] WriteData;
	PC_Mux Dst_Mux(DstReg1,Data[20:16],Data[15:11],WriteRegister);
	PC_Mux ALU_Mux(ALUSrc1,ReadData2,SignExtendOut,In2);
	PC_Mux M2R_Mux(MemToReg3,Out,Data2,WriteData);
	and Branch_AND(PCSrc,Branch2,Out[1:0]);
/* 레지스터 시작 */
	wire [31:0] ReadData1;
	
	Registers Reg (.clk(clk),.rst(rst),.write(WriteReg3), .ReadRegister1(Data[25:21]),
		.ReadRegister2(Data[20:16]), .WriteRegister(WriteRegister), .WriteData(WriteData), 
		.ReadData1(ReadData1), .ReadData2(ReadData2));
	
/* 레지스터 끝 */

/* 데이터 메모리 시작 */
	wire [31:0] TestPort;
	
	DataMemory DMem (
		.clk(clk), 
		.ReadMem(ReadMemSig2), 
		.WriteMem(WriteMemSig2), 
		.Addr(Out), 
		.Data_i(ReadData2), 
		.Data(Data2), 
		.TestPort(TestPort)
	);
/* 데이터 메모리 끝 */

/* ALU 시작 */
	wire [2:0] Control;
	ALU ALU (.In1(ReadData1),.In2(In2),.ControlSignal(Control), .Out(Out));
/* ALU 끝 */

	ALUControl ALUControl (.In(SignExtendOut[5:0]), .ALU_OP(ALU_OP1), .Control(Control));
	LeftShifter LeftShifer(.In(SignExtendOut), .Out(LeftShiferOut));
	SignExtend SignExtend (.In(Data[15:0]), .Out(SignExtendOut));
endmodule
