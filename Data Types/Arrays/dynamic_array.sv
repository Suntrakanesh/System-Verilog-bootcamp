module dynamic_array;
  int data [];
  initial begin
    data = new[5]; //To allocate memory to the array variable to hold values
    data = {23,56,78,35,45};
    foreach(data[i])
      $display("The value of data[%d] = %d",i,data[i]);
  end
endmodule
