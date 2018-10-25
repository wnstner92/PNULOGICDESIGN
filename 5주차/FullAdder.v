module FullAdder(A,B,Cin,S,Cout);

input A;
input B;
input Cin;
output S;
output Cout;

wire  w6;
wire  w8;
wire  w5;
wire  w7;
wire  w9;
wire  w10;
wire  w11;
wire  w12;

assign w10 = A;
assign w9 = B;
assign w5 = Cin;
assign S = w11;
assign Cout = w12;

PNU_XNOR2
     s2 (
      .o1(w7),
      .i2(w9),
      .i1(w10));

PNU_XNOR2
     s1 (
      .i2(w5),
      .i1(w7),
      .o1(w11));

PNU_AND2
     s3 (
      .o1(w6),
      .i1(w5),
      .i2(w7));

PNU_AND2
     s4 (
      .o1(w8),
      .i1(w9),
      .i2(w10));

PNU_OR2
     s5 (
      .i1(w6),
      .i2(w8),
      .o1(w12));

endmodule

