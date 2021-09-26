module tb;
  task sum ( input [7:0] a, b, output [7:0] c );
    begin
      c = a+b;
    end
  endtask
  initial begin
    reg [7:0] num1, num2, out;
    num1 = 2;
    num2 = 3;
    sum( num1, num2, out);
    $display("%d",out);
  end
