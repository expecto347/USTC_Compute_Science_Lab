`timescale 1ns / 1ps
/**********************************
CPU的PC地址显示模块
使用十六进制在数码管上显示
**********************************/
module Display (
        input CLK,   //时钟
        input button,//按钮
        input Reset,
        input [1:0]swin,  //开关15,开关14
        output reg[7:0] disp1,  //display输入
        output reg[3:0] select  //位选
    );

    initial begin
        disp1 <= 8'b0000_0000; 
        select <= 4'b1110;
    end

    //INPUTS
    reg CLK_CPU;
    //按键消抖后转化为CLK_CPU
    integer count = 0;
    always@(posedge CLK)begin
        if(button) count = count + 1;
        else
            count = 32'b0;
    end
    
    always@(count) begin
        if(count == 32'd1111111) CLK_CPU= 'b1;
        else CLK_CPU= 'b0;
    end

    //OUTPUTS
    wire [31:0] curPC;  //当前地址
    wire [31:0] nextPC;     //下条地址
    wire [4:0] rs1;         //rs1地址
    wire [31:0] ReadData1;  //rs1内数据
    wire [4:0] rs2;         //rs2地址
    wire [31:0] ReadData2;  //rs2内数据
    wire [31:0] AluOutput;  //alu计算结果
    wire [31:0] DB;         //DB总线数据

    wire [31:0] instr;      //指令
    wire [7:0] op;          //操作码
    wire [4:0] rd;          //rd地址

    SingleCycleCPU uut(
        .CLK(CLK_CPU),
        .Reset(Reset),
        .curPC(curPC),      //当前地址
        .nextPC(nextPC),     //下条地址
        .rs1(rs1),         //rs1地址
        .ReadData1(ReadData1),  //rs1内数据
        .rs2(rs2),         //rs2地址
        .ReadData2(ReadData2),  //rs2内数据
        .AluOutput(AluOutput),  //alu计算结果
        .DB(DB),         //DB总线数据

        .instr(instr),      //指令
        .op(op),          //操作码
        .rd(rd)          //rd地址
    );



    // SW_in = 00： 显示 当前 PC值:下条指令PC值
    // SW_in = 01： 显示 rs1寄存器地址:rs1寄存器数据
    // SW_in = 10： 显示 rs2寄存器地址:rs2寄存器数据
    // SW_in = 11： 显示 ALU结果输出 :DB总线数据


    //数据选择
    reg [7:0] data1;
    reg [7:0] data2;
    always @(swin) begin
        case (swin)
            2'b00: begin
                data1 = curPC[7:0];
                data2 = nextPC[7:0];
            end
            2'b01: begin
                data1[4:0] = rs1;
                data1[7:5] = 3'b000;
                data2 = ReadData1[7:0];
            end
            2'b10: begin
                data1[4:0] = rs2;
                data1[7:5] = 3'b000;
                data2 = ReadData2[7:0];
            end
            2'b11: begin
                data1 = AluOutput[7:0];
                data2 = DB[7:0];
            end
        endcase
    end
    
    
    // 分频加位选
    reg [31:0] counter;
    always @(posedge CLK) begin
        if (counter == 50000) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end

    always @(posedge CLK) begin
        if (counter == 50000) begin
            select <= {select[2:0],select[3]};
        end
    end

    // 段选控制
    reg [4:0] result;
    always @(select)
        case(select) 
            4'b1110:result = data2[3:0]; 
            4'b1101:result = data2[7:4]; 
            4'b1011:result = data1[3:0];
            4'b0111:result = data1[7:4];
            default:result = 4'hf;
        endcase

    // 解码
    always @(result) begin
        case (result)
            4'b0000 : disp1 = 8'b1100_0000; //0  '0'-亮灯， '1'-熄灯
            4'b0001 : disp1 = 8'b1111_1001; //1
            4'b0010 : disp1 = 8'b1010_0100; //2
            4'b0011 : disp1 = 8'b1011_0000; //3
            4'b0100 : disp1 = 8'b1001_1001; //4
            4'b0101 : disp1 = 8'b1001_0010; //5
            4'b0110 : disp1 = 8'b1000_0010; //6
            4'b0111 : disp1 = 8'b1101_1000; //7
            4'b1000 : disp1 = 8'b1000_0000; //8
            4'b1001 : disp1 = 8'b1001_0000; //9
            4'b1010 : disp1 = 8'b1000_1000; //A
            4'b1011 : disp1 = 8'b1000_0011; //b
            4'b1100 : disp1 = 8'b1100_0110; //C
            4'b1101 : disp1 = 8'b1010_0001; //d
            4'b1110 : disp1 = 8'b1000_0110; //E
            4'b1111 : disp1 = 8'b1000_1110; //F
            default : disp1 = 8'b0000_0000; //不亮
        endcase
    end

endmodule