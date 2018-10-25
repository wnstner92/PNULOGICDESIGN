module week0501fi(clk,rst,Q1,Q2);

input clk;
input rst;
output [3:0] Q1;
output [2:0] Q2;

wire  w10;
wire [2:0] b9;
wire [3:0] b10;
wire  w11;
wire  w16;
wire  w6;
wire  w7;
wire  w8;
wire  w9;
wire  b10_0_w12;
wire  b10_1_w13;
wire  b10_2_w14;
wire  b10_3_w15;

assign w11 = clk;
assign w10 = rst;
assign Q1 = b10;
assign Q2 = b9;

assign b10_0_w12 = {b10[0]};
assign b10_1_w13 = {b10[1]};
assign b10_2_w14 = {b10[2]};
assign b10_3_w15 = {b10[3]};

count7
     s0 (
      .rst(w10),
      .CNT(b9),
      .clk(w16));

week0501
     s4 (
      .rst(w10),
      .CNT10(b10),
      .Clk(w11));

PNU_NOT
     s5 (
      .o1(w7),
      .i1(b10_2_w14));

PNU_AND4
     s2 (
      .o1(w16),
      .i1(w6),
      .i2(w7),
      .i3(w8),
      .i4(w9));

PNU_NOT
     s7 (
      .o1(w6),
      .i1(b10_3_w15));

PNU_NOT
     s6 (
      .o1(w8),
      .i1(b10_1_w13));

PNU_NOT
     s8 (
      .o1(w9),
      .i1(b10_0_w12));

endmodule

