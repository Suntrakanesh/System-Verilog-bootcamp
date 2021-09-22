module tb;
  int array1 [int];
  int array2 [string];
  string array3 [string];
  initial begin
    array1 = '{ 1: 10,
                2: 20 };
    array2 = '{ "A": 1,
                "B": 2 };
    array3 = '{ "CSK": "Dhoni",
                "RCB": "AB de" };
    $display("%p", array1);
    $display("%p", array2);
    $display("%p", array3);
  end
endmodule
