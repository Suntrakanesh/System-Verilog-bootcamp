module tb;
  string str_1 = "Hi";
  string str_2 = "HELLO";
  initial begin
    
    $display("length : %d", str_1.len());
    str_1.putc(1,"a");
    $display("%s", str_1);
    $display("String Lower: %s", str_2.tolower());
  
    $display("Compare: %0d",str_2.compare(str_1));
    $display("%s",str_2.substr(3,4));
  end
endmodule
