module multidim_unpacked_array;
  int data [2][3];
  initial begin
    foreach(data[i])
      foreach(data[i][j])
        begin
        data[i][j] = $random;
          $display("The value of data[%d][%d] = %d",i,j,data[i][j]);
        end
    
    $display("The contents are : %p",data);
  end
endmodule
    
