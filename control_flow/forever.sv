module tb;
  initial begin
    forever begin
      #5 $display("Hello world");
    end
  end
  initial 
    #50 $finish;
endmodule
