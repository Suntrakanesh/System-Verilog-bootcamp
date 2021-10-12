virtual class base;
  int a = 10;
  function display();
    $display("Data = %d", a);
  endfunction
endclass

class child extends base;
  int b = 50;
  function display();
    $display("Data = %d, %d", a, b);
  endfunction
endclass

module tb;
  //   base b; // Since 'base class is declared as virtual, it should not be instanted.It should be only used for inheritance
//   b = new();
  child c = new();
  initial begin
//     b.display();
    c.display();
  end
endmodule
