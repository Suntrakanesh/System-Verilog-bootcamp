typedef enum {TEN = 10, TWENTY = 20, THIRTY = 30, FOURTY = 40, FIFTY = 50}num;
module main;
  num number;
  initial begin
    $cast(number, 10+30);
    $display("The value is %s",number.name());
    if ($cast(number,45))
      $display("Casting process is success");
    else
      $display("Casting process is failed");
  end
endmodule
