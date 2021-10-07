class packet;
  int count;
endclass

module main;
  packet pkt, pkt_1;
  initial begin
    if (pkt == null)
    $display("The object of packet is null");
    $display("The value is %d",pkt.count);    //Null object access due to the usage before its being constructed and the error is expected 
  pkt = new();
  pkt.count = 1;
  $display("The value is %d",pkt.count);
  pkt_1 = pkt;
    $display("The value is %d",pkt_1.count);
  end
endmodule
