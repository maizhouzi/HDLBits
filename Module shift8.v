module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] w1,w2,w3;
    reg[7:0] r1;
    my_dff8 inst1(clk,d,w1);
    my_dff8 inst2(clk,w1,w2);
    my_dff8 inst3(clk,w2,w3);
    always @(*) begin
        case(sel)
        2'b00: r1=d;
        2'b01: r1=w1;
        2'b10: r1=w2;
        2'b11: r1=w3;    
        endcase
    end
    assign q=r1;
endmodule