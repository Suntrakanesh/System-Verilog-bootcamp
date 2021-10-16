class inside_fn;
  rand bit [1:0] data;
  rand bit [3:0] val;
  constraint con{ data inside{[3:7]};val inside{4,5};}
endclass
//It can also be used with conditional expression also
module main;
  initial begin
  inside_fn fun = new;
  fun.randomize();
  $display("The value of data = %p and value = %p",fun.data,fun.val);
  end
endmodule
  
  
  
