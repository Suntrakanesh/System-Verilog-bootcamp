// Code your design here
class base;
  function display();
    $display("Base Class");
  endfunction
endclass
class child extends base;
  function new();
    super.new();
  endfunction
  
  function display();
    super.display();
    $display("Child Class");
   endfunction
endclass
module super_tb;
//   base b;
  child c;
  initial begin
    c = new();
    c.display();
  end
endmodule
  
  
