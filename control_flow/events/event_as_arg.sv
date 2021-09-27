module tb;
  event a;
  initial begin
    fork
      event_call(a);
      #5 -> a;
    join
  end
  
  task event_call( event a );
    $display("[%t]waiting for the event to trigger", $time);
    wait(a.triggered);
    $display("[%t]event is triggered", $time);
  endtask
endmodule
