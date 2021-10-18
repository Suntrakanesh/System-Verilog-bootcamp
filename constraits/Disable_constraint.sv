class inline;
  rand bit [3:0] a;
  constraint con { a > 3; a < 7 ;}
endclass

module main;
  initial begin
    inline val = new;
    if (val.con.constraint_mode())
      $display("Constraint is enabled");
    else
      $display("Constraint is disabled");
    val.randomize();
    $display("The value of a = %p",val.a);
    val.con.constraint_mode(0);
      if (val.con.constraint_mode())
      $display("Constraint is enabled");
    else
      $display("Constraint is disabled");
    end
endmodule
