class base;
  rand bit[3:0] num;
  constraint methods { num < 7; }
  function void pre_randomize();
    $display("pre_randomize() will be called before randomization ");
  endfunction
  
  function void post_randomize();
    $display("post_randomize() will be called after randomization ");
  endfunction
  
endclass

module tb;
  base b;
  initial begin
    b = new();
    if(b.randomize())
      $display("Randomization is successful and value is %d", b.num);
  end
endmodule
