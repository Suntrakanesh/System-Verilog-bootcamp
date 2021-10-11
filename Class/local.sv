class locals;
  int data;
  local bit[3:0] value;
  function display(int a,bit[3:0] b);
    data = a;
    value = b;
    $display("The value of data = %d and value = %b",data,value);
  endfunction
endclass

module main;
  locals fun = new;
  initial begin
    fun.display(25,'b111);
    //$display("The value of data = %d and value = %b",fun.data,fun.value) [Here, data variable value cannot be accessed outside the class due to the local keyword before it] and evenif parent class has local variable associated with it,it is not visible to child class and it cannot be accessed from the child class 
    $display("The value of data = %d",fun.data);
  end
endmodule
  
  
