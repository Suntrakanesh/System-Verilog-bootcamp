class inside_fn;
  rand bit [1:0] data;
  rand bit [3:0] val;
  constraint con{ data == 3 -> val < 3;}
endclass

module main;
  initial begin
  inside_fn fun = new;
    repeat (20)
      begin
  fun.randomize();
  $display("The value of data = %p and value = %p",fun.data,fun.val);
      end
  end
endmodule
  
  
  
