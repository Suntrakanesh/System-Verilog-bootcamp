class packet;
  string count;
  function new();
     count = "Cat";
  endfunction
endclass

module main;
  initial begin
      packet pkt = new;
    if (pkt == null)
    $display("The object of packet is null");
    $display("The value is %p",pkt.count);    
  end
endmodule
