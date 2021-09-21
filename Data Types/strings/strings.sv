module tb;
  
  string tut = "Hello World";
  initial begin
    $display("%s", tut);
    foreach ( tut[i]) begin
      $display("%s", tut[i]);
    end
  end
  
endmodule
