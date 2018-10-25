module week0501_tb;

wire [3:0] CNT10;
reg Clk;
reg rst;

week0501
 U0 (
  .CNT10(CNT10),
  .Clk(Clk),
  .rst(rst));

  initial
  begin
    Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
    #100 Clk = 1'b0;
    #100 Clk = 1'b1;
  end

  initial
  begin
    rst = 1'b1;
    #100 rst = 1'b0;
  end

endmodule
