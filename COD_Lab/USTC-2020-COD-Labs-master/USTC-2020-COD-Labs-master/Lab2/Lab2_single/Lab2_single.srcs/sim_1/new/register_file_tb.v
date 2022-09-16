`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/30 00:27:16
// Design Name: 
// Module Name: register_file_tb
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


module register_file_tb
    #(
    parameter WIDTH = 32,   // ���ݿ��
    parameter ADDR_WIDTH = 5, // ��ַ����
    parameter SIZE = {1'b1, {(ADDR_WIDTH){1'b0}}} // ��ַ����
    )
    (

    );
    
    reg clk;    // ʱ��(��������Ч)
    reg [ADDR_WIDTH-1: 0] ra0;   // ���˿�0��ַ
    wire [WIDTH-1: 0] rd0;    //���˿�0����
    reg [ADDR_WIDTH-1: 0] ra1;   // ���˿�1��ַ
    wire [WIDTH-1: 0] rd1;    //���˿�1����
    reg [ADDR_WIDTH-1: 0] wa;  // д�˿�λ��
    reg we;   // дʹ��(�ߵ�ƽ��Ч)
    reg [WIDTH-1: 0] wd;   // д�˿�����
    
    register_file rf(clk, ra0, rd0, ra1, rd1, wa, we, wd);
    
    initial
    begin
        ra0 = 5'b10110;
        ra1 = 5'b11001;
        
        clk = 0;
        we = 1;
        wa = 5'b10110; 
        wd = 32'hf468_fab1;
        #5 clk = ~clk;
        
        #5 clk = ~clk;
        we = 1;
        wa = 5'b11001; 
        wd = 32'h1686_abed;
        #5 clk = ~clk;
        
        #5 clk = ~clk;
        
        $finish;
    end
    
endmodule
