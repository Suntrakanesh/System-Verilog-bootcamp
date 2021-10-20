package my_package; // package name
    typedef enum {ADD, SUB} op_list; // list of operatios

    typedef struct{
        logic [4:0] a, b; // for input
        logic [9:0] m; // for output : store multiplication result
    } port_t;
    
   function void print(int a);
       $display("%d",a);
   endfunction

endpackage
