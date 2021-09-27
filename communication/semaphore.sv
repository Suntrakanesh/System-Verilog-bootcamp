module tb;
  semaphore key;
  initial begin
    key = new(1);
    personA();
    personB();
  end
  task get_(int id);
    $display("[%t] Going to acquire the key [%d]",$time, id);
    key.get(1);
    $display("[%t] Got the key [%d]",$time, id);
  endtask
  task put_(int id);
    $display("[%t] leaving the room [%d]",$time, id);
    key.put(1);
    $display("[%t] handover the key [%d]",$time, id);
  endtask  
  task personA();
    #5 get_(1);
    #5 put_(1);
  endtask
  task personB();
    #5 get_(2);
    #5 put_(2);
  endtask
endmodule
