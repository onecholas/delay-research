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
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    #10;
    a = 1;
    b = 2;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    // Test 2
    a = 1;
    b = 1;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    #10;
    a = 2;
    b = 3;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    // Test 3
    a = 3;
    b = 2;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    #10;
    a = 2;
    b = 3;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    // Test 4
    a = 4;
    b = 2;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    #10;
    a = 2;
    b = 4;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    // Test 5
    a = 5;
    b = 3;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

    #10;
    a = 4;
    b = 1;
    $display("  Current simulation time = %t", $time);
    $display("  output c = %d", c);

  end

endmodule
