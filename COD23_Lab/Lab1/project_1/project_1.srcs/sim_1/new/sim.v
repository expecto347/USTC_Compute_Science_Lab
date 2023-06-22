//~ `New testbench
`timescale  1ns / 1ps

module sim;

// alu_test Parameters
parameter PERIOD  = 10;


// alu_test Inputs
reg   clk                                  = 0 ;
reg   en                                   = 0 ;
reg   [1:0]  sel                           = 0 ;
reg   [5:0]  x                             = 0 ;

// alu_test Outputs
wire  [5:0]  y                             ;
wire  of                                   ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

alu_test  u_alu_test (
    .clk                     ( clk        ),
    .en                      ( en         ),
    .sel                     ( sel  [1:0] ),
    .x                       ( x    [5:0] ),

    .y                       ( y    [5:0] ),
    .of                      ( of         )
);

initial
begin
    

    $finish;
end

endmodule