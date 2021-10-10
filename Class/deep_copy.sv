class base;
  int data;
  function new();
    data = 5;
  endfunction
endclass

class child;
  int addr, data;
  base b;
  function new ( int addr, int data );
    this.addr = addr;
    this.data = data;
    b = new();
  endfunction
  
  function void copy( child cp );
    this.addr = cp.addr;
    this.data = cp.data;
  endfunction
  
  function void display();
    $display("Addr = %d, Data = %d, Base Data = %d", addr, data, b.data );
  endfunction
endclass

module shallow_copy;
  child c1, c2;
  initial begin
    c1 = new(8080, 55);
    c1.display();
    c2 = new(99, 60);
    c2.copy(c1);
    c2.display();
    c1.addr = 9095;
    c1.data = 60;
    c1.b.data = 10;
    c1.display();
    c2.display();
  end
endmodule
