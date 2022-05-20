`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/28 10:32:40
// Design Name: 
// Module Name: cpu_top
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


module cpu_top(
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
output [15:0] led
);

wire [31:0] dbu_mem_rf_addr;
wire [31:0] dbu_rf_data;
wire [31:0] dbu_mem_data;
wire [31:0] dbu_pc;
wire [31:0] dbu_ir;
wire [31:0] dbu_md;
wire [31:0] dbu_a;
wire [31:0] dbu_b;
wire [31:0] dbu_alu_out;
wire [15:0] dbu_status;

wire step_edge;

dbu dbu(.clk(clk), .rst(rst), .sel(sel), .mem_rf(mem_rf), .step(step), .succ(succ), .inc(inc), .dec(dec), .an(an), .seg(seg), .led(led),
                                .dbu_mem_rf_addr(dbu_mem_rf_addr),
                                .dbu_rf_data(dbu_rf_data),
                                .dbu_mem_data(dbu_mem_data),
                                .dbu_pc(dbu_pc),
                                .dbu_ir(dbu_ir),
                                .dbu_md(dbu_md),
                                .dbu_a(dbu_a),
                                .dbu_b(dbu_b),
                                .dbu_alu_out(dbu_alu_out),
                                .dbu_status(dbu_status),
                                .step_edge(step_edge));

cpu_multicycle cpu_multicycle(.clk(succ == 1'b1 ? clk : step_edge),
                                .rst(rst),
                                .dbu_mem_rf_addr(dbu_mem_rf_addr),
                                .dbu_rf_data(dbu_rf_data),
                                .dbu_mem_data(dbu_mem_data),
                                .dbu_pc(dbu_pc),
                                .dbu_ir(dbu_ir),
                                .dbu_md(dbu_md),
                                .dbu_a(dbu_a),
                                .dbu_b(dbu_b),
                                .dbu_alu_out(dbu_alu_out),
                                .dbu_status(dbu_status));
endmodule
