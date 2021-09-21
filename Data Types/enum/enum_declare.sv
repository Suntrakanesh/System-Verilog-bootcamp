module tb;
  
  typedef enum{ Sun, Mon, Tue, Wed, Thurs, Fri, Sat } week;
  initial begin
    week day;
    day = Sun;$display("%d", day);
    day = Mon;$display("%d", day);
    day = Tue;$display("%d", day);
    day = Wed;$display("%d", day);
    day = Thurs;$display("%d", day);
    day = Fri;$display("%d", day);
    day = Sat;$display("%d", day);
  end
endmodule
