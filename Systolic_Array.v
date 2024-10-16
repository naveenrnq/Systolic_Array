`timescale 1ns / 1ps
module PE_unit(clk,reset,a1,a2,a3,a4,b1,b2,b3,b4,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16);
 parameter data_size=32;
 input wire clk,reset;
 input wire signed [data_size-1:0] a1,a2,a3,a4,b1,b2,b3,b4;
 output wire signed  [2*data_size-1:0] c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;
 wire signed [data_size-1:0] a12,a23,a34,a45,a56,a67,a78,a89,a910,a1011,a1112,a1213,b14,b25,b36,b47,b58,b69,b710,b811,b912,b1013,b1114,b1215;
 pe pe1 (.clk(clk), .reset(reset), .in_a(a1), .in_b(b1), .out_a(a12), .out_b(b14), .out_c(c1));
 pe pe2 (.clk(clk), .reset(reset), .in_a(a12), .in_b(b2), .out_a(a23), .out_b(b25), .out_c(c2));
 pe pe3 (.clk(clk), .reset(reset), .in_a(a23), .in_b(b3), .out_a(a34), .out_b(b36), .out_c(c3));
 pe pe4 (.clk(clk), .reset(reset), .in_a(a34), .in_b(b4), .out_a(), .out_b(b47), .out_c(c4));
 pe pe5 (.clk(clk), .reset(reset), .in_a(a2), .in_b(b14), .out_a(a45), .out_b(b58), .out_c(c5));
 pe pe6 (.clk(clk), .reset(reset), .in_a(a45), .in_b(b25), .out_a(a56), .out_b(b69), .out_c(c6));
 pe pe7 (.clk(clk), .reset(reset), .in_a(a56), .in_b(b36), .out_a(a67), .out_b(b710), .out_c(c7));
 pe pe8 (.clk(clk), .reset(reset), .in_a(a67), .in_b(b47), .out_a(), .out_b(b811), .out_c(c8));
 pe pe9 (.clk(clk), .reset(reset), .in_a(a3), .in_b(b58), .out_a(a78), .out_b(b912), .out_c(c9));
 pe pe10 (.clk(clk), .reset(reset), .in_a(a78), .in_b(b69), .out_a(a89), .out_b(b1013), .out_c(c10));
 pe pe11 (.clk(clk), .reset(reset), .in_a(a89), .in_b(b710), .out_a(a910), .out_b(b1114), .out_c(c11));
 pe pe12 (.clk(clk), .reset(reset), .in_a(a910), .in_b(b811), .out_a(), .out_b(b1215), .out_c(c12));
 pe pe13 (.clk(clk), .reset(reset), .in_a(a4), .in_b(b912), .out_a(a1011), .out_b(), .out_c(c13));
 pe pe14 (.clk(clk), .reset(reset), .in_a(a1011), .in_b(b1013), .out_a(a1112), .out_b(), .out_c(c14));
 pe pe15 (.clk(clk), .reset(reset), .in_a(a1112), .in_b(b1114), .out_a(a1213), .out_b(), .out_c(c15));
 pe pe16 (.clk(clk), .reset(reset), .in_a(a1213), .in_b(b1215), .out_a(), .out_b(), .out_c(c16));

endmodule



module pe(clk,reset,in_a,in_b,out_a,out_b,out_c);

 parameter data_size=32;
 input wire reset,clk;
 input wire signed [data_size-1:0] in_a,in_b;
 output reg signed [2*data_size-1:0] out_c;
 output reg signed [data_size-1:0] out_a,out_b;

 always @(posedge clk)begin
    if(reset) begin
      out_a=0;
      out_b=0;
      out_c=0;
    end
    else begin  
      out_c=out_c+in_a*in_b;
      out_a=in_a;
      out_b=in_b;
    end
 end
 
endmodule
