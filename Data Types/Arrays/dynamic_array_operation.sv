module dynamic_array_operations;
  int data [];
  initial begin
    data = new[5]; //To allocate memory to the array variable to hold values
    data = {23,56,78,35,45};
    
    //To determine the size of the array
    $display("The size of data = %d",data.size()); 
    
    // To add new items in arrays
    data = new[data.size()+1] (data);
    data[data.size()-1] = 99; //assign value to the new location created
    $display("The size of data = %d",data.size());
    
    foreach(data[i])
      $display("The value of data[%d] = %d",i,data[i]);
    
   //To delete the entire elements in array
    data.delete();
    $display("The size of data = %d",data.size());
    
  end
endmodule
