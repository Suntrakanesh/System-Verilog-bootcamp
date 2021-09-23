module tb;
  int num[5] = '{5,1,2,3,4};
  initial begin
    $display("%p",num.sum());
    $display("%p",num.product());
    $display("%p",num.and());
    $display("%p",num.or());
    $display("%p",num.xor());
  end
endmodule
