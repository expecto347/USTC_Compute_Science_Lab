module Min(
    input reset,
    input sec_tick,
    output [3:0] min,
    output min_tick
    );
    // 10min进位
    reg [3:0] min_reg;
    reg min_tick_reg;
    always @(posedge sec_tick or posedge reset)
        if (reset)
            min_reg <= 0;
        else if (min_reg == 9)
            begin
            min_reg <= 0;
            min_tick_reg <= 1;
            end
        else
            begin
            min_reg <= min_reg + 1;
            min_tick_reg <= 0;
            end

    assign min = min_reg;
    assign min_tick = min_tick_reg;
endmodule
