
module tb;
  reg clk;
  always #10 clk = ~clk;
  ms_if if0 (clk);
  d_top d0 (if0);
  
  initial begin
    $dumpvars;
    $dumpfile("test.vcd");
  end
  initial begin
    clk <= 0;
    if0.rstn <= 0;
    repeat (5) @(posedge clk);
    if0.rstn <= 1;
    repeat(20) @ (posedge clk);
    $finish;
  end
endmodule
