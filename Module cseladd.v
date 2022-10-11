module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] w1,w2,w3,w4;
    wire c1;
    add16 inst1(a[15:0],b[15:0],1'b0,w1,c1);
    add16 inst2(a[31:16],b[31:16],1'b0,w2,);
    add16 inst3(a[31:16],b[31:16],1'b1,w3,);
    always@(*)
    begin
        case(c1)
        1'b0:w4=w2;
        1'b1:w4=w3;
        endcase
    end
    assign sum={w4,w1};
endmodule