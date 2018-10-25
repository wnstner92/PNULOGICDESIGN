module week0502(RST,CLK,RW,Din,AD,Dout);

input RST;
input CLK;
input RW;
input [3:0] Din;
input [1:0] AD;
output [3:0] Dout;

wire  w1;
wire [3:0] b3;
wire [3:0] b5;
wire [3:0] b6;
wire [3:0] b7;
wire [3:0] b48;
wire [1:0] b47;
wire [3:0] b27;
wire  w34;
wire  w56;
wire  w57;
wire  w58;
wire  w59;
wire  w48;
wire  w51;
wire  w45;
wire  w61;
wire  w62;
wire  w64;
wire  w67;
wire  w65;
wire  w66;
wire  w55;
wire  b48_0_w8;
wire  b5_0_w9;
wire  b6_0_w10;
wire  b48_1_w12;
wire  b5_1_w13;
wire  b6_1_w14;
wire  b7_1_w15;
wire  b48_2_w16;
wire  b5_2_w17;
wire  b6_2_w18;
wire  b7_2_w19;
wire  b48_3_w20;
wire  b5_3_w21;
wire  b6_3_w22;
wire  b47_1_w27;
wire  b47_0_w26;
wire  b47_1_w49;
wire  b47_0_w52;
wire  b47_0_w53;
wire  b47_1_w54;
wire  b7_3_w23;
wire  b7_0_w63;
wire  b47_0_w47;
wire  b47_1_w50;
wire  b47_0_w46;
wire  b47_1_w60;
wire  b27_0;
wire  b27_1;
wire  b27_2;
wire  b27_3;

assign w34 = RST;
assign w1 = CLK;
assign w55 = RW;
assign b3 = Din;
assign b47 = AD;
assign Dout = b27;

assign b27[3] = b27_3;
assign b27[2] = b27_2;
assign b27[1] = b27_1;
assign b27[0] = b27_0;

assign b48_0_w8 = {b48[0]};
assign b5_0_w9 = {b5[0]};
assign b6_0_w10 = {b6[0]};
assign b48_1_w12 = {b48[1]};
assign b5_1_w13 = {b5[1]};
assign b6_1_w14 = {b6[1]};
assign b7_1_w15 = {b7[1]};
assign b48_2_w16 = {b48[2]};
assign b5_2_w17 = {b5[2]};
assign b6_2_w18 = {b6[2]};
assign b7_2_w19 = {b7[2]};
assign b48_3_w20 = {b48[3]};
assign b5_3_w21 = {b5[3]};
assign b6_3_w22 = {b6[3]};
assign b47_1_w27 = {b47[1]};
assign b47_0_w26 = {b47[0]};
assign b47_1_w49 = {b47[1]};
assign b47_0_w52 = {b47[0]};
assign b47_0_w53 = {b47[0]};
assign b47_1_w54 = {b47[1]};
assign b7_3_w23 = {b7[3]};
assign b7_0_w63 = {b7[0]};
assign b47_0_w47 = {b47[0]};
assign b47_1_w50 = {b47[1]};
assign b47_0_w46 = {b47[0]};
assign b47_1_w60 = {b47[1]};

week04fourth
     s1 (
      .CLK(w1),
      .Din(b3),
      .RST(w34),
      .Ce(w56),
      .Dout(b48));

week04fourth
     s2 (
      .CLK(w1),
      .Din(b3),
      .Dout(b5),
      .RST(w34),
      .Ce(w57));

week04fourth
     s3 (
      .CLK(w1),
      .Din(b3),
      .Dout(b6),
      .RST(w34),
      .Ce(w58));

week04fourth
     s4 (
      .CLK(w1),
      .Din(b3),
      .Dout(b7),
      .RST(w34),
      .Ce(w59));

PNU_MUX4
     s5 (
      .i1(b48_0_w8),
      .i2(b5_0_w9),
      .i3(b6_0_w10),
      .e2(b47_1_w27),
      .e1(b47_0_w26),
      .i4(b7_0_w63),
      .o1(w62));

PNU_MUX4
     s6 (
      .i1(b48_1_w12),
      .i2(b5_1_w13),
      .i3(b6_1_w14),
      .i4(b7_1_w15),
      .e2(b47_1_w27),
      .e1(b47_0_w26),
      .o1(w64));

PNU_MUX4
     s7 (
      .i1(b48_2_w16),
      .i2(b5_2_w17),
      .i3(b6_2_w18),
      .i4(b7_2_w19),
      .e2(b47_1_w27),
      .e1(b47_0_w26),
      .o1(w65));

PNU_MUX4
     s8 (
      .i1(b48_3_w20),
      .i2(b5_3_w21),
      .i3(b6_3_w22),
      .e2(b47_1_w27),
      .e1(b47_0_w26),
      .i4(b7_3_w23),
      .o1(w66));

PNU_NOT
     s10 (
      .i1(b47_1_w60),
      .o1(w61));

PNU_NOT
     s11 (
      .i1(b47_0_w46),
      .o1(w45));

PNU_NOT
     s12 (
      .i1(b47_0_w47),
      .o1(w48));

PNU_AND3
     s14 (
      .i1(b47_0_w52),
      .o1(w58),
      .i2(w51),
      .i3(w55));

PNU_AND3
     s15 (
      .i1(b47_0_w53),
      .i2(b47_1_w54),
      .o1(w59),
      .i3(w55));

PNU_NOT
     s16 (
      .i1(b47_1_w50),
      .o1(w51));

PNU_AND3
     s13 (
      .i2(b47_1_w49),
      .o1(w57),
      .i1(w48),
      .i3(w55));

PNU_AND3
     s9 (
      .o1(w56),
      .i1(w45),
      .i2(w61),
      .i3(w55));

PNU_AND2
     s17 (
      .i1(w62),
      .o1(b27_0),
      .i2(w67));

PNU_AND2
     s18 (
      .i1(w64),
      .o1(b27_1),
      .i2(w67));

PNU_AND2
     s19 (
      .i2(w67),
      .i1(w65),
      .o1(b27_2));

PNU_AND2
     s20 (
      .i2(w67),
      .i1(w66),
      .o1(b27_3));

PNU_NOT
     s21 (
      .o1(w67),
      .i1(w55));

endmodule

