module tb2;
  task display();
    $display("GCT");
  endtask
endmodule
module tb;
  tb2 ins();
  initial begin
    repeat(5) begin
      ins.display();
    end
  end
    
endmodule
