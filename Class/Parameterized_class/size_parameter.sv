class parameters #(size = 4);
  bit [size-1:0] data;
endclass
//Parameterization of class by passing size as argument is only possible for single resolved data types such as reg, bit, logic etc..
module main;
  parameters #(16) a1;
  parameters #(.size(8)) a2;
  typedef parameters #(4) value;
  value a3;
  
  initial begin
    a1 = new;
    a2 = new;
    a3 = new;
    $display("The size of a1 = %d",$bits(a1.data));
    $display("The size of a2 = %d",$bits(a2.data));
    $display("The size of a3 = %d",$bits(a3.data));
  end
endmodule
