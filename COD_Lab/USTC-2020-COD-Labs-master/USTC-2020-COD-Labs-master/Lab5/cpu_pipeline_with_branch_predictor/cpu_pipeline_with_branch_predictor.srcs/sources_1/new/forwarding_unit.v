`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 12:06:06
// Design Name: 
// Module Name: forwarding_unit
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


module forwarding_unit
(
// EX段 ALU操作数源的转发
input [4:0] MEM_WB_WA,
input [4:0] EX_MEM_WA,
input [4:0] ID_EX_rs,
input [4:0] ID_EX_rt,
input MEM_WB_reg_write,
input EX_MEM_reg_write,
input alu_src,
output reg [1:0] alu_a_src,
output reg [1:0] alu_b_src,
output reg [1:0] write_data_src
);

always @(*) begin
    // alu_a_src
    if(EX_MEM_WA == ID_EX_rs && EX_MEM_reg_write == 1'b1 && EX_MEM_WA != 5'b00000) begin
        alu_a_src = 2'b11;
    end
    else if(MEM_WB_WA == ID_EX_rs && MEM_WB_reg_write == 1'b1 && MEM_WB_WA != 5'b00000) begin
        alu_a_src = 2'b10;
    end
    else begin
        alu_a_src = 2'b00;
    end
    
    // alu_b_src
    if(alu_src == 1'b1) begin
        alu_b_src = 2'b01;
    end
    else if(EX_MEM_WA == ID_EX_rt && EX_MEM_reg_write == 1'b1 && EX_MEM_WA != 5'b00000) begin
        alu_b_src = 2'b11;
    end
    else if(MEM_WB_WA == ID_EX_rt && MEM_WB_reg_write == 1'b1 && MEM_WB_WA != 5'b00000) begin
        alu_b_src = 2'b10;
    end
    else begin
        alu_b_src = 2'b00;
    end
    
    // write_data_src
    if(EX_MEM_WA == ID_EX_rt && EX_MEM_reg_write == 1'b1 && EX_MEM_WA != 5'b00000) begin
        write_data_src = 2'b11;
    end
    else if(MEM_WB_WA == ID_EX_rt && MEM_WB_reg_write == 1'b1 && MEM_WB_WA != 5'b00000) begin
        write_data_src = 2'b10;
    end
    else begin
        write_data_src = 2'b00;
    end
    
end

endmodule
