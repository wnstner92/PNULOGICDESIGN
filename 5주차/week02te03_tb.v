module week02te03_tb;

wire CHK;
reg [9:0] p0;
wire [3:0] p1;

week02te03
 U0 (
  .CHK(CHK),
  .p0(p0),
  .p1(p1));

  initial
  begin
    p0 = 10'b1000000000;
    #500 p0 = 10'b0100000000;
    #500 p0 = 10'b0010000000;
    #500 p0 = 10'b0001000000;
    #500 p0 = 10'b0000100000;
    #500 p0 = 10'b0000010000;
    #500 p0 = 10'b0000001000;
    #500 p0 = 10'b0000000100;
    #500 p0 = 10'b0000000010;
    #500 p0 = 10'b0000000001;
    #500 p0 = 10'b0000000000;
  end

endmodule
