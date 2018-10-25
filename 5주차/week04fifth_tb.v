module week04fifth_tb;

reg CLK;
reg Ce;
reg [3:0] Din;
wire [3:0] Dout;
wire [3:0] Dout1;
reg RST;

week04fifth
 U0 (
  .CLK(CLK),
  .Ce(Ce),
  .Din(Din),
  .Dout(Dout),
  .Dout1(Dout1),
  .RST(RST));

  initial
  begin
    CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
    #100 CLK = 1'b0;
    #100 CLK = 1'b1;
  end

  initial
  begin
    Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
    #200 Ce = 1'b0;
    #200 Ce = 1'b1;
  end

  initial
  begin
    Din = 4'b0000;
    #200 Din = 4'b0001;
    #200 Din = 4'b0010;
    #200 Din = 4'b0100;
    #200 Din = 4'b1000;
    #200 Din = 4'b0000;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
    #100 RST = 1'b0;
  end

endmodule
