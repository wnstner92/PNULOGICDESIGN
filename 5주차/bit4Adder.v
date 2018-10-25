module bit4Adder(A,B,Cin,Sout,Cout);

input [3:0] A;
input [3:0] B;
input Cin;
output [3:0] Sout;
output Cout;

wire [3:0] b0;
wire [3:0] b5;
wire  w11;
wire  w13;
wire  w14;
wire  w15;
wire [3:0] b18;
wire  w22;
wire  b0_0_w1;
wire  b0_1_w2;
wire  b0_2_w3;
wire  b0_3_w4;
wire  b5_0_w6;
wire  b5_1_w7;
wire  b5_2_w9;
wire  b5_3_w10;
wire  b18_0;
wire  b18_1;
wire  b18_2;
wire  b18_3;

assign b0 = A;
assign b5 = B;
assign w11 = Cin;
assign Sout = b18;
assign Cout = w22;

assign b18[3] = b18_3;
assign b18[2] = b18_2;
assign b18[1] = b18_1;
assign b18[0] = b18_0;

assign b0_0_w1 = {b0[0]};
assign b0_1_w2 = {b0[1]};
assign b0_2_w3 = {b0[2]};
assign b0_3_w4 = {b0[3]};
assign b5_0_w6 = {b5[0]};
assign b5_1_w7 = {b5[1]};
assign b5_2_w9 = {b5[2]};
assign b5_3_w10 = {b5[3]};

FullAdder
     s0 (
      .A(b0_0_w1),
      .B(b5_0_w6),
      .Cin(w11),
      .Cout(w13),
      .S(b18_0));

FullAdder
     s1 (
      .A(b0_1_w2),
      .B(b5_1_w7),
      .Cin(w13),
      .Cout(w14),
      .S(b18_1));

FullAdder
     s2 (
      .A(b0_2_w3),
      .B(b5_2_w9),
      .Cin(w14),
      .Cout(w15),
      .S(b18_2));

FullAdder
     s3 (
      .A(b0_3_w4),
      .B(b5_3_w10),
      .Cin(w15),
      .S(b18_3),
      .Cout(w22));

endmodule

