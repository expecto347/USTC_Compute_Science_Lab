`timescale 1ns / 1ps

module  cpu (
    input clk, 
    input reset,

  //IO_BUS
    output [7:0] io_addr,      //led��seg�ĵ�ַ
    output [31:0] io_dout,      //���led��seg������
    output io_we,              //���led��seg����ʱ��ʹ���ź�
    input [31:0] io_din,       //����sw����������

  //Debug_BUS
    input [7:0] m_rf_addr,     //�洢��(MEM)��Ĵ�����(RF)�ĵ��Զ��ڵ�ַ
    output [31:0] rf_data,     //��RF��ȡ������
    output [31:0] m_data,      //��MEM��ȡ������
    output [31:0] pc_1         //PC������
);

wire [31:0] curPC;
wire [31:0] nextPC;
wire [31:0] PC_plus4; 
wire [7:0] PC_ins; 
wire [31:0] PC_Imm; //���ָ�����PC��ַ

wire [7:0] op;
wire [2:0] funct3;
wire [6:0] funct7;
wire [4:0] Reg_ReadDataAddr1;
wire [4:0] Reg_ReadDataAddr2;
wire [4:0] Reg_WriteDataAddr;
wire [31:0] imm;
wire [31:0] instr; //��ȡ����32λָ��

wire [31:0] Reg_ReadData1;
wire [31:0] Reg_ReadData2;
wire [31:0] Reg_WriteData; //�Ĵ���ģ���д����

wire RegWrite; //�Ĵ���д������ź�
wire MemWrite; //�洢��д��ʹ���ź�

wire [2:0] ExtSel;
wire [31:0] extend_imm; //�������չ���������
wire sign; //�Ƿ����з�������չ�����ź�

wire ALUSrc;
wire [2:0] AluOp;
wire Zero;
wire [31:0] AluOutput; //ALUģ������

wire [31:0] Mem_DataOut;
wire [31:0] Mem_DataOut_1; //���ݴ洢��

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