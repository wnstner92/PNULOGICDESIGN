module week0303fi(A,B,Gt,Lt,Eq);

input [3:0] A;
input [3:0] B;
output Gt;
output Lt;
output Eq;

wire [3:0] b0;
wire [3:0] b1;
wire  w17;
wire  w16;
wire  w13;
wire  w21;
wire  w15;
wire  w22;
wire  w19;
wire  w23;
wire  w18;
wire  w20;
wire  w24;
wire [1:0] b0_3to2_b2;
wire [1:0] b0_1to0_b3;
wire [1:0] b1_1to0_b4;
wire [1:0] b1_3to2_b5;

assign b0 = A;
assign b1 = B;
assign Gt = w21;
assign Lt = w15;
assign Eq = w24;

assign b0_3to2_b2[1:0] = {b0[3:2]};
assign b0_1to0_b3[1:0] = {b0[1:0]};
assign b1_1to0_b4[1:0] = {b1[1:0]};
assign b1_3to2_b5[1:0] = {b1[3:2]};

week02re02
     s4 (
      .A(b0_3to2_b2),
      .B(b1_3to2_b5),
      .Gt(w16),
      .Lt(w19),
      .Eq(w18));

week02re02
     s1 (
      .A(b0_1to0_b3),
      .B(b1_1to0_b4),
      .Gt(w13),
      .Lt(w23),
      .Eq(w20));

PNU_OR2
     s2 (
      .i2(w17),
      .i1(w16),
      .o1(w21));

PNU_OR2
     s3 (
      .o1(w15),
      .i2(w22),
      .i1(w19));

PNU_AND2
     s5 (
      .o1(w17),
      .i2(w13),
      .i1(w18));

PNU_AND2
     s6 (
      .o1(w22),
      .i2(w23),
      .i1(w18));

PNU_AND2
     s8 (
      .i1(w18),
      .i2(w20),
      .o1(w24));

endmodule

