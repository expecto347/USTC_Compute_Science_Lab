`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 13:50:33
// Design Name: 
// Module Name: dbu
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


module dbu(
input clk,  // 时钟, 上升沿有效
input rst,   // 异步复位, 高电平有效
input [2:0] sel,
input  mem_rf,
input step,
input succ,
input inc,
input dec,
output [7:0] an,
output [7:0] seg,
output [15:0] led,
output [31:0] dbu_mem_rf_addr,   // DBU选择地址
input [31:0] dbu_rf_data,      // DBU选择地址的寄存器堆数据
input [31:0] dbu_mem_data,     // DBU选择地址的存储器数据
input [31:0] dbu_pc,           // PC
input [31:0] dbu_ir,           // IR
input [31:0] dbu_md,           // MD, 存储器中读出数据寄存器
input [31:0] dbu_a,            // A
input [31:0] dbu_b,            // B
input [31:0] dbu_alu_out,      // ALUOut
input [15:0] dbu_status,
output step_edge
);

reg [31:0] value;

reg [31:0] addr = 32'h0000_0000;
assign dbu_mem_rf_addr = addr;

wire inc_edge;
wire dec_edge;
//wire step_edge;
edge_taker #(.N(1)) inc_edge_taker(.clk(clk), .rst(rst), .in(inc), .out(inc_edge));
edge_taker #(.N(1)) dec_edge_taker(.clk(clk), .rst(rst), .in(dec), .out(dec_edge));
edge_taker #(.N(1)) step_edge_taker(.clk(clk), .rst(rst), .in(step), .out(step_edge));
always @(posedge clk, posedge rst) begin
    if(rst) begin
        addr <= 32'h0000_0000;
    end
    else begin
        if(inc_edge) addr <= addr + 1;
        else if(dec_edge) addr <= addr - 1;
    end
end

// LED显示
assign led = sel == 3'b000 ? dbu_mem_rf_addr : dbu_status;

// 数码管
nixietube nixietube(.clk(clk), .rst(rst), .value(value), .an(an), .seg(seg));
always @(*) begin
    case(sel)
        3'b000: begin
            if(mem_rf) value = dbu_mem_data;
            else value = dbu_rf_data;
        end
        3'b001: value = dbu_pc;
        3'b010: value = dbu_ir;
        3'b011: value = dbu_mem_data;
        3'b100: value = dbu_a;
        3'b101: value = dbu_b;
        3'b110: value = dbu_alu_out;
        default: value = 32'h0000_0000;
    endcase
end
    
    
endmodule
