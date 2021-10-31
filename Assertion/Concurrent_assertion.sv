// Code your design here
module main;
  bit a,b;
  bit clk;
  always #10 clk = ~clk;
  initial begin
    for(int i=0;i<10;i++)
    begin
      @(posedge clk);
      a <= $random;
      b <= $random;
      $display("[%t] a = %b b = %b",$time,a,b);
    end
    #10 $finish;
  end
  assert property(@(posedge clk)a & b);
    initial begin
      $dumpvars;
      $dumpfile("x.vcd");
      
    end
    endmodule
