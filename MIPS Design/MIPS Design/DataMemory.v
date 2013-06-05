module DataMemory(clk,ReadMem,WriteMem,Addr,Data_i,Data,TestPort);

	input clk;
	input ReadMem, WriteMem;
	input[31:0] Addr;
	input[31:0] Data_i;

	output[31:0] Data;
		wire[31:0] Data;

	//For Test
	output[31:0] TestPort;
		reg[31:0] TestPort;
	reg[2:0] cnt;

	integer i;

	reg[31:0] Mem[0:255];

	initial begin
		Mem[50] = 32'd0;
		Mem[51] = 32'd1;
		Mem[52] = 32'd2;
		Mem[53] = 32'd3;
		Mem[54] = 32'd4;
		Mem[55] = 32'd5;
		Mem[56] = 32'd6;
		Mem[57] = 32'd7;
		Mem[58] = 32'd8;
		Mem[59] = 32'd9;
	end

	assign Data = (ReadMem)?(Mem[Addr]):(32'dz);

	always @(posedge clk)
	begin
		if(WriteMem)
			Mem[Addr] = Data_i;
	end

	always @(posedge clk)
	begin
		if(Mem[100]==9)
		begin
			TestPort <= Mem[cnt];
			cnt <= cnt + 3'b001;
		end
		else
			cnt <= 3'b000;
	end

endmodule
