module week030201(A,B,Sum,CHK2);

input [9:0] A;
input [9:0] B;
output [4:0] Sum;
output CHK2;

wire [9:0] b0;
wire [9:0] b1;
wire [3:0] b2;
wire [3:0] b3;
wire [4:0] b7;
wire  w9;
wire  w10;
wire  w11;
wire  b7_4;
wire [3:0] b7_3to0;

assign b0 = A;
assign b1 = B;
assign Sum = b7;
assign CHK2 = w9;

assign b7[4] = b7_4;
assign b7[3:0] = b7_3to0[3:0];

week0303
     s0 (
      .A(b2),
      .B(b3),
      .C4(b7_4),
      .S(b7_3to0));

week02te03
     s2 (
      .p0(b0),
      .p1(b2),
      .CHK(w10));

week02te03
     s3 (
      .p0(b1),
      .p1(b3),
      .CHK(w11));

PNU_AND2
     s4 (
      .o1(w9),
      .i1(w10),
      .i2(w11));

endmodule

