// Code your design here
module array_locator;
  int array[9] = '{1,2,3,4,5,7,8,6,10};
  int a[$];
  initial begin
//Array locators operation
    a = array.find(x) with (x>2);
    $display("find(x) with (x>2) = %p",a);
    a = array.find_index(x) with (x==7);
    $display("find_index(x) with (x==7) = %p",a);
    a = array.find_first(x) with (x<10 & x>6);
    $display("find_first(x) with (x<10 & x>6) = %p",a);
    a = array.find_first_index with (item < 10 & item > 6);
    $display("find_first_index with (item < 10 & item > 6) = %p",a);
    a = array.find_last with (item < 10 & item > 6);
    $display("find_last with (item < 10 & item > 6) = %p",a);
    a = array.find_last_index with (item >8);
    $display("find_last_index with (item >8) = %p",a);
  end
endmodule
