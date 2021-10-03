interface signal(input clk);
  clocking clock @(posedge clk);
    default input #3ns output #2ns;
  endclocking
  logic data;
  logic enable;
  modport TB(input data,clk, output enable);
  modport DUT(input clk,enable, output data);
endinterface

module tb;
  bit clk;
  always #10 clk = ~clk;
  signal fact(clk);       //Create an interface object
  face dut0(fact.DUT);    //Instantiate DUT
  initial begin
    fact.enable <= 0;
    $display("[%t] The outcome is ",$time,fact.enable);
    #10 fact.enable <= 1;
    $display("[%t] The outcome is ",$time,fact.enable);
    #40 fact.enable <= 0;
    $display("[%t] The outcome is ",$time,fact.enable);
    #20 fact.enable <= 1;
    $display("[%t] The outcome is ",$time,fact.enable);
    #100 $finish;
  end
endmodule
// Code your design here
module face(signal fact);
  always @(posedge fact.clk)
      if (fact.enable)
        fact.data <= fact.data+1;
      else
        fact.data <= 0; 
endmodule
