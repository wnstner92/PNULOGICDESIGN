module week02te03(p0,p1,CHK);

input [9:0] p0;
output [3:0] p1;
output CHK;

wire [9:0] b0;
wire  w15;
wire  w22;
wire  w23;
wire  w25;
wire  w26;
wire  w27;
wire [3:0] b19;
wire  w24;
wire  w28;
wire  b0_0_w16;
wire  b0_1_w11;
wire  b0_2_w17;
wire  b0_3_w12;
wire  b0_4_w18;
wire  b0_5_w13;
wire  b0_6_w19;
wire  b0_7_w20;
wire  b0_8_w21;
wire  b0_9_w14;
wire  b19_0;
wire  b19_1;
wire  b19_2;
wire  b19_3;

assign b0 = p0;
assign p1 = b19;
assign CHK = w24;

assign b19[3] = b19_3;
assign b19[2] = b19_2;
assign b19[1] = b19_1;
assign b19[0] = b19_0;

assign b0_0_w16 = {b0[0]};
assign b0_1_w11 = {b0[1]};
assign b0_2_w17 = {b0[2]};
assign b0_3_w12 = {b0[3]};
assign b0_4_w18 = {b0[4]};
assign b0_5_w13 = {b0[5]};
assign b0_6_w19 = {b0[6]};
assign b0_7_w20 = {b0[7]};
assign b0_8_w21 = {b0[8]};
assign b0_9_w14 = {b0[9]};

PNU_TBUF
     s5 (
      .i1(w26),
      .o1(b19_2),
      .e(w24));

PNU_TBUF
     s6 (
      .i1(w25),
      .o1(b19_3),
      .e(w24));

PNU_TBUF
     s7 (
      .i1(w27),
      .o1(b19_1),
      .e(w24));

PNU_TBUF
     s8 (
      .o1(b19_0),
      .e(w24),
      .i1(w28));

PNU_OR8
     s9 (
      .i1(b0_0_w16),
      .i2(b0_1_w11),
      .i4(b0_2_w17),
      .i3(b0_3_w12),
      .i5(b0_4_w18),
      .i6(b0_5_w13),
      .i7(b0_6_w19),
      .i8(b0_7_w20),
      .o1(w22));

PNU_OR2
     s10 (
      .i1(b0_8_w21),
      .i2(b0_9_w14),
      .o1(w23));

PNU_OR2
     s11 (
      .i1(w22),
      .i2(w23),
      .o1(w24));

PNU_OR4
     s12 (
      .o1(w15),
      .i1(b0_1_w11),
      .i2(b0_3_w12),
      .i3(b0_5_w13),
      .i4(b0_7_w20));

PNU_OR4
     s13 (
      .i1(b0_2_w17),
      .i2(b0_3_w12),
      .i3(b0_6_w19),
      .i4(b0_7_w20),
      .o1(w27));

PNU_OR4
     s14 (
      .i1(b0_4_w18),
      .i2(b0_5_w13),
      .i3(b0_6_w19),
      .i4(b0_7_w20),
      .o1(w26));

PNU_OR2
     s16 (
      .i1(b0_8_w21),
      .i2(b0_9_w14),
      .o1(w25));

PNU_OR2
     s15 (
      .i1(w15),
      .i2(b0_9_w14),
      .o1(w28));

endmodule

