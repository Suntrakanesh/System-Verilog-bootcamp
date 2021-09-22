module static_array;
  bit [7:0] data = 8'ha2;
  initial begin
    foreach(data[i])
      $display("The value of data[%d] = %b",i,data[i]);
  end
endmodule
