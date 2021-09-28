module fork_join;
  initial begin
    $display("[%t] Main thread: Fork join going to start",$time);
    fork
       $display("[%t] Thread 1 is executing",$time);
       $display("[%t] Thread 1 is executed",$time);
      fork
        #5 $display("[%t] The nested loop is running",$time);
        begin
          #10 $display("[%t] The nested loop is executed and fininshed",$time);
        end
      join_any
      #5 $display("[%t] Nested loop fork join comes to end",$time);
     
      begin
        #5 $display("[%t] Thread 2 is executing",$time);
        #10 $display("[%t] Thread 2 is executed",$time); 
      end
      #8  $display("[%t] Thread 3 is executed",$time);
    join_any
    $display("[%t] Main thread: Fork join comes to end",$time);
  end
endmodule
