task display();
  $display("GCT");
endtask
module tb;
  initial begin
    repeat(5) begin
      display();
    end
  end
    
endmodule
