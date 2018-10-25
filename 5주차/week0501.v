module week0501(Clk,rst,CNT10);

input Clk;
input rst;
output [3:0] CNT10;

wire  w5;
wire  w11;
wire  w17;
wire  w18;
wire  w20;
wire  w22;
wire  w23;
wire  w24;
wire  w25;
wire  w26;
wire  w27;
wire  w28;
wire [3:0] b21;
wire  w33;
wire  w34;
wire  w35;
wire  w21;
wire  w36;
wire  b21_0;
wire  b21_0_w32;
wire  b21_1;
wire  b21_1_w31;
wire  b21_2;
wire  b21_2_w30;
wire  b21_3;
wire  b21_3_w29;

assign w18 = Clk;
assign w17 = rst;
assign CNT10 = b21;

assign b21[3] = b21_3;
assign b21[2] = b21_2;
assign b21[1] = b21_1;
assign b21[0] = b21_0;

assign b21_0_w32 = {b21[0]};
assign b21_1_w31 = {b21[1]};
assign b21_2_w30 = {b21[2]};
assign b21_3_w29 = {b21[3]};

PNU_DFF
     s0 (
      .reset(w17),
      .clock(w18),
      .D(w23),
      .Q(b21_3));

PNU_DFF
     s1 (
      .reset(w17),
      .clock(w18),
      .Q(b21_2),
      .D(w21));

PNU_DFF
     s2 (
      .reset(w17),
      .clock(w18),
      .D(w27),
      .Q(b21_1));

PNU_DFF
     s3 (
      .reset(w17),
      .clock(w18),
      .D(w28),
      .Q(b21_0));

PNU_AND2
     s4 (
      .i2(w5),
      .o1(w20),
      .i1(b21_3_w29));

PNU_NOT
     s5 (
      .o1(w5),
      .i1(b21_0_w32));

PNU_AND3
     s6 (
      .o1(w22),
      .i3(b21_0_w32),
      .i2(b21_1_w31),
      .i1(b21_2_w30));

PNU_AND2
     s7 (
      .o1(w24),
      .i2(w34),
      .i1(b21_2_w30));

PNU_AND2
     s8 (
      .o1(w26),
      .i2(w35),
      .i1(b21_2_w30));

PNU_AND3
     s9 (
      .i1(w11),
      .o1(w25),
      .i3(b21_0_w32),
      .i2(b21_1_w31));

PNU_NOT
     s10 (
      .o1(w34),
      .i1(b21_1_w31));

PNU_NOT
     s11 (
      .o1(w35),
      .i1(b21_0_w32));

PNU_NOT
     s12 (
      .o1(w11),
      .i1(b21_2_w30));

PNU_AND2
     s14 (
      .o1(w27),
      .i2(w33),
      .i1(w36));

PNU_NOT
     s15 (
      .o1(w33),
      .i1(b21_3_w29));

PNU_NOT
     s16 (
      .o1(w28),
      .i1(b21_0_w32));

PNU_OR3
     s18 (
      .i1(w24),
      .i3(w25),
      .i2(w26),
      .o1(w21));

PNU_OR2
     s19 (
      .i1(w20),
      .i2(w22),
      .o1(w23));

PNU_XOR2
     s20 (
      .i2(b21_0_w32),
      .i1(b21_1_w31),
      .o1(w36));

endmodule

