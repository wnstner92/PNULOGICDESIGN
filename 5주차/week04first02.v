module week04first02(Ce,Din,Qout,CLK,RST);

input Ce;
input Din;
output Qout;
input CLK;
input RST;

wire  w0;
wire  w1;
wire  w2;
wire  w3;
wire  w4;
wire  w5;

assign w1 = Ce;
assign w2 = Din;
assign Qout = w3;
assign w4 = CLK;
assign w5 = RST;

PNU_DFF
     s0 (
      .D(w0),
      .Q(w3),
      .clock(w4),
      .reset(w5));

PNU_MUX2
     s1 (
      .o1(w0),
      .e1(w1),
      .i2(w2),
      .i1(w3));

endmodule

