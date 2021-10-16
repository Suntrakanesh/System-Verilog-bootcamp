class base;
  rand int dyn[];
  rand int que[$];
  
  constraint array2 { que.size() == 5 ;}
  constraint array { foreach(dyn[i]) 
                           dyn[i] == i ;
                       foreach(que[i]) 
                           que[i] == 2*i ;
                         }
  
  function new();
    dyn = new[5];
  endfunction
  
endclass

module tb;
  base b;
  initial begin
    b= new ();
    b.randomize();
    $display("Dynamic Array %p", b.dyn);
    $display("Queue %p", b.que);
  end
endmodule
