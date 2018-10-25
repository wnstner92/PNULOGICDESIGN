module week04first02_tb;

reg CLK;
reg Ce;
reg Din;
wire Qout;
reg RST;

week04first02
 U0 (
  .CLK(CLK),
  .Ce(Ce),
  .Din(Din),
  .Qout(Qout),
  .RST(RST));

  initial
  begin
    CLK = 1'b1;
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
    #100 CLK = 1'b0;
  end

  initial
  begin
    Ce = 1'b0;
    #800 Ce = 1'b1;
    #200 Ce = 1'b0;
    #1000 Ce = 1'b1;
    #200 Ce = 1'b0;
    #800 Ce = 1'b1;
    #400 Ce = 1'b0;
    #600 Ce = 1'b1;
    #200 Ce = 1'b0;
  end

  initial
  begin
    Din = 1'b0;
    #600 Din = 1'b1;
    #600 Din = 1'b0;
    #1800 Din = 1'b1;
    #200 Din = 1'b0;
    #800 Din = 1'b1;
    #200 Din = 1'b0;
  end

  initial
  begin
    RST = 1'b0;
    #200 RST = 1'b1;
    #200 RST = 1'b0;
  end

endmodule
