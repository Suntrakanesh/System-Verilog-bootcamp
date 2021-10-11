class parameters #(type D = int);
  D data;
  function D mul(D a);
    return data*a;
  endfunction 
endclass

module main();
  parameters a1;
  parameters #(bit[7:0]) a2;
  parameters #(real) a3;
  initial begin
    a1 = new;
    a2 = new;
    a3 = new;
    a1.data = 25;
    $display("The value of multiplied factor = %d",a1.mul(2));
    a2.data = 4'b1000;
    $display("The value of multiplied factor = %b",a2.mul(10));
    a3.data = 35;
    $display("The value of multiplied factor = %d",a3.mul(2));
  end
endmodule
    
