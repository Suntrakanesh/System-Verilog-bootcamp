class inline;
  rand bit [3:0] a;
  constraint con { a <= 15 ;}
endclass

module main;
  initial begin
    inline val = new;
    val.randomize() with { a == 10;};
    $display("The value of a = %p",val.a);
    end
endmodule
