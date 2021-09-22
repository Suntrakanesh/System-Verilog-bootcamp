module tb;
  
  int num1 [$] = '{1,2,3,4,5};
  int num2 [$];
  initial begin
  num2 = num1;
  $display("%p", num2);
  num2 = {};//delete elements
  $display("%p", num2);
  num1[3]= 20;
  $display("%p", num1);
  num1.insert(3, 30);//insert element
  $display("%p", num1);
  num1 = {num1, 40}; //append
  $display("%p", num1);
  num1 = {50, num1};
  $display("%p", num1);//append
  end
  
endmodule
