
module datatypes;
  logic [3:0] a;
  logic b;
  bit [1:0] c;
  bit d;
  initial begin
    $display("The value of a = %0h",a); /*The default value of logic is x*/
    $display("The value of c = %0b",c); /*The default value of bit is 0*/
    
/*If a type variable is assigned more than its holding capacity, truncation      of the left most bit happens*/
    
    assign a = 4'hab;
    $display("The value of a = %0h",a);
    assign b = 4'hab;
    $display("The value of b = %0h",b);
    assign c = 3;
    $display("The value of c = %0b",c);
    assign d = 4'b01xz;
    $display("The value of d = %0b",d);
    
  end
endmodule
