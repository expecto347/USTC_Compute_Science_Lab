`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/31 20:11:11
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


module dbu
(
input clk,
input rst,
input [2:0] sel0,
input [1:0] sel1,
input  mem_rf,
input step,
input succ,
input inc,
input dec,
output [7:0] an,
output [7:0] seg
);

reg [31:0] DBU_mem_rf_addr;   // DBU选择地址
wire [31:0] DBU_rf_data;      // DBU选择地址的寄存器堆数据
wire [31:0] DBU_mem_data;     // DBU选择地址的存储器数据
wire [31:0] DBU_PC;           // PC
wire [31:0] DBU_IF_ID_IR;
wire [31:0] DBU_IF_ID_NPC;
wire [31:0] DBU_ID_EX_A;
wire [31:0] DBU_ID_EX_B;
wire [31:0] DBU_ID_EX_IMM;      
wire [31:0] DBU_ID_EX_IR;
wire [31:0] DBU_EX_MEM_Y;
wire [31:0] DBU_EX_MEM_B;
wire [4:0] DBU_EX_MEM_WA;
wire [31:0] DBU_MEM_WB_MDR;
wire [31:0] DBU_MEM_WB_Y;
wire [4:0] DBU_MEM_WB_WA;

cpu_pipeline
    cpu_pipeline(.clk(clk),
                 .rst(rst),
                 .DBU_mem_rf_addr(DBU_mem_rf_addr),
                 .DBU_rf_data(DBU_rf_data),
                 .DBU_mem_data(DBU_mem_data),
                 .DBU_PC(DBU_PC),
                 .DBU_IF_ID_IR(DBU_IF_ID_IR),
                 .DBU_IF_ID_NPC(DBU_IF_ID_NPC),
                 .DBU_ID_EX_A(DBU_ID_EX_A),
                 .DBU_ID_EX_B(DBU_ID_EX_B),
                 .DBU_ID_EX_IMM(DBU_ID_EX_IMM),
                 .DBU_ID_EX_IR(DBU_ID_EX_IR),
                 .DBU_EX_MEM_Y(DBU_EX_MEM_Y),
                 .DBU_EX_MEM_B(DBU_EX_MEM_B),
                 .DBU_EX_MEM_WA(DBU_EX_MEM_WA),
                 .DBU_MEM_WB_MDR(DBU_MEM_WB_MDR),
                 .DBU_MEM_WB_Y(DBU_MEM_WB_Y),
                 .DBU_MEM_WB_WA(DBU_MEM_WB_WA));


wire inc_edge;
wire dec_edge;
wire step_edge;
edge_taker #(.N(1)) inc_edge_taker(.clk(clk), .rst(rst), .in(inc), .out(inc_edge));
edge_taker #(.N(1)) dec_edge_taker(.clk(clk), .rst(rst), .in(dec), .out(dec_edge));
edge_taker #(.N(1)) step_edge_taker(.clk(clk), .rst(rst), .in(step), .out(step_edge));

always @(posedge clk, posedge rst) begin
    if(rst) begin
        DBU_mem_rf_addr <= 32'h0000_0000;
    end
    else begin
        if(inc_edge) DBU_mem_rf_addr <= DBU_mem_rf_addr + 1;
        else if(dec_edge) DBU_mem_rf_addr <= DBU_mem_rf_addr - 1;
    end
end

// nixietube
reg [31:0] value;
nixietube nixietube(.clk(clk), .rst(rst), .value(value), .an(an), .seg(seg));
always @(*) begin
    case(sel0)
        3'b000: begin
            if(mem_rf) value = DBU_mem_data;
            else value = DBU_rf_data;
        end
        3'b001: value = DBU_PC;
        3'b010: begin
            case(sel1)
                2'b00: value = DBU_IF_ID_NPC;
                2'b01: value = DBU_IF_ID_IR;
                default: value = 32'h0000_0000;
            endcase
        end
        3'b011: begin
            case(sel1)
                2'b00: value = DBU_ID_EX_A;
                2'b01: value = DBU_ID_EX_B;
                2'b10: value = DBU_ID_EX_IMM;
                2'b11: value = DBU_ID_EX_IR;
                default: value = 32'h0000_0000;
            endcase
        end
        3'b100: begin
            case(sel1)
                2'b00: value = DBU_EX_MEM_Y;
                2'b01: value = DBU_EX_MEM_B;
                2'b10: value = DBU_EX_MEM_WA;
                default: value = 32'h0000_0000;
            endcase
        end
        3'b101: begin
            case(sel1)
                2'b00: value = DBU_MEM_WB_MDR;
                2'b01: value = DBU_MEM_WB_Y;
                2'b10: value = DBU_MEM_WB_WA;
                default: value = 32'h0000_0000;
            endcase
        end
        default: value = 32'h0000_0000;
    endcase
end

endmodule
