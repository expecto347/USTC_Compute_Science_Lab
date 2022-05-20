`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/08 13:58:59
// Design Name: 
// Module Name: nixietube
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

module nixietube(
    input clk,
    input rst,
    input [31:0] value,
    output reg [7:0] an,
    output reg [7:0] seg
    );
    
    // ·ÖÆµ¼ÆÊýÆ÷
    integer cnt_target_1000HZ = 10000;
    integer cnt_1000HZ;
    reg [3:0] digit;
    
    initial begin
        cnt_target_1000HZ <= 10000;
        cnt_1000HZ <= 0;
    end
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            cnt_target_1000HZ <= 10000;
            cnt_1000HZ <= 0;
            an <= 8'b1111_1110;
            digit <= 4'b0000;
        end
        else begin
            if(cnt_1000HZ >= cnt_target_1000HZ) begin
                cnt_1000HZ <=  0;
                case(an)
                    8'b1111_1110: begin an <= 8'b1111_1101; digit <= value[31:27]; end
                    8'b1111_1101: begin an <= 8'b1111_1011; digit <= value[3:0]; end
                    8'b1111_1011: begin an <= 8'b1111_0111; digit <= value[7:3]; end
                    8'b1111_0111: begin an <= 8'b1110_1111; digit <= value[11:7]; end
                    8'b1110_1111: begin an <= 8'b1101_1111; digit <= value[15:11]; end
                    8'b1101_1111: begin an <= 8'b1011_1111; digit <= value[19:15]; end
                    8'b1011_1111: begin an <= 8'b0111_1111; digit <= value[23:19]; end
                    8'b0111_1111: begin an <= 8'b1111_1110; digit <= value[27:23]; end
                    default: begin an <= 8'b1111_1110; digit <= 4'b0000; end
                endcase
            end
            else begin
                an <= an; digit <= digit;
                cnt_1000HZ <= cnt_1000HZ + 1;
            end
        end
    end
    
    always @(*)
    begin
        case(digit)
            4'b0000: seg = 8'b1100_0000;
            4'b0001: seg = 8'b1111_1001;
            4'b0010: seg = 8'b1010_0100;
            4'b0011: seg = 8'b1011_0000;
            4'b0100: seg = 8'b1001_1001;
            4'b0101: seg = 8'b1001_0010;
            4'b0110: seg = 8'b1000_0010;
            4'b0111: seg = 8'b1111_1000;
            4'b1000: seg = 8'b1000_0000;
            4'b1001: seg = 8'b1001_0000;
            4'b1010: seg = 8'b1000_1000;
            4'b1011: seg = 8'b1000_0011;
            4'b1100: seg = 8'b1010_0111;
            4'b1101: seg = 8'b1010_0001;
            4'b1110: seg = 8'b1000_0110;
            4'b1111: seg = 8'b1000_1110;
            default: seg = 8'h00;
        endcase
    end
endmodule