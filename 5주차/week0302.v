module week0302(A,B,Cin,S,Cout);

input A;
input B;
input Cin;
output S;
output Cout;

wire  w4;
wire  w7;
wire  w8;
wire  w10;
wire  w11;
wire  w12;
wire  w13;
wire  w9;
wire  w14;

assign w12 = A;
assign w13 = B;
assign w9 = Cin;
assign S = w7;
assign Cout = w8;

PNU_AND2
     s0 (
      .o1(w4),
      .i1(w12),
      .i2(w13));

PNU_XOR2
     s1 (
      .i1(w12),
      .i2(w13),
      .o1(w14));

PNU_XOR2
     s2 (
      .o1(w7),
      .i2(w9),
      .i1(w14));

PNU_AND2
     s3 (
      .o1(w10),
      .i1(w9),
      .i2(w14));

PNU_AND2
     s4 (
      .o1(w11),
      .i1(w12),
      .i2(w13));

PNU_OR2
     s5 (
      .o1(w8),
      .i1(w10),
      .i2(w11));

endmodule

