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

/*
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
    
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            cnt_target_1000HZ <= 10000;
            cnt_1000HZ <= 0;
            an <= 8'b1111_1111;
            digit <= 4'b0000;
        end
        else begin
            if(cnt_1000HZ == cnt_target_1000HZ) begin
                cnt_1000HZ <=  0;
                case(an)
                    8'b1111_1110: begin an <= 8'b1111_1101; digit <= value[3:0]; end
                    8'b1111_1101: begin an <= 8'b1111_1011; digit <= value[7:3]; end
                    8'b1111_1011: begin an <= 8'b1111_0111; digit <= value[11:7]; end
                    8'b1111_0111: begin an <= 8'b1110_1111; digit <= value[15:11]; end
                    8'b1110_1111: begin an <= 8'b1101_1111; digit <= value[19:15]; end
                    8'b1101_1111: begin an <= 8'b1011_1111; digit <= value[23:19]; end
                    8'b1011_1111: begin an <= 8'b0111_1111; digit <= value[27:23]; end
                    8'b0111_1111: begin an <= 8'b1111_1110; digit <= value[31:27]; end
                    default: begin an <= 8'b1111_1111; digit = 4'b0000; end
                endcase
            end
            else begin
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
*/
module MUXNUM(SW,SEG);
input [3:0]SW;
output reg [7:0]SEG;

always@(*) case(SW)
    16'h0:
      SEG = 8'b1100_0000;
    16'h1:
      SEG = 8'b1111_1001;
    16'h2:
      SEG = 8'b1010_0100;
    16'h3:
      SEG = 8'b1011_0000;
    16'h4:
      SEG = 8'b1001_1001;
    16'h5:
      SEG = 8'b1001_0010;
    16'h6:
      SEG = 8'b1000_0010;
    16'h7:
      SEG = 8'b1111_1000;
    16'h8:
      SEG = 8'b1000_0000;
    16'h9:
      SEG = 8'b1001_0000;
    16'ha:
      SEG = 8'b1000_1000;
    16'hb:
      SEG = 8'b1000_0011;
    16'hc:
      SEG = 8'b1100_0110;
    16'hd:
      SEG = 8'b1010_0001;
    16'he:
      SEG = 8'b1000_0110;
    16'hf:
      SEG = 8'b1000_1110;
    default SEG=8'b1111_1111;
  endcase
endmodule

  module refresh(clk,seg_bus,outan,sw);
input clk;
input [31:0]seg_bus;
output reg [7:0]outan;
output reg [3:0]sw;
reg [2:0]state;
reg [14:0]counter;
reg clk_122hz;

always @(posedge clk)
  begin
    counter <= counter + 1'b1;
    clk_122hz <= counter[14];
  end
always @(posedge clk_122hz)
  begin
      state <= state + 1;
  end
always @(*)
  begin
    case(state)
      3'b000:
        begin
          outan = 8'b11111110;
          sw = seg_bus[3:0];
        end
      3'b001:
        begin
          outan = 8'b11111101;
          sw = seg_bus[7:4];
        end
      3'b010:
        begin
          outan = 8'b11111011;
          sw = seg_bus[11:8];
        end
      3'b011:
        begin
          outan = 8'b11110111;
          sw = seg_bus[15:12];
        end
      3'b100:
        begin
          outan = 8'b11101111;
          sw = seg_bus[19:16];
        end
      3'b101:
        begin
          outan = 8'b11011111;
          sw = seg_bus[23:20];
        end
      3'b110:
        begin
          outan = 8'b10111111;
          sw = seg_bus[27:24];
        end
      3'b111:
        begin
          outan = 8'b01111111;
          sw = seg_bus[31:28];
        end
      default:
        outan = 8'b11111111;
    endcase
  end
endmodule



module seven_segment(CLK,Segment_signal,EN,AN,SEG);
input CLK;
input [31:0]Segment_signal;
input [7:0]EN;
output [7:0]AN;
output [7:0]SEG;
wire [7:0]an_1;
wire [3:0]code;

assign AN = an_1 | ~EN;
refresh regresh(CLK,Segment_signal,an_1,code);
MUXNUM mux(code,SEG);
endmodule
