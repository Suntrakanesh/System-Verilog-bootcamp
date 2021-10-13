
class base;
  rand bit[3:0] simp, eq;
  rand bit[3:0] ins;
  rand bit[3:0] dis, dis2;
  
  constraint simple_exp { simp > 5; } constraint equal { eq == 10; }
  constraint inside_key { ins inside {[2:10]};}
  constraint dist_key { dis dist { 7:=4, [8:10]:=10  }; }
  constraint dist_key2 { dis2 dist { 7:/4, [8:10]:/10  }; }
  
endclass

module tb;
  base b;

  initial begin
      b = new();
    repeat(15) begin
      b.randomize();
      $display("simple expression = %d, %d, inside keyword = %d, dist with ':=' = %d, dist with ':/' = %d ", b.simp, b.eq, b.ins, b.dis, b.dis2);
    end
  end
endmodule
  
