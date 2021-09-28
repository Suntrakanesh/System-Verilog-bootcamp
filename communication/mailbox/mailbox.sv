module tb;
  mailbox mbx = new();
  
  initial begin
    for(int i =1;i<5;i++) begin
      mbx.put(i);
      $display("[%t] Put Value = %d, size = %d", $time, i, mbx.num());
    end
   end
   initial begin
     int data;
     forever begin
       mbx.get(data);
       $display("[%t] Get Value = %d, size = %d", $time, data, mbx.num());
     end
   end
endmodule
