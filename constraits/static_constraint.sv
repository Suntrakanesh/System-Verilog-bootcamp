class static_cons;
  rand bit [3:0] a;
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
        $display("The value of val = %p and value = %p",val.a,value.a);
       end
 value.con.constraint_mode(0);
      repeat(10)
      begin
        val.randomize();
        value.randomize();
        $display("The value of value = %p and value = %p",val.a,value.a);
      end
  end
  endmodule               
                 
