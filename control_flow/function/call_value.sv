module tb;
  function int call_value( int a);
    a=a+2;
  endfunction
  initial begin
    int num1;
    num1 = 2;
    call_value( num1 );
    $display("%d", num1 );
  end
endmodule
