module events;
  event name; //event is used for the processes to be trigger and wait
  initial begin
    #20 -> name;
    $display("The event 1 is triggered");
  end
  initial begin
    $display("The event 2 is waiting for triggering");
    @(name);
    $display("The event 2 received trigger");
  end
  initial begin
    $display("The event 3 is waiting for triggering");
    wait(name.triggered);
    $display("The event 3 received trigger");
  end
endmodule
