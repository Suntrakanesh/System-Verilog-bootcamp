class pkt;
  rand bit[3:0] addr;
  rand bit[3:0] data;
endclass

module tb;
  pkt p = new();
  covergroup cg;
    ADDR: coverpoint p.addr;
    DATA: coverpoint p.data;
  endgroup
  
  initial begin
    cg c = new();
    repeat(10) begin
      p.randomize();
      c.sample();
    end
  end
endmodule
