module week04second(Din,CLK,Qout,RST);

input Din;
input CLK;
output Qout;
input RST;

wire  w0;
wire  w1;
wire  w2;
wire  w3;

assign w0 = Din;
assign w1 = CLK;
assign Qout = w2;
assign w3 = RST;

PNU_DFF
     s5 (
      .D(w0),
      .clock(w1),
      .Q(w2),
      .reset(w3));

endmodule

