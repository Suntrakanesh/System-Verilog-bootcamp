module tb;
  
  typedef enum{ Sun, Mon, Tue, Wed, Thurs, Fri, Sat } week;
  initial begin
    week day;
    day = Wed;
    $display("%d", day.first());
    $display("%d", day.last());
    $display("%d", day.next());
    $display("%d", day.prev());
    $display("%d", day.num());
    $display("%s", day.name());
  end
endmodule
