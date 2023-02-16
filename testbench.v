
`timescale 1ns/1ns

module testbench();

  // DUT instance
  
module adder(
  input [7:0] a,
  input [7:0] b,
  output [7:0] sum
);

  assign sum = a + b;

endmodule


  // Test inputs
  reg [7:0] a;
  reg [7:0] b;

  // Test outputs
  wire [7:0] sum;

  initial begin
    // Apply test inputs
    // Test 1
    a = 10;
    b = 5;
    #10;
    $display("  output [7:0] sum = %d",   output [7:0] sum);

    // Test 2
    a = 255;
    b = 1;
    #10;
    $display("  output [7:0] sum = %d",   output [7:0] sum);

    // Test 3
    a = 128;
    b = 128;
    #10;
    $display("  output [7:0] sum = %d",   output [7:0] sum);


    $finish;
  end

endmodule
