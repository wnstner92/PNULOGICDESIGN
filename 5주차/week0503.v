module week0503(Dec,CLK,RST,Dout,ADout);

input [9:0] Dec;
input CLK;
input RST;
output [3:0] Dout;
output [1:0] ADout;

wire [9:0] b2;
wire  w4;
wire [3:0] b5;
wire [3:0] b11;
wire  w11;
wire [3:0] b8;
wire [3:0] b9;
wire [3:0] b12;
wire  w12;
wire  w13;
wire [1:0] b8_1to0_b10;
wire  b12_0_w10;

assign b2 = Dec;
assign w11 = CLK;
assign w4 = RST;
assign Dout = b5;
assign ADout[1:0] = b8[1:0];

assign b8_1to0_b10[1:0] = {b8[1:0]};
assign b12_0_w10 = {b12[0]};

week02te03
     s0 (
      .p0(b2),
      .p1(b11),
      .CHK(w12));

bit4shift3
     s1 (
      .RST(w4),
      .Din(b11),
      .CLK(w11),
      .Dout(b8),
      .Dout2(b9),
      .Dout1(b12),
      .Ce(w12));

week0502
     s2 (
      .RST(w4),
      .Dout(b5),
      .CLK(w11),
      .Din(b9),
      .AD(b8_1to0_b10),
      .RW(w13));

PNU_AND2
     s3 (
      .i1(b12_0_w10),
      .i2(w12),
      .o1(w13));

endmodule

