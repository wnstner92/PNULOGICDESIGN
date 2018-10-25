module week04fifth(Din,Dout,CLK,RST,Ce,Dout1);

input [3:0] Din;
output [3:0] Dout;
input CLK;
input RST;
input Ce;
output [3:0] Dout1;

wire [3:0] b1;
wire  w2;
wire  w3;
wire [3:0] b4;
wire  w5;
wire [3:0] b5;

assign b1 = Din;
assign Dout = b4;
assign w2 = CLK;
assign w3 = RST;
assign w5 = Ce;
assign Dout1 = b5;

week04fourth
     s0 (
      .Din(b1),
      .CLK(w2),
      .RST(w3),
      .Ce(w5),
      .Dout(b5));

week04fourth
     s1 (
      .CLK(w2),
      .RST(w3),
      .Dout(b4),
      .Ce(w5),
      .Din(b5));

endmodule

