`timescale 1ns / 1ps

module TOP_sim();
    reg clk;
    reg rst;

    //选择CPU工作方式;
    reg run;
    reg step;

    //输入switch的端口
    reg valid;
    reg [4:0] in;

    //输出led和seg的端口 
    wire [1:0] check;   //led6-5:查看类型
    wire [4:0] out0;    //led4-0
    wire [2:0] an;      //8个数码管
    wire [3:0] seg;
    wire ready;         //led7

    top top(
        .clk(clk),
        .rst(rst),
        .run(run),
        .step(step),
        .valid(valid),
        .in(in),
        .check(check),
        .out0(out0),
        .an(an),
        .seg(seg),
        .ready(ready)
    );
    initial begin
        clk = 0;
        rst = 0;
        run = 0;
        step = 0;
        valid = 0;
        in = 0;
    end

    always #5 clk = ~clk;

    initial begin
        #10;
        rst = 1; #100;
        rst = 0; #100;
        run = 1; #50;
    end
endmodule
