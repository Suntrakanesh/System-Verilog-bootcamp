class packet;
  rand bit [3:0] data;
  constraint datas {data>3;data<5;}
endclass

module main;
  packet p = new;
  initial begin
    assert (p.randomize());
  end
endmodule
