module week03(A,B,S,C);

input A;
input B;
output S;
output C;

wire  w2;
wire  w3;
wire  w4;
wire  w5;

assign w5 = A;
assign w2 = B;
assign S = w4;
assign C = w3;

PNU_AND2
     s0 (
      .i2(w2),
      .o1(w4),
      .i1(w5));

PNU_XOR2
     s1 (
      .i2(w2),
      .o1(w3),
      .i1(w5));

endmodule

