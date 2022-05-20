`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/07 22:36:43
// Design Name: 
// Module Name: register_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module register_file(
    input clk,    // ʱ��(��������Ч)
    input rst,  // ����ȫ����0
    input [4: 0] ra1,   // ���˿�1��ַ
    output [31: 0] rd1,    // ���˿�1����
    input [4: 0] ra2,   // ���˿�2��ַ
    output [31: 0] rd2,    // ���˿�2����
    input [4: 0] dbu_ra,   // dbu���˿ڵ�ַ
    output [31: 0] dbu_rd,    // dbu���˿�����
    input [4: 0] wa,  // д�˿�λ��
    input we,   // дʹ��(�ߵ�ƽ��Ч)
    input [31: 0] wd   // д�˿�����
    );
    
    integer i;
    reg [31: 0] registers[31: 0];
    
    assign rd1 = ra1 == 5'b00000 ? 32'h0000_0000 : registers[ra1];
    assign rd2 = ra2 == 5'b00000 ? 32'h0000_0000 : registers[ra2];
    assign dbu_rd = dbu_ra == 5'b00000 ? 32'h0000_0000 : registers[dbu_ra];
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            for(i = 0; i < 32; i = i + 1) begin
                registers[i] <= 32'h0000_0000;
            end
        end
        else if(we) begin
            if(wa != 5'b00000) begin
                registers[wa] <= wd;
            end
        end
    end
    
endmodule