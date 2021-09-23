module tb;
  int num[10] = '{1,5,7,13,15,10,11,17,7,4};
  initial begin
    num.reverse();
    $display("%p",num);
    num.sort();
    $display("%p",num);
    num.rsort();
    $display("%p",num);
    num.shuffle();
    $display("%p",num);
  end
endmodule
