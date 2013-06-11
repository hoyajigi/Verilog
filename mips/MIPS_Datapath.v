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

/* ��ɾ�� ��ɾ� �޸𸮿��� �����ϱ� ��ɾ� �޸𸮺��� �����غ��� */
/* ��ɾ� �޸� ���� */
	// Inputs
	wire [31:0] Addr;

	// Outputs
	wire [31:0] Data;

	InstructionMemory IMem (
		.Addr(Addr), 
		.Data(Data)
	);

/* ��ɾ� �޸� �� */
/* PC ���� */
	wire PCsrc;
	// Wire
	wire[31:0] Mux_Out;
	wire[31:0] Adder_Out;
	wire[31:0] BranchAdder_Out;
	wire[31:0] LeftShiferOut;
	
	PC PC (clk,rst,Mux_Out,Addr);
	Adder PCAdder (Result,32'd4,Adder_Out);
	Adder BranchAdder (Adder_Out,LeftShiferOut,BranchAdder_Out);
	//TODO ���߿� 0�� �귣ġ �ּҷ� �ٲ۴�.
	PC_Mux PC_Mux (PCsrc,Adder_Out,BranchAdder_Out,Mux_Out);
	assign BranchAdder_Out=32'd0;
	assign PCsrc = 1'b0;
	//Addr ������
	//TODO Result�� �귣ġ �ּҿ��� ����
/* PC �� */

/* �������� ���� */
	wire write;
	wire [4:0] WriteRegister;
	wire [31:0] WriteData;
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;
	
	Registers Reg (.clk(clk),.rst(rst),.write(write), .ReadRegister1(Data[25:21]),
		.ReadRegister2(Data[20:16]), .WriteRegister(WriteRegister), .WriteData(WriteData), 
		.ReadData1(ReadData1), .ReadData2(ReadData2));
	
/* �������� �� */

/* ������ �޸� ���� */
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
/* ������ �޸� �� */

/* ALU ���� */
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
/* ALU �� */

/* ALUControl ���� */
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
/* ALUControl �� */

/* ControlUnit ���� */
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
/* ControlUnit �� */

/* LeftShifer ���� */
	wire [31:0] SignExtendOut;
	// Outputs
	

	// Instantiate the Unit Under Test (UUT)
	LeftShifter LeftShifer (
		.In(SignExtendOut), 
		.Out(LeftShiferOut)
	);
/* LeftShifer �� */

/* SignExtend ���� */
	SignExtend SignExtend (
		.In(Data[15:0]), 
		.Out(SignExtendOut)
	);
/* SignExtend �� */
endmodule
