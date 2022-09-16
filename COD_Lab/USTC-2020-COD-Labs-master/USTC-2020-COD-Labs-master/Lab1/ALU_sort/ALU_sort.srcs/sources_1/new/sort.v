`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/23 21:19:39
// Design Name: 
// Module Name: sort
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

module sort
    #(
    parameter N = 4,  //数据宽度
    parameter SUB = 3'b001
    )
    (
    output [N-1: 0] s0, s1, s2, s3, 	//排序后的四个数据（递增）
    output reg done, 				//排序结束标志
    input [N-1: 0] x0, x1, x2, x3,	//原始输入数据
    input clk, rst				//时钟（上升沿有效）、复位（高电平有效）
    );
    
    localparam LOAD = 3'b000;
    localparam CX01_3 = 3'b001;
    localparam CX12_3 = 3'b010;
    localparam CX23_3 = 3'b011;
    localparam CX01_2 = 3'b100;
    localparam CX12_2 = 3'b101;
    localparam CX01_1 = 3'b110;
    localparam HLT = 3'b111;
    
    reg [2: 0] cur_state = LOAD;
    reg [2: 0] next_state = CX01_3;
    
    wire [N-1: 0] alu_a, alu_b;
    wire [N-1: 0] i0, i1, i2, i3;
    wire cf, of, zf;
    wire [N-1: 0] y;
    reg m0, m3;
    reg [1: 0] m1, m2, mab;
    reg en0, en1, en2, en3;
    
    // Data Path
    //// mux
    ////// 用于交换的mux
    mux2 #(4) mux2_0(m0, x0, (s1), (i0));
    mux3 #(4) mux3_1(m1, x1, (s0), (s2), (i1));
    mux3 #(4) mux3_2(m2, x2, (s1), (s3), (i2));
    mux2 #(4) mux2_3(m3, (x3), (s2), (i3));
    ////// 用于输入到ALU的mux
    mux3 #(.WIDTH(2*N)) mux_ab(mab, {s0, s1}, {s1, s2}, {s2, s3}, {alu_a, alu_b});
    //// register
    register #(4) register0(i0, en0, rst, clk, s0);
    register #(4) register1(i1, en1, rst, clk, s1);
    register #(4) register2(i2, en2, rst, clk, s2);
    register #(4) register3(i3, en3, rst, clk, s3);
    //// ALU
    ALU #(4) ALU(y, zf, cf, of, alu_a, alu_b, SUB);
    
    /*
    // Data Path
    //// mux
    ////// 用于交换的mux
    mux2 mux2_0(.select(m0), .in0(x0), .in1(s1), .out(i0));
    mux3 mux3_1(.select(m1), .in0(x1), .in1(s0), .in2(s2), .out(i1));
    mux3 mux3_2(.select(m2), .in0(x2), .in1(s1), .in2(s3), .out(i2));
    mux2 mux2_3(.select(m3), .in0(x3), .in1(s2), .out(i3));
    ////// 用于输入到ALU的mux
    mux3 #(.WIDTH(2*N)) mux_ab(.select(mab), .in0({s0, s1}), .in1({s1, s2}), .in2({s2, s3}), .out({alu_a, alu_b}));
    //// register
    register register0(.data(i0), .en(en0), .rst(rst), .clk(clk), .r(s0));
    register register1(.data(i1), .en(en1), .rst(rst), .clk(clk), .r(s1));
    register register2(.data(i2), .en(en2), .rst(rst), .clk(clk), .r(s2));
    register register3(.data(i3), .en(en3), .rst(rst), .clk(clk), .r(s3));
    //// ALU
    ALU ALU(.a(alu_a), .b(alu_b), .m(SUB), .cf(cf), .y(y), .of(of), .zf(zf));
    */
    
    always @(*)
    begin
        // 初始化
        {mab, m0, m1, m2, m3, en0, en1, en2, en3, done} = 13'h00;
        case(cur_state)
            LOAD:
            begin
                {en0, en1, en2, en3} = 4'b1111;
            end
            CX01_3, CX01_2, CX01_1:
            begin
                mab = 2'b00;
                en0 = ~(y[N-1] ^ of); en1 = ~(y[N-1] ^ of);
                m0 = 1'b1; m1 = 2'b01;
            end
            CX12_3, CX12_2:
            begin
                mab = 2'b01;
                en1 = ~(y[N-1] ^ of); en2 = ~(y[N-1] ^ of);
                m1 = 2'b10; m2 = 2'b01;
            end
            CX23_3:
            begin
                mab = 2'b10;
                en2 = ~(y[N-1] ^ of); en3 = ~(y[N-1] ^ of);
                m2 = 2'b10; m3 = 1'b1;
            end
            HLT: done = 1'b1;
        endcase
    end
    
    // Control Unit
    always @(posedge clk or posedge rst)
    begin
        if(rst) cur_state <= LOAD;
        else cur_state <= next_state;
    end
    
    // States
    always @(*)
    begin
        case(cur_state)
            LOAD: next_state = CX01_3;
            CX01_3: next_state = CX12_3;
            CX12_3: next_state = CX23_3;
            CX23_3: next_state = CX01_2;
            CX01_2: next_state = CX12_2;
            CX12_2: next_state = CX01_1;
            CX01_1: next_state = HLT;
            HLT: next_state = HLT;
            default: next_state = HLT;
        endcase
    end

endmodule
