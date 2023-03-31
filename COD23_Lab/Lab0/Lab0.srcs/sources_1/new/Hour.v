module Hour(
    input reset,
    input min_tick,
    output [2:0] hour
    );
    // 5h进位
    reg [2:0] hour_reg;
    always @(posedge min_tick or posedge reset)
        if (reset)
            hour_reg <= 0;
        else if (hour_reg == 4)
            hour_reg <= 0;
        else
            hour_reg <= hour_reg + 1;

    assign hour = hour_reg;
endmodule