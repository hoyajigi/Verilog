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

	// Inputs
//	reg clk;
//	reg rst;
	reg write;
	reg [4:0] ReadRegister1;
	reg [4:0] ReadRegister2;
	reg [4:0] WriteRegister;
	reg [31:0] WriteData;

	// Outputs
	wire [31:0] ReadData1;
	wire [31:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	Registers Reguut (
		.clk(clk),
		.rst(rst),
		.write(write), 
		.ReadRegister1(ReadRegister1), 
		.ReadRegister2(ReadRegister2), 
		.WriteRegister(WriteRegister), 
		.WriteData(WriteData), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);
	
	
	
	// Inputs
	reg [31:0] Addr;

	// Outputs
	wire [31:0] Data;

	// Instantiate the Unit Under Test (UUT)
	InstructionMemory IMuut (
		.Addr(Addr), 
		.Data(Data)
	);


// Inputs
//	reg clk;
	reg ReadMem;
	reg WriteMem;
	reg [31:0] DataAddr;
	reg [31:0] Data_i;

	// Outputs
	wire [31:0] Data2;
	wire [31:0] TestPort;

	// Instantiate the Unit Under Test (UUT)
	DataMemory DMuut (
		.clk(clk), 
		.ReadMem(ReadMem), 
		.WriteMem(WriteMem), 
		.DataAddr(DataAddr), 
		.Data_i(Data_i), 
		.Data2(Data2), 
		.TestPort(TestPort)
	);

endmodule
