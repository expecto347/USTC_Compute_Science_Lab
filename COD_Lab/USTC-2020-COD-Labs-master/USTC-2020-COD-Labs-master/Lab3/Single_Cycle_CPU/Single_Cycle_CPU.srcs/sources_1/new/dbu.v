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
output [11:0] led
);

wire [31:0] dbu_mem_rf_addr;
wire [31:0] dbu_rf_data;
wire [31:0] dbu_mem_data;
wire [31:0] dbu_pc_in;
wire [31:0] dbu_pc;
wire [31:0] dbu_instr;
wire [31:0] dbu_rf_rd1;
wire [31:0] dbu_rf_rd2;
wire [31:0] dbu_alu_y;
wire [31:0] dbu_mem_rd;
wire [11:0] dbu_status;
wire dbu_run;

reg [31:0] value;

reg [31:0] addr = 4'b0000;
assign dbu_mem_rf_addr = addr;

wire inc_edge;
wire dec_edge;
wire step_edge;
edge_taker #(.N(1)) inc_edge_taker(.clk(clk), .rst(rst), .in(inc), .out(inc_edge));
edge_taker #(.N(1)) dec_edge_taker(.clk(clk), .rst(rst), .in(dec), .out(dec_edge));
edge_taker #(.N(1)) step_edge_taker(.clk(clk), .rst(rst), .in(step), .out(dbu_run));
always @(posedge clk, posedge rst) begin
    if(rst) begin
        addr <= 4'b0000;
    end
    else begin
        if(inc_edge) addr <= addr + 1;
        else if(dec_edge) addr <= addr - 1;
    end
end

cpu_one_circle cpu_one_circle(.clk(clk), .rst(rst), .dbu_run(dbu_run | succ),
                              .dbu_mem_rf_addr(dbu_mem_rf_addr), .dbu_rf_data(dbu_rf_data),
                              .dbu_mem_data(dbu_mem_data), .dbu_pc_in(dbu_pc_in),
                              .dbu_pc(dbu_pc), .dbu_instr(dbu_instr),
                              .dbu_rf_rd1(dbu_rf_rd1), .dbu_rf_rd2(dbu_rf_rd2),
                              .dbu_alu_y(dbu_alu_y), .dbu_mem_rd(dbu_mem_rd),
                              .dbu_status(dbu_status));
                              
assign led = sel == 3'b000 ? dbu_mem_rf_addr : dbu_status;
nixietube nixietube(.clk(clk), .rst(rst), .value(value), .an(an), .seg(seg));

always @(*) begin
    case(sel)
        3'b000: begin
            if(mem_rf) value = dbu_mem_data;
            else value = dbu_rf_data;
        end
        3'b001: value = dbu_pc_in;
        3'b010: value = dbu_pc;
        3'b011: value = dbu_instr;
        3'b100: value = dbu_rf_rd1;
        3'b101: value = dbu_rf_rd2;
        3'b110: value = dbu_alu_y;
        3'b111: value = dbu_mem_rd;
        default: value = 32'h0000_0000;
    endcase
end
    
    
endmodule
