module top_module (
    input [7:0] in,
    output [31:0] out );//

  // assign out = { replicate-sign-bit , the-input };
  assign out={in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};
endmodule
