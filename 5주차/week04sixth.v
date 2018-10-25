module week04sixth(Dec,CLK,RST,Sum);

input [9:0] Dec;
input CLK;
input RST;
output [4:0] Sum;

wire [9:0] b0;
wire [3:0] b1;
wire [3:0] b5;
wire [3:0] b6;
wire [4:0] b14;
wire  w15;
wire  w16;
wire  w13;
wire  w12;
wire [4:0] b11;
wire  b14_4;
wire [3:0] b14_3to0;

assign b0 = Dec;
assign w16 = CLK;
assign w15 = RST;
assign Sum = b11;

assign b14[4] = b14_4;
assign b14[3:0] = b14_3to0[3:0];

week02te03
     s1 (
      .p0(b0),
      .p1(b1),
      .CHK(w12));

bit4Adder
     s4 (
      .A(b5),
      .B(b6),
      .Cout(b14_4),
      .Sout(b14_3to0),
      .Cin(w13));

week04fifth
     s7 (
      .Din(b1),
      .Dout(b5),
      .Dout1(b6),
      .RST(w15),
      .CLK(w16),
      .Ce(w12));

PNU_ZERO
     s5 (
      .o1(w13));

bit5Register
     s8 (
      .RST(w15),
      .CLK(w16),
      .Din(b14),
      .Dout(b11));

endmodule

