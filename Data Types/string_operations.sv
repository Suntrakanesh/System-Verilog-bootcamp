// Code your design here
module tb;
  string str_1 = "Hi";
  string str_2 = "Hello";
  initial begin
  if( str_1 == str_2 )
    $display("%s is equal to %s", str_1, str_2);
  else
    $display("%s is not equal to %s", str_1, str_2);
  if( str_1 < str_2 )
    $display("%s is lesser than %s", str_1, str_2);
  
    $display("Concatenation: %s",{ str_1," ", str_2});
    $display("%s",{3{str_1}});
  end
endmodule
