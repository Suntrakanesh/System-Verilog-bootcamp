module multidim_un_packed_array;
  bit [1:0] data [1][2];
  initial begin
    foreach(data[i])
      foreach(data[i][j])
        begin
          data[i][j] = $random;
          $display("The value of data[%d][%d] = %h",i,j,data[i][j]);
        end
    
    $display("The contents are : %p",data);
    
    $display("data[1][1][1] = %d",data[1][1][1]);
  end
endmodule
    
