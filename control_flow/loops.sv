module tb;
  int num[5] = '{5,1,2,3,4};
  int it = 5;
  int count = 3;
  initial begin
    repeat(10) begin
      $display("repeat loop");
    end
    while(it--) begin
      $display("while loop iteration %d",5-it);
    end
    for( int i = 0; i<=3; i++) begin
      $display("for loop iteration %d",i);
    end
    $display("foreach");
    foreach(num[x]) begin
      $display("%d",num[x]);
    end
    do begin
      $display("counter %d",count);
      count -- ;
    end while(count!=0 );
  end
endmodule
