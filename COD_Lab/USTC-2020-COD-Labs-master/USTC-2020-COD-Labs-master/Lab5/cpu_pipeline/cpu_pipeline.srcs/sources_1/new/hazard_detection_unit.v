`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/30 16:40:10
// Design Name: 
// Module Name: hazard_detection_unit
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


module hazard_detection_unit
(
input mem_read,
input [31:0] IF_ID_IR,
input [31:0] ID_EX_IR,
output reg pc_we,
output reg stall
);

always @(*) begin
    if(mem_read == 1'b1 
        && (ID_EX_IR[20:16] == IF_ID_IR[25:21] 
            || ID_EX_IR[20:16] == IF_ID_IR[20:16])) begin
        pc_we = 1'b0;
        stall = 1'b1;
    end
    else begin
        pc_we = 1'b1;
        stall = 1'b0;
    end
end    
    
endmodule
