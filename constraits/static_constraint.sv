class static_cons;
  rand bit [3:0] a;
  rand bit [3:0] b;
  constraint c {b>2;b<7;}
  static constraint con {a>3; a<10;}
endclass

module main;
  initial begin
  static_cons val = new;
    static_cons value = new;
    repeat(10)
      begin
        val.randomize();
        value.randomize();
        $display("The value of a = %p and value = %p, b = %p, b = %p",val.a,value.a,val.b,value.b);
       end
 value.con.constraint_mode(0);
    val.c.constraint_mode(0);
      repeat(10)
      begin
        val.randomize();
        value.randomize();
        $display("The value of a = %p and value = %p, b = %p, b = %p",val.a,value.a,val.b,value.b);
      end
  end
  endmodule               
                           
                 
