module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire[15:0] s1,s2;
    wire w1,w2;
    add16 inst1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.cout(w1),.sum(s1));
    add16 inst2(.a(a[31:16]),.b(b[31:16]),.cin(w1),.cout(w2),.sum(s2));
    assign sum={s2,s1};
endmodule