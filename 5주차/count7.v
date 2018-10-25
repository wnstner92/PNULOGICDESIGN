module count7(rst,clk,CNT);

input rst;
input clk;
output [2:0] CNT;

wire  w0;
wire  w1;
wire  w6;
wire  w8;
wire  w11;
wire  w12;
wire  w13;
wire  w17;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w23;
wire  w24;
wire  w28;
wire  w31;
wire [2:0] b23;
wire  w33;
wire  w32;
wire  w27;
wire  w26;
wire  b23_0;
wire  b23_0_w30;
wire  b23_1;
wire  b23_1_w25;
wire  b23_2;
wire  b23_2_w29;

assign w0 = rst;
assign w1 = clk;
assign CNT = b23;

assign b23[2] = b23_2;
assign b23[1] = b23_1;
assign b23[0] = b23_0;

assign b23_0_w30 = {b23[0]};
assign b23_1_w25 = {b23[1]};
assign b23_2_w29 = {b23[2]};

PNU_DFF
     s0 (
      .reset(w0),
      .clock(w1),
      .D(w28),
      .Q(b23_2));

PNU_DFF
     s1 (
      .reset(w0),
      .clock(w1),
      .D(w31),
      .Q(b23_1));

PNU_DFF
     s2 (
      .reset(w0),
      .clock(w1),
      .D(w32),
      .Q(b23_0));

PNU_NOT
     s3 (
      .o1(w6),
      .i1(b23_1_w25));

PNU_NOT
     s5 (
      .o1(w8),
      .i1(b23_2_w29));

PNU_NOT
     s8 (
      .o1(w13),
      .i1(b23_1_w25));

PNU_NOT
     s11 (
      .o1(w33),
      .i1(b23_2_w29));

PNU_NOT
     s12 (
      .o1(w17),
      .i1(b23_0_w30));

PNU_NOT
     s15 (
      .o1(w21),
      .i1(b23_2_w29));

PNU_NOT
     s16 (
      .o1(w22),
      .i1(b23_0_w30));

PNU_NOT
     s18 (
      .o1(w23),
      .i1(b23_1_w25));

PNU_NOT
     s19 (
      .o1(w24),
      .i1(b23_0_w30));

PNU_AND2
     s21 (
      .i2(w6),
      .o1(w12),
      .i1(b23_2_w29));

PNU_AND3
     s22 (
      .i1(w8),
      .o1(w11),
      .i3(b23_0_w30),
      .i2(b23_1_w25));

PNU_OR2
     s23 (
      .i1(w11),
      .i2(w12),
      .o1(w28));

PNU_AND2
     s24 (
      .i1(w13),
      .o1(w20),
      .i2(b23_0_w30));

PNU_AND3
     s25 (
      .i3(w17),
      .o1(w19),
      .i1(w33),
      .i2(b23_1_w25));

PNU_OR2
     s26 (
      .i2(w19),
      .i1(w20),
      .o1(w31));

PNU_AND2
     s20 (
      .i1(w21),
      .i2(w22),
      .o1(w27));

PNU_AND2
     s27 (
      .i1(w23),
      .i2(w24),
      .o1(w26));

PNU_OR2
     s28 (
      .o1(w32),
      .i1(w27),
      .i2(w26));

endmodule

