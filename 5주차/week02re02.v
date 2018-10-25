module week02re02(A,B,Eq,Gt,Lt);

input [1:0] A;
input [1:0] B;
output Eq;
output Gt;
output Lt;

wire [1:0] b0;
wire [1:0] b1;
wire  w17;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w22;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  w30;
wire  w31;
wire  w32;
wire  w33;
wire  w35;
wire  w23;
wire  w37;
wire  b0_1_w36;
wire  b0_0_w24;
wire  b1_1_w34;
wire  b1_0_w25;

assign b0 = A;
assign b1 = B;
assign Eq = w21;
assign Gt = w29;
assign Lt = w30;

assign b0_1_w36 = {b0[1]};
assign b0_0_w24 = {b0[0]};
assign b1_1_w34 = {b1[1]};
assign b1_0_w25 = {b1[0]};

PNU_NOT
     s0 (
      .o1(w35),
      .i1(b0_1_w36));

PNU_NOT
     s1 (
      .i1(b0_0_w24),
      .o1(w37));

PNU_NOT
     s2 (
      .o1(w22),
      .i1(b1_1_w34));

PNU_NOT
     s3 (
      .o1(w23),
      .i1(b1_0_w25));

PNU_AND4
     s4 (
      .o1(w17),
      .i3(w22),
      .i1(w35),
      .i4(w23),
      .i2(w37));

PNU_AND4
     s5 (
      .o1(w18),
      .i3(w22),
      .i1(w35),
      .i2(b0_0_w24),
      .i4(b1_0_w25));

PNU_AND4
     s6 (
      .o1(w19),
      .i1(b0_1_w36),
      .i2(b0_0_w24),
      .i4(b1_1_w34),
      .i3(b1_0_w25));

PNU_AND4
     s7 (
      .o1(w20),
      .i1(b0_1_w36),
      .i3(w23),
      .i2(b1_1_w34),
      .i4(w37));

PNU_OR4
     s8 (
      .i1(w17),
      .i2(w18),
      .i3(w19),
      .i4(w20),
      .o1(w21));

PNU_AND2
     s9 (
      .i1(w22),
      .o1(w27),
      .i2(b0_1_w36));

PNU_AND3
     s10 (
      .i1(w22),
      .o1(w26),
      .i3(b0_0_w24),
      .i2(w23));

PNU_AND3
     s11 (
      .o1(w28),
      .i2(b0_1_w36),
      .i3(b0_0_w24),
      .i1(b1_0_w25));

PNU_OR3
     s12 (
      .i2(w26),
      .i1(w27),
      .i3(w28),
      .o1(w29));

PNU_AND2
     s13 (
      .o1(w31),
      .i2(w35),
      .i1(b1_1_w34));

PNU_AND3
     s14 (
      .o1(w32),
      .i1(b0_1_w36),
      .i2(b0_0_w24),
      .i3(w23));

PNU_AND3
     s15 (
      .o1(w33),
      .i1(b1_1_w34),
      .i2(b1_0_w25),
      .i3(w37));

PNU_OR3
     s16 (
      .o1(w30),
      .i1(w31),
      .i2(w32),
      .i3(w33));

endmodule

