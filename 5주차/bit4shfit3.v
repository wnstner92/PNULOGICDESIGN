module bit4shfit3(Din,Dout,CLK,RST,Ce,Dout2,Dout1);

input [3:0] Din;
output [3:0] Dout;
input CLK;
input RST;
input Ce;
output [3:0] Dout2;
output [3:0] Dout1;

wire [3:0] b1;
wire [3:0] b5;
wire [3:0] b6;
wire  w6;
wire  w7;
wire  w8;
wire [3:0] b7;

assign b1 = Din;
assign Dout = b6;
assign w7 = CLK;
assign w8 = RST;
assign w6 = Ce;
assign Dout2 = b5;
assign Dout1 = b7;

week04fourth
     s0 (
      .Din(b1),
      .Dout(b5),
      .Ce(w6),
      .CLK(w7),
      .RST(w8));

week04fourth
     s1 (
      .Din(b5),
      .Ce(w6),
      .CLK(w7),
      .RST(w8),
      .Dout(b7));

week04fourth
     s2 (
      .Dout(b6),
      .Ce(w6),
      .CLK(w7),
      .RST(w8),
      .Din(b7));

endmodule

