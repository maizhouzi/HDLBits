module add(
    input clk,
    input[3:0] A,
    input[3:0] B,
    output[4:0] OUT,
    output reg[4:0] COUNT
    );
    assign OUT=A+B;
    COUNT<=5'b00000;
    always@(posedge clk)
    begin
        if (OUT==5'b10000)
        begin
            COUNT<=COUNT+1;
        end
        else begin
            COUNT<=COUNT;
        end
    end
endmodule


