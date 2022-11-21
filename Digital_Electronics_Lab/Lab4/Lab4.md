# Lab4

## 姓名 学号

孙昊哲 PB20000277

## 实验题目

Verilog 硬件描述语言

## 实验目的

* 掌握 Verilog HDL 常用语法
* 能够熟练阅读并理解 Verilog 代码
* 能够设计较复杂的数字功能电路
* 能够将 Verilog 代码与实际硬件相对应

## 实验环境

macOS Monterey

## 实验练习

### T1

```verilog
module test(
input a,
  output reg b); //将b设为reg
  always@(*) //if语句应该在always内使用
  begin
    if(a) b <= 1'b0;
    else b <= 1'b1; 
  end
endmodule
```

### T2

```verilog
module test(
input[4:0] a,
output reg [4:0]b);
  always@(*)
    b<=a;
endmodule
```

### T3

```verilog
c=8'b0011_0000
d=8'b1111_0011
e=8'b1100_0011
f=8'b1100_1100
g=8'b0011_0000
h=8'b0000_0110
i=8'b0000_0000
j=8'b1111_0000
k=8'b0100_0011
```

### T4

```verilog
module sub_test(
input a,b,
output c); //不需要使用reg
	assign c=(a<b)?a:b;
endmodule

module test(
input a,b,c,
output o);
  wire temp; //使用wire
  sub_test t1(a, b, temp);
  sub_test t2(tmp, c, o); //接口方式不能混用
endmodule
```

### T5

```verilog
module sub_test(
input a,b,
output o); //将output放到括号内
	assign o=a+b;
endmodule

module test(
input a,b.
output c);
  sub_test sub_test(a,b,c); //不需要使用always
endmodule
```

# 总结与思考

1. 本次实验学会了verilog的基本语法，并且学会了debug
2. 本次实验难度较低，很容易完成
