module multidim_packed_array;
  // Packed dimensions are only allowed on types resolving to single bit types such as (reg, logic or bit), packed arrays, packed structures, and packed unions. 
  bit [3:0][7:0] data; //packed array representation
  initial begin
  data = 32'hfacecafe;
    $display("The content stored in data = %h",data);
    foreach(data[i])
      $display("The value of data[%d] = %b (%h)",i,data[i],data[i]);
  end
endmodule
  
