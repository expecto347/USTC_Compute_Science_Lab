# Lab4

## T1

```verilog
module test(
input a,
output reg b);
  always@(*)
  begin
    if(a) b <= 1'b0;
    else b <= 1'b1;
  end
endmodule
```

## T2

```verilog
module test(
input[4:0] a,
output reg [4:0]b);
  always@(*)
    b<=a;
endmodule
```

## T3

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

## T4

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

## T5

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

