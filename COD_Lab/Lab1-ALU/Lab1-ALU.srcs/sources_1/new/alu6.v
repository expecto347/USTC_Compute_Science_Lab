module alu32(
input [31:0] a,b,
input [2:0] f,
output [31:0] y,
output z
    );
    reg [31:0] c;
    reg d;
    assign y=c;
    assign z=d;
    always@(*)
        begin
            case(f)
                3'b000: c=a+b;
                3'b001: c=a-b;
                3'b010: c=a&b;
                3'b011: c=a|b;
                3'b100: c=a^b;
                default:
                c=0;
             endcase
             d=c?0:1;
         end
endmodule
