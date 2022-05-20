`timescale 1ns / 1ps
//选择寄存器写入的信号
module MUX_reg_input(
    input [1:0]RegScr,
    input [31:0]AluOutput,
    input [31:0]Mem_ReadData,
    input [31:0]PC_plus4,
    input [31:0]PC_Imm,
    output reg[31:0] Reg_WriteData
);

always@(*)
begin
    case(RegScr)
        2'b00: Reg_WriteData = AluOutput;
        2'b01: Reg_WriteData = Mem_ReadData;
        2'b10: Reg_WriteData = PC_plus4;
        2'b11: Reg_WriteData = PC_Imm;
        default: Reg_WriteData = 0;
    endcase
end
endmodule