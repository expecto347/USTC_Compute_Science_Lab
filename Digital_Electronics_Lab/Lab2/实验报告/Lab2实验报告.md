# Lab2实验报告

## 姓名 学号

孙昊哲 PB20000277

## 实验题目

简单组合逻辑电路

## 实验目的

* 熟练掌握 Logisim 的基本用法 
* 进一步熟悉 Logisim 更多功能
* 用 Logisim 设计组合逻辑电路并进行仿真
* 初步学习 Verilog 语法
* 熟悉真值表，卡诺图

## 实验环境

macOS Ventura

Logism 2.7.1

Openjdk 18.0.2.1

## 实验练习

### T1

1. 首先我们在Logism对应的地方输入真值表

   <img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272256553.png" alt="image-20221027225622514" style="zoom:50%;" />

   2. 我们点击`Build Circuit`即可自动构建好电路图

## <img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272257844.png" alt="截屏2022-10-27 下午10.57.31" style="zoom: 33%;" />

### T2

1. 我们根据图中所给的真值表即可总结出来
   $$
   Y_0 = \bar{G_1} + A_0 + A_1 + A_2\newline
   Y_1 = \bar{G_1} + \bar{A_0} + A_1 + A_2\newline
   Y_2 = \bar{G_1} + \bar{A_1} + A_0 + A_2\newline
   Y_3 = \bar{G_1} + \bar{A_1} + \bar{A_0} + A_2\newline
   Y_4 = \bar{G_1} + \bar{A_2} + A_0 + A_1\newline
   Y_5 = \bar{G_1} + \bar{A_2} + \bar{A_0} + \bar{A_1}\newline
   Y_6 = \bar{G_1} + \bar{A_2} + \bar{A_1} + \bar{A_0}\newline
   Y_7 = \bar{G_1} + \bar{A_2} + \bar{A_1} + \bar{A_0}
   $$

2. 我们依次将他们填入Logism当中<img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272306522.png" alt="截屏2022-10-27 下午11.06.26" style="zoom:50%;" />

3. 点击`Build Circuit`按钮即可构建出对应的电路图
   <img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272309523.png" alt="截屏2022-10-27 下午11.09.36" style="zoom: 25%;" />

### T3

1. 绘制出电路图

​	<img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272314422.png" alt="截屏2022-10-27 下午11.14.16" style="zoom:50%;" />

2. 并且编写好verilog代码
   ```verilog
   module Mux2-1(
   input a,b,sel,
   output out);
       wire t1,t2;
   
       assign t1 = a & (~sel);
       assign t2 = b & sel;
   
       assign out = a | b;
   endmodule
   ```

   

### T4

1. 使用2-1选择器绘制出来4-1选择器

<img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272314011.png" alt="截屏2022-10-27 下午11.12.18" style="zoom:25%;" >

2. 编写出来verilog代码
   ```verilog
    module Mux4-1(
       input a,b,c,d,sel0,sel1,
       output out
    )
   
       wire t1, t2;
       Mux2-1 mux1(
            .a (a),
            .b (b),
            .sel (sel0)
            .out (t1)
            );
   
       Mux2-1 mux2(
           .a (c),
           .b (d),
           .sel (sel0),
           .out (t2)
       )
   
       Mux2-1 mux3(
           .a (t1),
           .b (t2),
           .sel (sel1),
           .out (out)
       )
   endmodule
   ```

   ### T5

   1. 根据真值表得到他们的表达式
      ```verlilog
       y2 = i7 | (~i7 & i6) | (~i7 & ~i6 & i5) | (~i7 & ~i6 & ~i5 & i4);
      
       y1 = i7 | (~i7 & i6) | (~i7 & ~i6 & ~i5 & ~i4 & i3) | (~i7 & ~i6 & ~i5 & ~i4 & ~i3 & i2);
      
       y0 = i7 | (~i7 & ~i6 & i5) |(~i7 & ~i6 & ~i5 & ~i4 & i3) |(~i7 & ~i6 & ~i5 & ~i4 & ~i3 & ~i2 & i1);
      ```
      
   1. 根据表达式编写出verilog
      ```verilog
      module mod(
          input i0,i1,i2,i3,i4,i5,i6,i7,
          output y0,y1,y2
      )
          y2 = i7 | (~i7 & i6) | (~i7 & ~i6 & i5) | (~i7 & ~i6 & ~i5 & i4);
      
          y1 = i7 | (~i7 & i6) | (~i7 & ~i6 & ~i5 & ~i4 & i3) | (~i7 & ~i6 & ~i5 & ~i4 & ~i3 & i2);
      
          y0 = i7 | (~i7 & ~i6 & i5) |(~i7 & ~i6 & ~i5 & ~i4 & i3) |(~i7 & ~i6 & ~i5 & ~i4 & ~i3 & ~i2 & i1);
      
      endmodule
      ```
      
      ### T6
      
      1. 查看真值表，发现电路的功能是判断输出信号中1的个数，`S1`指示1的个数是否为奇数，`s2`指示1的个数是否为偶数
         <img src="https://raw.githubusercontent.com/expecto347/Img/main/202210272328541.png" alt="截屏2022-10-27 下午11.28.06" style="zoom: 50%;" />
      
      

## 总结与思考

1. 本次掌握了利用真值表和表达式通过Logism搭建电路图的方法
2. 本次试验比较简单，任务量较小
3. 没有改进建议
