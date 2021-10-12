class base;
  rand int a;
  randc int b;
  
  constraint a_con { a < 5; a > 1; }
  constraint b_con { b > 2 ; b < 6;}
  
  function display();
    $display("Rand a = %d, Rand b = %d", a, b);
  endfunction
endclass

module tb;
  base b = new();
  initial begin
  repeat(5) begin
    b.randomize();
    b.display();
  end
  end
endmodule
