`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 00:12:09
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


module register_file
    #(
    parameter WIDTH = 32,   // ���ݿ��
    parameter ADDR_WIDTH = 5, // ��ַ����
    parameter SIZE = {1'b1, {(ADDR_WIDTH){1'b0}}} // ��ַ����
    )
    (
    input clk,    // ʱ��(��������Ч)
    input [ADDR_WIDTH-1: 0] ra0,   // ���˿�0��ַ
    output [WIDTH-1: 0] rd0,    //���˿�0����
    input [ADDR_WIDTH-1: 0] ra1,   // ���˿�1��ַ
    output [WIDTH-1: 0] rd1,    //���˿�1����
    input [ADDR_WIDTH-1: 0] wa,  // д�˿�λ��
    input we,   // дʹ��(�ߵ�ƽ��Ч)
    input [WIDTH-1: 0] wd   // д�˿�����
    );
    
    reg [WIDTH-1: 0] registers[SIZE-1: 0];
    
    assign rd0 = ra0 == {ADDR_WIDTH{1'b0}} ? {WIDTH{1'b0}} : registers[ra0];
    assign rd1 = ra1 == {ADDR_WIDTH{1'b0}} ? {WIDTH{1'b0}} : registers[ra1];
    
    always @(posedge clk) begin
        if(we) begin
            if(wa != {ADDR_WIDTH{1'b0}}) begin
                registers[wa] <= wd;
            end
        end
    end
    
endmodule
