module tb;
  int i = 0;
  initial begin
    forever begin
      if(i==5)
        break;
      i++;
      $display("Break");
    end
  end
endmodule
