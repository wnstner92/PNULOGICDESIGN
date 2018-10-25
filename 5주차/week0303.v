module week0303(A,B,S,C4,Cin);

input [3:0] A;
input [3:0] B;
output [3:0] S;
output C4;
input Cin;

wire [3:0] b2;
wire [3:0] b1;
wire  w10;
wire  w11;
wire  w12;
wire [3:0] b13;
wire  w18;
wire  w19;
wire  b2_0_w2;
wire  b1_0_w3;
wire  b2_1_w4;
wire  b1_1_w5;
wire  b2_2_w6;
wire  b1_2_w7;
wire  b2_3_w8;
wire  b1_3_w9;
wire  b13_0;
wire  b13_1;
wire  b13_2;
wire  b13_3;

assign b2 = A;
assign b1 = B;
assign S = b13;
assign C4 = w18;
assign w19 = Cin;

assign b13[3] = b13_3;
assign b13[2] = b13_2;
assign b13[1] = b13_1;
assign b13[0] = b13_0;

assign b2_0_w2 = {b2[0]};
assign b1_0_w3 = {b1[0]};
assign b2_1_w4 = {b2[1]};
assign b1_1_w5 = {b1[1]};
assign b2_2_w6 = {b2[2]};
assign b1_2_w7 = {b1[2]};
assign b2_3_w8 = {b2[3]};
assign b1_3_w9 = {b1[3]};

week0302
     s1 (
      .A(b2_0_w2),
      .B(b1_0_w3),
      .Cout(w10),
      .S(b13_0),
      .Cin(w19));

week0302
     s2 (
      .A(b2_1_w4),
      .B(b1_1_w5),
      .Cin(w10),
      .Cout(w11),
      .S(b13_1));

week0302
     s4 (
      .A(b2_2_w6),
      .B(b1_2_w7),
      .Cin(w11),
      .Cout(w12),
      .S(b13_2));

week0302
     s5 (
      .A(b2_3_w8),
      .B(b1_3_w9),
      .Cin(w12),
      .S(b13_3),
      .Cout(w18));

endmodule

