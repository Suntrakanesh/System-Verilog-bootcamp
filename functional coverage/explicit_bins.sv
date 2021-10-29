class pkt;
  rand bit[3:0] addr;
  rand bit[3:0] data;
endclass

module tb;
  pkt p = new();
  covergroup cg;
    ADDR: coverpoint p.addr{
      bins b1 = {1,2,3};
      bins b2[] = {[5:10]};
      bins b3 = {[0:$]};
    }
    DATA: coverpoint p.data{
      bins b1 = {4,5,8};
      bins b2 = {[11:14]};
    
    }
  endgroup
  
  initial begin
    cg c = new();
    repeat(10) begin
      p.randomize();
      $display("addr = %d, data = %d", p.addr, p.data);
      c.sample();
    end
  end
endmodule
