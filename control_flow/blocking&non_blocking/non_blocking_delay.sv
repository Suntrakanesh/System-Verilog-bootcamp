module non_blocking;
  bit [7:0] a,b,c,d,e;
  initial begin
    a <= 8'hab;
    $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    #10 b <= 8'hbc;
     $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    c <= 8'hca;
     $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
  end
  
  initial begin
   #5 d <= 8'hde;
    $display("[%t] d = %b; e = %b",$time,d,e);
    #5 e <= 8'hef;
     $display("[%t] d = %b; e = %b",$time,d,e);
  end
endmodule
    
