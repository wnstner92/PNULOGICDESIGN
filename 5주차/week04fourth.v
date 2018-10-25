module week04fourth(Ce,Din,CLK,RST,Dout);

input Ce;
input [3:0] Din;
input CLK;
input RST;
output [3:0] Dout;

wire [3:0] b1;
wire [3:0] b8;
wire  w13;
wire  w16;
wire  w15;
wire  b1_0_w14;
wire  b1_1_w17;
wire  b1_2_w18;
wire  b8_0;
wire  b8_1;
wire  b8_2;
wire  b1_3_w21;
wire  b8_3;

assign w13 = Ce;
assign b1 = Din;
assign w16 = CLK;
assign w15 = RST;
assign Dout = b8;

assign b8[3] = b8_3;
assign b8[2] = b8_2;
assign b8[1] = b8_1;
assign b8[0] = b8_0;

assign b1_0_w14 = {b1[0]};
assign b1_1_w17 = {b1[1]};
assign b1_2_w18 = {b1[2]};
assign b1_3_w21 = {b1[3]};

PNU_DFF_Ce
     s4 (
      .Ce(w13),
      .D(b1_3_w21),
      .clock(w16),
      .reset(w15),
      .Q(b8_3));

PNU_DFF_Ce
     s5 (
      .D(b1_2_w18),
      .Q(b8_2),
      .Ce(w13),
      .clock(w16),
      .reset(w15));

PNU_DFF_Ce
     s6 (
      .D(b1_1_w17),
      .Q(b8_1),
      .Ce(w13),
      .clock(w16),
      .reset(w15));

PNU_DFF_Ce
     s7 (
      .D(b1_0_w14),
      .Q(b8_0),
      .Ce(w13),
      .clock(w16),
      .reset(w15));

endmodule

