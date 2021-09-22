module tb;
  string array [ string ];
  string temp,f;
  initial begin
    array = { "CSK":"Dhoni",
              "RCB":"Virat",
              "MI":"Rohit",
             "KKR":"DK"};
    $display("%p",array);// associative array will always sort in order of index
    array.first(f);
    $display("%s is the first element",f);
    array.last(f);
    $display("%s is the last element",f);
    $display("%d is the size",array.size());
    $display("%d is the num",array.num());
    

    if(array.exists("RCB"))
      $display("RCB is exists with %s",array["RCB"]);
    
    temp = "MI";
    array.prev(temp);
    $display("Previous %s",array[temp]);
    temp = "MI";
    array.next(temp);
    $display("Next %s",array[temp]);
  end
endmodule
