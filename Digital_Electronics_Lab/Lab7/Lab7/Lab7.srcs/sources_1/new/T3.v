`timescale 1ns / 1ps

module T3(
input clk, rst,
output reg [2:0]an,
output reg [3:0]data);

reg [31:0] cnt1;
reg [31:0] cnt2;
reg [3:0] data1;
reg [3:0] data2;
reg [3:0] data3;
reg [3:0] data4;
always@(posedge clk)
begin
    if (cnt1 >= (2000000 / 8)) //400Hz
        cnt1 <= 0;
    else
        cnt1 <= cnt1 + 1;
end

always@(posedge clk)
begin
    if (cnt2 >= (10000000)) //10Hz
        cnt2 <= 0;
    else
        cnt2 <= cnt2 + 1;
end

always@(posedge clk)
begin
    if(cnt1 == 0)
    begin
        if(an == 3'b011)
            an <= 3'b000;
        else
            an <= an + 3'b001;
    end
end

always@(posedge clk)
begin
    if(an == 3'b000)
        data <= data1;
    else if(an == 3'b001)
        data <= data2;
    else if(an == 3'b010)
        data <= data3;
    else
        data <= data4;
end

always@(posedge clk or posedge rst)
begin
    if(rst) 
    begin
        data1 <= 4;
        data2 <= 3;
        data3 <= 2;
        data4 <= 1;
    end
    else if(cnt2 == 0)
    begin
        if(data1 == 9)
        begin
            data1 <= 0;
            if(data2 == 9)
            begin
                data2 <= 0;
                if(data3 == 5)
                begin
                    data3 <= 0;
                    if(data4 == 15)
                        data4 <= 0;
                    else
                        data4 <= data4 + 1;
                end
                else
                    data3 <= data3 + 1;
            end
            else
                data2 <= data2 + 1;
        end
        else 
            data1 <= data1 + 1;
    end
    else 
    begin
        data1 <= data1;
        data2 <= data2;
        data3 <= data3;
        data4 <= data4;
    end
end
endmodule
