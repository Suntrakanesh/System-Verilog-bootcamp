module fork_join;
  initial begin
    $display("[%t] Main thread: Fork join going to start",$time);
    fork
      #2 $display("[%t] Thread 1 is executing",$time);
      #4 $display("[%t] Thread 1 is executed",$time);
      begin
        #5 $display("[%t] Thread 2 is executing",$time);
        #10 $display("[%t] Thread 2 is executed",$time); 
      end
      #8  $display("[%t] Thread 3 is executed",$time);
    join_none
    $display("[%t] Main thread: Fork join comes to end",$time);
  end
endmodule
