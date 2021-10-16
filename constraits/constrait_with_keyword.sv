class base;
  rand bit[3:0] array[6];
  constraint with_key { array.sum() with ( int'(item) ) == 12;  }
endclass

module tb;
  base b;
  initial begin
    b = new();
    b.randomize();
    $display("array = %p", b.array);
  end
endmodule
