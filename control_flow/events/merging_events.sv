module merging_events;
  event a,b;
   
    initial begin
      
      fork
      begin
        wait(a.triggered);
        $display("[%t] The event 1 is triggered",$time);
      end
        
      begin
        wait(b.triggered);
        $display("[%t] The event 2 is triggered",$time);
      end
        
        #20 ->a;
        #30 ->b;
        
        begin
          #10 b = a;
        end
      join
    end
endmodule
          
        
      
