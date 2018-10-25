module week02s02(A,B,Eq,Gt,Lt);

input [1:0] A;
input [1:0] B;
output Eq;
output Gt;
output Lt;

wire [1:0] b1;
wire  w17;
wire  w18;
wire  w19;
wire  w20;
wire  w21;
wire  w23;
wire  w26;
wire  w27;
wire  w28;
wire  w29;
wire  w33;
wire  w34;
wire  w35;
wire  w36;
wire [1:0] b22;
wire  w31;
wire  w22;
wire  w24;
wire  b1_1_w32;
wire  b22_0_w37;
wire  b22_1_w25;
wire  b1_0_w30;

assign b22 = A;
assign b1 = B;
assign Eq = w21;
assign Gt = w26;
assign Lt = w33;

assign b1_1_w32 = {b1[1]};
assign b22_0_w37 = {b22[0]};
assign b22_1_w25 = {b22[1]};
assign b1_0_w30 = {b1[0]};

PNU_NOT
     s0 (
      .o1(w23),
      .i1(b1_1_w32));

PNU_NOT
     s1 (
      .i1(b1_0_w30),
      .o1(w24));

PNU_NOT
     s2 (
      .i1(b22_1_w25),
      .o1(w31));

PNU_NOT
     s3 (
      .i1(b22_0_w37),
      .o1(w22));

PNU_AND4
     s4 (
      .o1(w17),
      .i2(w23),
      .i3(w31),
      .i1(w22),
      .i4(w24));

PNU_AND4
     s5 (
      .o1(w18),
      .i4(b1_1_w32),
      .i3(b22_1_w25),
      .i1(w22),
      .i2(w24));

PNU_AND4
     s6 (
      .o1(w19),
      .i2(b1_1_w32),
      .i3(b22_0_w37),
      .i1(b22_1_w25),
      .i4(b1_0_w30));

PNU_AND4
     s7 (
      .o1(w20),
      .i3(w23),
      .i4(b22_0_w37),
      .i2(w31),
      .i1(b1_0_w30));

PNU_AND3
     s8 (
      .i1(w23),
      .o1(w27),
      .i3(b22_1_w25),
      .i2(w24));

PNU_AND3
     s9 (
      .i3(w23),
      .o1(w28),
      .i2(b22_0_w37),
      .i1(b22_1_w25));

PNU_AND3
     s10 (
      .o1(w34),
      .i2(b1_1_w32),
      .i1(w31),
      .i3(w22));

PNU_AND3
     s11 (
      .o1(w35),
      .i3(b1_1_w32),
      .i1(w31),
      .i2(b1_0_w30));

PNU_AND2
     s12 (
      .o1(w29),
      .i2(b22_0_w37),
      .i1(w24));

PNU_AND2
     s13 (
      .o1(w36),
      .i2(b1_0_w30),
      .i1(w22));

PNU_OR4
     s14 (
      .i1(w17),
      .i2(w18),
      .i3(w19),
      .i4(w20),
      .o1(w21));

PNU_OR3
     s15 (
      .o1(w26),
      .i1(w27),
      .i2(w28),
      .i3(w29));

PNU_OR3
     s16 (
      .o1(w33),
      .i1(w34),
      .i2(w35),
      .i3(w36));

endmodule

