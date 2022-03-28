
module automatic TOP();

  export "DPI-C" function helloFromSV;
  import "DPI-C" context function void helloFromCpp(logic a);

  initial run();
 
  task run();
    logic a = 1'bx;
    $display("a is %0d", a);
    helloFromCpp(a);
    a = 1;
    $display("a is %0d", a);
    helloFromCpp(a);
    a = 1'bz;
    $display("a is %0d", a);
    helloFromCpp(a);
  endtask
 
  function void helloFromSV(bit b);
    $display("(SV) b is %0d", b);
  endfunction

endmodule
