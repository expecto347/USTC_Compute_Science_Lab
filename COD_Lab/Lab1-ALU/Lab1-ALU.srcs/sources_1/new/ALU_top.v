`timescale 1ns / 1ps

module top_module(
input clk,
input  en,
input  [1:0]sel,
input  [5:0] x,		
output reg [5:0] y, 	
output reg z 
    );
    
    reg [5:0] ea,eb;
    reg [2:0] ef;
    reg [31:0] a,b;
    reg [2:0] c;
    wire [5:0] y_1;
    wire z_1;
    
    always@(posedge clk)
        begin
            if(en)
                begin
                    case(sel)
                        2'b00: begin
                        ea<=1;eb<=0;ef<=0;
                        end
                        2'b01: begin
                        ea<=0;eb<=1;ef<=0;
                        end
                        2'b10: begin
                        ea<=0;eb<=0;ef<=1;
                        end
                        default:
                            begin
                                ea<=0;eb<=0;ef<=0;
                            end
                    endcase
                end
            else begin
            ea<=0;eb<=0;ef<=0;
            end
         end
         
  always@(posedge clk)
    begin
        if (ef)
            c<=x[2:0];
    end  
  always@(posedge clk)
    begin
        if (ea)
            a[5:0]<=x;
    end
  always@(posedge clk)
    begin
        if (eb)
            b[5:0]<=x;
    end
    alu32 alu32(a,b,c,y_1,z_1);
    always@(posedge clk)
        begin
            if (1)
                z<=z_1;
        end
    
    always@(posedge clk)
        begin
            if (1)
                y[5:0]<={y_1[5:0]};
        end
endmodule