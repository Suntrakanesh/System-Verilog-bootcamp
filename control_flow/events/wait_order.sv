module events;
  event a,b,c; //event is used for the processes to be trigger and wait
  initial begin
    #10 ->a;
    #10 ->b;
    #10 ->c;
  end
  initial begin
    wait_order(a,b,c)
    $display("The events are triggered in order");
    else
      $display("The events are not triggered in order of a,b,c");  
  end
  
endmodule
