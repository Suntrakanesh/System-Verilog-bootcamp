module operators;
  int array[9] = '{2,5,3,4,7,8,1,9,5};
  int a[$];
  initial begin
    a = array.min();
    $display("The minimum value = %p",a);
    a = array.max();
    $display("The maximum value = %p",a);
    a = array.unique();
    $display("The unique value = %p",a);
    a = array.unique(x) with (x>4);
    $display("The unique value with x>4 = %p",a);
    a = array.unique_index();
    $display("The unique value index = %p",a);
  end 
  endmodule
