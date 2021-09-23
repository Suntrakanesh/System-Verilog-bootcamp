module tb;
  int i = 0;
  initial begin
    for(i=0;i<10;i++) begin
      if(i==5)
        continue;
      $display("%d",i);
    end
  end
endmodule
