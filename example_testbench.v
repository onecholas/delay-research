
`timescale 1ns/1ns

module testbench();

  // Test inputs
  reg a;
  reg b;

  // Test outputs
  wire c;

  example dut (
    .a(a),
    .b(b),
    .c(c)
  );


  initial begin
    // Apply test inputs

    // Test 1
    a = 1;
    b = 2;
    #10;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", output c);

    // Test 2
    a = 1;
    b = 1;
    #10;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", output c);

    // Test 3
    a = 3;
    b = 2;
    #10;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", output c);

    // Test 4
    a = 4;
    b = 2;
    #10;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", output c);

    // Test 5
    a = 5;
    b = 3;
    #10;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", output c);

  end

endmodule
