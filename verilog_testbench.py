from csv_parser import parse_csv, input_pair
from verilog_parser import parse_verilog, verilog_object

# Function to generate Verilog testbench
def generate_verilog_testbench(verilog_module, test_inputs):
    # Parse Verilog module inputs and outputs

    test_pairs = parse_csv(test_inputs)
    module = parse_verilog(verilog_module)

    # Generate testbench file contents
    testbench = f"""
`timescale 1ns/1ns

module testbench();

"""
    # INPUTS AND OUTPUTS

    testbench += "  // Test inputs\n"

    for input in module.inputs:
        testbench += f"  reg {input};\n"

    testbench += "\n  // Test outputs\n"

    for output in module.outputs:
        testbench += f"  wire {output};\n"

    # DUT

    testbench += f"\n  {module.module} dut (\n"

    for input in module.inputs:
        testbench += f"    .{input}({input}),\n"
    
    for i, output in enumerate(module.outputs):
        if i + 1 == len(module.outputs):
            testbench += f"    .{output}({output})\n"
            testbench += f"  );\n\n"
        else:
            testbench += f"    .{output}({output}),\n"

    testbench += """
  initial begin
    // Apply test inputs

"""

    for i, pairs in enumerate(test_pairs):
        testbench += f"    // Test {i+1}\n"
        for name, value in pairs.first.items():
             testbench += f"    {name} = {value};\n"
        # for name, value in input.second:
        #      testbench += f"    {name} = {value};\n"
        testbench += "    #10;\n"  # Apply inputs for 10 ns
        for name in module.outputs:
            testbench += f"    $display(\"  Current simulation time = %t\", $time);\n"
            testbench += f"    $display(\"  output {name} = %d\", output {name});\n\n"

    testbench += """  end

endmodule
"""
    return testbench


if __name__ == "__main__":
    # Generate and save Verilog testbench file
    print("Input the verilog module (.v) file name.")
    verilog_module_file = input() # "example_module.v"
    print("Input the input pairs (.csv) file name.")
    input_pairs_file = input() # "example_inputs.csv"
    print("Input the verilog testbench file name (.v)") 
    output_file = input() # "example_testbench.v"
    testbench = generate_verilog_testbench(verilog_module_file, input_pairs_file)
    with open(output_file, "w") as f:
        f.write(testbench)
    print(f"Stored at {output_file}")