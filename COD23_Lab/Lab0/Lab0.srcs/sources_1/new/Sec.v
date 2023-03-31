module Sec(
    input reset,
    input clk,
    output [4:0] sec,
    output sec_tick
    );
    // 20s进位
    reg [4:0] sec_reg;
    reg sec_tick_reg;
    always @(posedge clk or posedge reset)
        if (reset)
            sec_reg <= 0;
        else if (sec_reg == 19)
            begin
            sec_reg <= 0;
            sec_tick_reg <= 1;
            end
        else
            begin
            sec_reg <= sec_reg + 1;
            sec_tick_reg <= 0;
            end

    assign sec = sec_reg;
    assign sec_tick = sec_tick_reg;
endmodule
