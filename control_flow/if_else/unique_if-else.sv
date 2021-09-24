// Code your design here
module if_else;
  int x = 5;
  initial begin
//Usage of unique if with else function
    unique if (x == 3)
      $display("The value of x = %d",x);
    else if (x == 7)
      $display("The value of x = %d",x);
    else
      $display("The value of x is neither 3 nor 5");
//Usage of unique if without else function
    unique if (x == 3)
      $display("The value of x = %d",x);
    else if (x == 7)
      $display("The value of x = %d",x);
//Usage of unique if with else function with multiple match
    unique if (x == 5)
      $display("The value of x = %d",x);
    else if (x == 5)
      $display("The value of x = %d",x);
    else
      $display("The value of x is nill");
  end 
endmodule
