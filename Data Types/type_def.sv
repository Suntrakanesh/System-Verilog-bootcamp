module tb;
  typedef shortint my_datatype;
  typedef real my_datatype2;
  typedef bit [3:0] dat;
  
  initial begin
  my_datatype var1 = 40;
  my_datatype var2 = 35.6;
  dat var3 = 4'b1010;
   
  $display("%d", var1);
  $display("%f", var2);
  $display("%b", var3);
  end
endmodule
