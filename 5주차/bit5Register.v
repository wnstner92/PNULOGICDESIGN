module bit5Register(CLK,RST,Dout,Din);

input CLK;
input RST;
output [4:0] Dout;
input [4:0] Din;

wire [4:0] b13;
wire  w15;
wire  w16;
wire [4:0] b9;
wire  b13_0;
wire  b13_1;
wire  b13_2;
wire  b13_3;
wire  b13_4;
wire  b9_0_w24;
wire  b9_1_w25;
wire  b9_2_w13;
wire  b9_3_w14;
wire  b9_4_w17;

assign w16 = CLK;
assign w15 = RST;
assign Dout = b13;
assign b9 = Din;

assign b13[4] = b13_4;
assign b13[3] = b13_3;
assign b13[2] = b13_2;
assign b13[1] = b13_1;
assign b13[0] = b13_0;

assign b9_0_w24 = {b9[0]};
assign b9_1_w25 = {b9[1]};
assign b9_2_w13 = {b9[2]};
assign b9_3_w14 = {b9[3]};
assign b9_4_w17 = {b9[4]};

PNU_DFF
     s9 (
      .Q(b13_0),
      .reset(w15),
      .clock(w16),
      .D(b9_0_w24));

PNU_DFF
     s1 (
      .Q(b13_1),
      .reset(w15),
      .clock(w16),
      .D(b9_1_w25));

PNU_DFF
     s2 (
      .Q(b13_2),
      .reset(w15),
      .clock(w16),
      .D(b9_2_w13));

PNU_DFF
     s3 (
      .Q(b13_3),
      .reset(w15),
      .clock(w16),
      .D(b9_3_w14));

PNU_DFF
     s4 (
      .Q(b13_4),
      .reset(w15),
      .clock(w16),
      .D(b9_4_w17));

endmodule

