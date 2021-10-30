// Code your design here
class packet;
  rand bit [3:0] addr;
  rand bit [1:0] data;
endclass
module main;
  packet p = new();
  covergroup cgp;
  ADDR : coverpoint p.addr;
  DATA : coverpoint p.data;
  endgroup
  initial begin
    cgp c = new();
    repeat(10)
      begin
        p.randomize();
        $display("Tha addr is %d and data is %d",p.addr,p.data);
        c.sample();
      end
  end
endmodule
