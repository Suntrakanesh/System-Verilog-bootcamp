//Code for design
interface basic;
  logic dut_in;
  logic clk,rst;
  logic dut_out;
  modport face(output clk,rst,dut_in, input dut_out);
  modport tb(input clk,rst,dut_in, output dut_out);
endinterface

module face(basic fact);
  always@( posedge fact.clk or posedge fact.rst)
    begin
      if(fact.rst)
        begin
          fact.dut_out <= 1'b0;
        end
      else
        begin
          case(fact.dut_in)
            1'b0:begin
             fact.dut_out <= 1'b0;
            end
            default:begin
             fact.dut_out <= 1'b1;
            end
          endcase
        end
    end
  always@( negedge fact.clk or negedge fact.rst)
    begin
   fact.dut_out<= 1'b0;
    end
endmodule : face
  
//Code for test bench

// Code your testbench here
// or browse Examples


module tb();
  basic fact(); //Instantiation of interface
  int count = 0;
  //Instantiation of dut
  face dut0(fact.face);
  //Initialising block
  initial begin
    fact.clk <= 1'b1;
    fact.rst <= 1'b1;
    fact.dut_in <= 1'b0;
    $display("----------------------------------------------------------");
    $display("\t\t\t clk || reset || d \t || q \t");
    $display("----------------------------------------------------------");
    
  #20 fact.clk <= 1'b1;
  fact.rst <= 1'b1;
  fact.dut_in <= 1'b0;
  if (fact.dut_out == 1'b0)
    $display("@%t, \t\t\t || %b || %b || %b \t| %b \t||",$time, fact.clk, fact.rst, fact.dut_in, fact.dut_out);
  else begin
    count++;
    $display("ERROR!! @%t", $time);
    $display("Actual output: \t\t\t| %b \t||",fact.dut_out);
    $display("Actual output: \t\t\t| %b \t||",1'b0);
  end
  $display("----------------------------------------------------------");
  
  //Check for error
  if(count != 0)
    $display("----------------TEST FAILED-----------------------------");
  else
    $display("----------------TEST PASSED-----------------------------");
  
  #100 $finish();
  end
  
  //Clock generation
  initial begin
    fact.clk <= 1'b1;
    forever #2 fact.clk = ~fact.clk;
  end
  //Time format to be printed in log file
  initial
    $timeformat(-9, 0, "ns", 10);
  
endmodule
    
  
