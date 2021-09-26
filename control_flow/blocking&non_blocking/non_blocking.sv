module non_blocking;
  bit [7:0] a,b,c,d,e;
  initial begin
    a <= 8'hab;
    $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    b <= 8'hbc;
     $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    c <= 8'hca;
     $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
  end
  
  initial begin
    d <= 8'hde;
    $display("[%t] d = %b; e = %b",$time,d,e);
    e <= 8'hef;
     $display("[%t] d = %b; e = %b",$time,d,e);
  end
endmodule
    
