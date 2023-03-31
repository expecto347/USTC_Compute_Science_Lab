module Clock (
    input clk,
    input rst, // asynchronous reset, active high
    output [2:0] hour,
    output [3:0] min,
    output [4:0] sec
);  
    
    wire sec_tick;
    wire min_tick;

    Sec sec1(
        .reset(rst),
        .clk(clk),
        .sec(sec),
        .sec_tick(sec_tick)
    );

    Min min1(
        .reset(rst),
        .sec_tick(sec_tick),
        .min(min),
        .min_tick(min_tick)
    );

    Hour hour1(
        .reset(rst),
        .min_tick(min_tick),
        .hour(hour)
    );
endmodule