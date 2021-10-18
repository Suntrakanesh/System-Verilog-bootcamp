
class base;
  rand int a, b;
endclass

module tb;
  base b_base;
  initial begin
    b_base = new();
    b_base.rand_mode(0);
    if(b_base.a.rand_mode()) begin
      if(b_base.b.rand_mode()) begin
       $display("Randomization is enabled");
      end
    end
    else begin
      $display("Randomization is disabled");
    end
    
    b_base.a.rand_mode(1); //change this '1' to '0' and see the change
    if(b_base.a.rand_mode())
      $display("Enabling randomization for variable a");
    else
      $display("Disabling randomization for variable a");
    
    b_base.b.rand_mode(1); //change this '1' to '0' and see the change
    if(b_base.b.rand_mode())
      $display("Enabling randomization for variable b");
    else
      $display("Disabling randomization for variable b");
    
  end
endmodule
    
    
