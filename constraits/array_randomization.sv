// Code your design here
class random;
  rand bit [3:0] array[5];   //static array
  rand int  array_1 [];     //Dynamic array
  randc bit [3:0] queue[$]; //Queue
  constraint que {queue.size() == 5;}
  constraint arr {  array_1.size() > 5;array_1.size() < 10;} 
  constraint arr_1 {foreach (array_1[i]) 
    array_1[i] == i;} 
  
endclass

module main;
  initial begin
    random ran = new();
    ran.randomize();
    $display("The value of array = %p, array_1 = %p, queue = %p",ran.array,ran.array_1,ran.queue);
  end
endmodule
