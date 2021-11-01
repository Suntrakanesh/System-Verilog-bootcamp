module tb;
  bit a, clk;
  always #5 clk = ~clk;
  sequence ass;
    @(posedge clk) $stable(a);
  endsequence
  always #20 a = ~a;
    
  initial begin
    $dumpvars;
    $dumpfile("assert.vcd");
  end
  
  assert property (ass);  
    
  initial begin
    #200 $finish;
  end
    
endmodule
