class base;
  rand bit[3:0] num1;
  rand bit num2;
  constraint solve_before { num2 -> num1 == 3 ; 
                            solve num2 before num1;} 
endclass

module tb;
  base b;
  initial begin
    b = new();
    repeat(10) begin
      b.randomize();
      $display("num2 = %d, num1 = %d", b.num2, b.num1);
    end
  end
endmodule
