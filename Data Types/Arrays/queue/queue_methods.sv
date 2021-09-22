module tb;

  string array [$] = { "CSK", "RCB", "KKR", "MI" };
  
  initial begin
  $display("%p", array);
  $display("%d", array.size());
    
  array.insert(2, "SRH");
  $display("%p", array);
    
  array.push_front("KXIP");
  $display("%p", array);
    
  array.push_back("DD");
  $display("%p", array);
    
  $display("%s", array.pop_front());
  $display("%s", array.pop_back());  
    
  end
endmodule
