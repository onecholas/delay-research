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
    $fopen("example_outputs.csv");
    $fwrite("example_outputs.csv", "Timestamp1, c1");
    $fwrite("example_outputs.csv", "Timestamp2, c2\n");

    // Apply test inputs

    // Test 1
    a = 1;
    b = 2;
    $fwrite("example_outputs.csv", "%t,%d", $time, c);
    #10;
    a = 1;
    b = 2;
    $fwrite("example_outputs.csv", "%t,%d\n", $time, c);

    // Test 2
    a = 1;
    b = 1;
    $fwrite("example_outputs.csv", "%t,%d", $time, c);
    #10;
    a = 2;
    b = 3;
    $fwrite("example_outputs.csv", "%t,%d\n", $time, c);

    // Test 3
    a = 3;
    b = 2;
    $fwrite("example_outputs.csv", "%t,%d", $time, c);
    #10;
    a = 2;
    b = 3;
    $fwrite("example_outputs.csv", "%t,%d\n", $time, c);

    // Test 4
    a = 4;
    b = 2;
    $fwrite("example_outputs.csv", "%t,%d", $time, c);
    #10;
    a = 2;
    b = 4;
    $fwrite("example_outputs.csv", "%t,%d\n", $time, c);

    // Test 5
    a = 5;
    b = 3;
    $fwrite("example_outputs.csv", "%t,%d", $time, c);
    #10;
    a = 4;
    b = 1;
    $fwrite("example_outputs.csv", "%t,%d\n", $time, c);

    fclose("example_outputs.csv");

  end

endmodule
