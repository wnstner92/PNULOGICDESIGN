module week04third(CLK,Din,RST,Q0,Q1,Q2,Q3);

input CLK;
input Din;
input RST;
output Q0;
output Q1;
output Q2;
output Q3;

wire  w3;
wire  w4;
wire  w5;
wire  w6;
wire  w7;
wire  w8;
wire  w9;

assign w8 = CLK;
assign w3 = Din;
assign w9 = RST;
assign Q0 = w7;
assign Q1 = w6;
assign Q2 = w5;
assign Q3 = w4;

PNU_DFF
     s0 (
      .D(w3),
      .Q(w4),
      .clock(w8),
      .reset(w9));

PNU_DFF
     s1 (
      .D(w4),
      .Q(w5),
      .clock(w8),
      .reset(w9));

PNU_DFF
     s2 (
      .D(w5),
      .Q(w6),
      .clock(w8),
      .reset(w9));

PNU_DFF
     s3 (
      .D(w6),
      .Q(w7),
      .clock(w8),
      .reset(w9));

endmodule

