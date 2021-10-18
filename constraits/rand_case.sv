module tb;
  initial begin
    for(int i=0;i<15;i++) begin
      randcase
      0 : $display("Zero");
      1 : $display("First");
      4 : $display("Fourth");
      6 : $display("Sixth");
      endcase
    end
  end
endmodule
