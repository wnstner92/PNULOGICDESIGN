module week04first_tb;

reg CLK;
reg Din;
wire Qout;
reg RST;

week04first
 U0 (
  .CLK(CLK),
  .Din(Din),
  .Qout(Qout),
  .RST(RST));

  initial
  begin
    CLK = 1'b0;
    #300 CLK = 1'b1;
    #300 CLK = 1'b0;
    #200 CLK = 1'b1;
    #500 CLK = 1'b0;
    #200 CLK = 1'b1;
    #700 CLK = 1'b0;
  end

  initial
  begin
    Din = 1'b0;
    #300 Din = 1'b1;
    #100 Din = 1'b0;
    #300 Din = 1'b1;
    #400 Din = 1'b0;
    #400 Din = 1'b1;
  end

  initial
  begin
    RST = 1'b0;
    #100 RST = 1'b1;
    #100 RST = 1'b0;
    #1700 RST = 1'b1;
    #100 RST = 1'b0;
  end

endmodule
