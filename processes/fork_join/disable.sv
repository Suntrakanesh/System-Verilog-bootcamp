module fork_join;
  initial begin
    $display("[%t] Main thread: Fork join going to start",$time);
    fork
      print (40,"Thread 0");
      print (30, "Thread 1");
    join_any
    $display("[%t] Main thread: Fork join comes to end",$time);
    
    disable fork;
  end
  
  task  print (int _time, string tm_str);
      #(_time) $display("[%t] %s",$time,tm_str);
    endtask
  
endmodule
