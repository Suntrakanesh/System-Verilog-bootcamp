module tb;
  task automatic display();
    integer a = 0;
    a +=1; 
    $display("%d",a);
  endtask
  initial begin
    repeat(5) begin
      display();
    end
  end
    
endmodule
