`timescale 1ns/1ns

module testbench();

  // Test inputs
  reg \a[] ;
  reg \b[] ;

  // Test outputs
  wire \c[] ;

  example dut (
    .\a[] (\a[] ),
    .\b[] (\b[] ),
    .\c[] (\c[] )
  );

  initial begin
    // Apply test inputs

    // Test 1
    \a[] = 1;
    \b[] = 2;
    $display("  Current simulation time = %t", $time);
    $display("  output \c[] = %d", \c[] );

    #10;
    \a[] = 1;
    \b[] = 2;
    $display("  Current simulation time = %t", $time);
    $displayx

  end

endmodule
