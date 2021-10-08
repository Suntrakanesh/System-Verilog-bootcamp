// Code your design here
class static_var;
  bit [15:0] add;
  bit [7:0] data;
  static int count = 0;
  int count_1 = 0;
  function new(bit [15:0] a, bit [7:0] b);
    add = a;
    data = b;
    count++;
    count_1++;
    $display("The value is static count = %d, count_nor = %d, add = %h, data = %h",count,count_1,add,data);  
  endfunction
endclass

module main;
  static_var c,c1,c2;
  initial begin
  c = new(16'habcd,8'hab);
  c1 = new(16'hbcde,8'hbc);
  c2 = new(16'hcdef,8'hcd);
  end
endmodule
  
