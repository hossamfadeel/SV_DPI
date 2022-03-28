
module TOP();

  import "DPI-C" function void c_method();
   
  initial
  begin
    $display("Before calling C Method");
    c_method();
    $display("After calling C Method");
  end

endmodule
