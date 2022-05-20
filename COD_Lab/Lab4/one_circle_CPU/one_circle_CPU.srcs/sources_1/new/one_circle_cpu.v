`timescale 1ns / 1ps

module  cpu (
    input clk, 
    input reset,

  //IO_BUS
    output [7:0] io_addr,      //led和seg的地址
    output [31:0] io_dout,      //输出led和seg的数据
    output io_we,              //输出led和seg数据时的使能信号
    input [31:0] io_din,       //来自sw的输入数据

  //Debug_BUS
    input [7:0] m_rf_addr,     //存储器(MEM)或寄存器堆(RF)的调试读口地址
    output [31:0] rf_data,     //从RF读取的数据
    output [31:0] m_data,      //从MEM读取的数据
    output [31:0] pc_1         //PC的内容
);

wire [31:0] curPC;
wire [31:0] nextPC;
wire [31:0] PC_plus4; 
wire [7:0] PC_ins; 
wire [31:0] PC_Imm; //各种各样的PC地址

wire [7:0] op;
wire [2:0] funct3;
wire [6:0] funct7;
wire [4:0] Reg_ReadDataAddr1;
wire [4:0] Reg_ReadDataAddr2;
wire [4:0] Reg_WriteDataAddr;
wire [31:0] imm;
wire [31:0] instr; //获取到的32位指令

wire [31:0] Reg_ReadData1;
wire [31:0] Reg_ReadData2;
wire [31:0] Reg_WriteData; //寄存器模块读写数据

wire RegWrite; //寄存器写入控制信号
wire MemWrite; //存储器写入使能信号

wire [2:0] ExtSel;
wire [31:0] extend_imm; //输出的扩展后的立即数
wire sign; //是否是有符号数扩展控制信号

wire ALUSrc;
wire [2:0] AluOp;
wire Zero;
wire [31:0] AluOutput; //ALU模块的输出

wire [31:0] Mem_DataOut;
wire [31:0] Mem_DataOut_1; //数据存储器

wire [1:0] RegScr;
wire jal;
wire jalr;
wire branch;

wire [4:0] Reg_ReadDataAddr3;
wire IoWrite;

assign Reg_ReadDataAddr3 = m_rf_addr[4:0];
assign pc_1 = curPC;
assign io_addr = AluOutput[7:0];
assign io_dout = Reg_ReadData2;
assign IoWrite = AluOutput[10];
assign io_we = IoWrite & MemWrite;

PC pc(
    .clk(clk),
    .reset(reset),
    .jal(jal),
    .jalr(jalr),
    .branch(branch),
    .Z(Zero),
    .imm(extend_imm),
    .Reg_ReadData1(Reg_ReadData1),
    .curPC(curPC),
    .nextPC(nextPC),
    .PC_plus4(PC_plus4),
    .PC_ins(PC_ins)
);

ROM_Instruction ins(
  .a(PC_ins),
  .spo(instr)
);

InsMEM InsMem(
    .op(op),
    .funct3(funct3),
    .funct7(funct7),
    .rs1(Reg_ReadDataAddr1),
    .rs2(Reg_ReadDataAddr2),
    .rd(Reg_WriteDataAddr),
    .imm(imm),
    .instr(instr)
);

ControlUnit controlunit(
    .op(op),
    .funct3(funct3),
    .funct7(funct7),
    .jal(jal),
    .branch(branch),
    .AluOp(AluOp),
    .AluSrc(ALUSrc),
    .RegScr(RegScr),
    .RegWrite(RegWrite),
    .ImmGen(ExtSel),
    .Sign(sign),
    .MemWrite(MemWrite),
    .jalr(jalr)
);

register_file register_file(
    .clk(clk),
    .ra0(Reg_ReadDataAddr1),
    .ra1(Reg_ReadDataAddr2),
    .ra2(Reg_ReadDataAddr3),
    .wa(Reg_WriteDataAddr),
    .rd0(Reg_ReadData1),
    .rd1(Reg_ReadData2),
    .rd2(rf_data),
    .wd(Reg_WriteData),
    .RegWrite(RegWrite)
);

Extend extend(
    .imm(imm),
    .Sign(sign),
    .ExtSel(ExtSel),
    .extend(extend_imm)
);

ALU alu(
    .ALUSrc(ALUSrc),
    .ReadData1(Reg_ReadData1),
    .ReadData2(Reg_ReadData2),
    .extend(extend_imm),
    .AluOp(AluOp),
    .Z(Zero),
    .AluOutput(AluOutput)
);

DataMEM datamem(
    .MemWrite(MemWrite),
    .IoWrite(IoWrite),
    .clk(clk),
    .Mem_DataAddr1(AluOutput),
    .Mem_DataAddr2(m_rf_addr),
    .Mem_DataIn(Reg_ReadData2),
    .Mem_DataOut1(Mem_DataOut_1),
    .Mem_DataOut2(m_data)
);

assign Mem_DataOut = IoWrite ? io_din : Mem_DataOut_1;

assign PC_Imm = curPC + extend_imm;

MUX_reg_input mux(
    .RegScr(RegScr),
    .AluOutput(AluOutput),
    .Mem_ReadData(Mem_DataOut),
    .PC_plus4(PC_plus4),
    .Reg_WriteData(Reg_WriteData),
    .PC_Imm(PC_Imm)
);
endmodule