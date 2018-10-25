module week0301(A,B,S,C);

input A;
input B;
output S;
output C;

wire  w2;
wire  w5;
wire  w3;
wire  w4;

assign w3 = A;
assign w4 = B;
assign S = w2;
assign C = w5;

PNU_XOR2
     s0 (
      .o1(w2),
      .i1(w3),
      .i2(w4));

PNU_AND2
     s1 (
      .o1(w5),
      .i1(w3),
      .i2(w4));

endmodule

