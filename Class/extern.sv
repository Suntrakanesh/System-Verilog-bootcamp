class extern_fun;
  bit [15:0] add;
  bit [7:0] data;
  function new(bit [15:0] a, bit [7:0] b);
    add = a;
    data = b;
  endfunction 
  extern function void display();
  endclass
    
   function void extern_fun::display();
    $display("The value of add = %h, data = %h",add,data); 
  endfunction

module main;
  extern_fun c;
  initial begin
  c = new(16'habcd,8'hab);
  c.display();
  end
endmodule
  
