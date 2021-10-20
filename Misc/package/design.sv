`include "my_package.sv"
import my_package::*;
module use_package;
    port_t port;
  initial begin
    op_list list;
    
    list = ADD;
    print(list);
    list = SUB;
    print(list);
    
    port.a = 10;
    port.b = 9;
    port.m = port.a * port.b;
    print(port.m);
  end

endmodule
