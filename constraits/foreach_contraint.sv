class base;
  rand int a[5];
  constraint array { foreach(a[i]) {
                              a[i] == i 
                         }; }
endclass

module tb;
  base b;
  initial begin
    b= new ();
    b.randomize();
    $display("Array %p", b.a);
  end
endmodule
