`timescale 1ns / 1ps
module tb_PE;
parameter datasize=2;
 // Inputs
 reg clk;
 reg reset;
 reg signed [datasize-1:0] a1;
 reg signed [datasize-1:0] a2;
 reg signed [datasize-1:0] a3;
 reg signed [datasize-1:0] a4;
 reg signed [datasize-1:0] b1;
 reg signed [datasize-1:0] b2;
 reg signed [datasize-1:0] b3;
 reg signed [datasize-1:0] b4;

 // Outputs
 wire signed [2*datasize-1:0] X0_real;
 wire signed [2*datasize-1:0] X0_img;
 wire signed [2*datasize-1:0] c3;
 wire signed [2*datasize-1:0] c4;
 wire signed [2*datasize-1:0] X1_real;
 wire signed [2*datasize-1:0] X1_img;
 wire signed [2*datasize-1:0] c7;
 wire signed [2*datasize-1:0] c8;
 wire signed [2*datasize-1:0] X2_real;
 wire signed [2*datasize-1:0] X2_img;
 wire signed [2*datasize-1:0] c11;
 wire signed [2*datasize-1:0] c12;
 wire signed [2*datasize-1:0] X3_real;
 wire signed [2*datasize-1:0] X3_img;
 wire signed [2*datasize-1:0] c15;
 wire signed [2*datasize-1:0] c16;

 // Instantiate the Unit Under Test (UUT)
 PE_unit uut (
  .clk(clk), 
  .reset(reset), 
  .a1(a1), 
  .a2(a2), 
  .a3(a3), 
  .a4(a4),
  .b1(b1), 
  .b2(b2), 
  .b3(b3), 
  .b4(b4),
  .c1(X0_real), 
  .c2(X0_img), 
  .c3(c3), 
  .c4(c4), 
  .c5(X1_real), 
  .c6(X1_img), 
  .c7(c7), 
  .c8(c8), 
  .c9(X2_real),
  .c10(X2_img),
  .c11(c11),
  .c12(c12),
  .c13(X3_real),
  .c14(X3_img),
  .c15(c15),
  .c16(c16)
 );




 initial begin
  // Initialize Inputs
  clk = 0;
  reset = 0;
  a1 = 0;
  a2 = 0;
  a3 = 0;
  a4 = 0;
  b1 = 0;
  b2 = 0;
  b3 = 0;
  b4 = 0;
  // Wait 100 ns for global reset to finish
  #5 reset = 1;
  #5 reset = 0;
  #5;  a1 = 1; a2 = 0; a3 = 0; a4 = 0; b1 = 1'b1; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 1; a2 = 1; a3 = 0; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 1; a2 = 0; a3 = 1; a4 = 0; b1 = 1; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 1; a2 = -1; a3 = -1; a4 = 1; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 1; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = -1; a4 = -1; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; b1 = 0; b2 = 1; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = -1; a3 = 0; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; b1 = 0; b2 = 1; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 1; a3 = 0; a4 = 1; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = 0; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #10; a1 = 0; a2 = 0; a3 = 0; a4 = -1; b1 = 0; b2 = 0; b3 = 0; b4 = 0;
  #100;
  $stop
  end
  initial begin
  forever #5 clk = ~clk;
  end
  endmodule

