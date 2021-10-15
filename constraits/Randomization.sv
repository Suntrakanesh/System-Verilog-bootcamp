class random;
  rand bit [7:0] a;
  randc bit [3:0] b;
endclass

module main;
  random ran = new();
  initial begin
    for(int i = 0;i<20;i++)
    begin
    ran.randomize();
  $display("The value of a = %b and b = %b",ran.a,ran.b);
    end
  end
endmodule
