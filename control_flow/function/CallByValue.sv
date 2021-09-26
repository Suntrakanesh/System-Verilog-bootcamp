module tb;
  function int prod( int a, int b);
    return a*b;
  endfunction
  initial begin
    int num1, num2, out;
    num1 = 2;
    num2 = 3;
    out = prod( num1, num2 );
    $display("%d", out );
  end
endmodule
