class inline;
  rand bit [3:0] a;
  constraint con { soft a > 3;a <= 15 ;}
endclass
//Evenif there is any conflict constraint available, soft keyword gives some flexibility to the constraint and the compiler gives no error...Hard constraint is similar to normal constraint
module main;
  initial begin
    inline val = new;
    val.randomize() with { a == 2;};
    $display("The value of a = %p",val.a);
    end
endmodule
