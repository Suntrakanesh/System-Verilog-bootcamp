module if_else;
  int x = 5;
  initial begin
//Usage of priority if with else function
    priority if (x == 3)
      $display("The value of x = %d",x);
    else if (x == 7)
      $display("The value of x = %d",x);
    else
      $display("The value of x is neither 3 nor 5");
//Usage of priority if without else function
    priority if (x == 5)
      $display("The value of x = %d",x);
    else if (x == 7)
      $display("The value of x = %d",x);
  end 
endmodule
