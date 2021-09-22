module unpacked_struct;
  initial begin
  struct{
    string fruit;
    int num;
    byte a;
  }name;
    name = '{"apple",3,2};
    $display("The contents in structure = %p",name);
  name.fruit = "orange";
    name.a = 10;
  $display("The contents in structure = %p",name);
  end
endmodule
