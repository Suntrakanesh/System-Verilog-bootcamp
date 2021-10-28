function file_check(int f);
  if(f)
      $display("File is present");
    else
      $display("File is not present");
endfunction

module tb;
  initial begin
    int fw,fr;
    string line;
    
    fw = $fopen("verilog.txt","w");
    file_check(fw);
    
    for(int i=0;i<6;i++) begin
      $fdisplay(fw,"Number: %d",i);
    end
    $fclose(fw);
    
    fr = $fopen("verilog.txt","r");
    file_check(fr);
    
    while(!$feof(fr))begin
      $fgets(line,fr);
      $display("%s",line);
    end
         
    $fclose(fr);
  end
endmodule
