module case_fn;
  int x = 5;
  initial begin
//Usage of case function with unique case
    unique case (x)
      4:$display("The value of x = %d",x);
      6:$display("The value of x = %d",x);
    endcase
//Usage of case function with unique case with multiple matches
    unique case (x)
      5:$display("The value of x = %d",x);
      5:$display("The value of x = %d",x);
      6:$display("The value of x = %d",x);
    endcase
//Usage of case function with priority case with multiple matches
    priority case (x)
      5:$display("The value of x = %d",x);
      5:$display("The value of x = %d",x);
      6:$display("The value of x = %d",x);
    endcase
    end 
endmodule
