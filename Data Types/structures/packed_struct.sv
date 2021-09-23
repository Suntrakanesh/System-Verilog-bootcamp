module packed_struct;
  typedef struct packed{
    bit [3:0] data;
    bit [2:0] val;
    bit a;
  }value;
  initial begin
    value item = '{'hb,'h5,3};
    $display("The content in struct = %p",item);
    item.val = 'h3;
    $display("The content in struct = %p",item);
    item = 8'hab;
    $display("The content in struct = %p",item);
  end 
  endmodule
