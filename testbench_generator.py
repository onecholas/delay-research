from input_pair_parser import parse_csv, input_pair
from input_module_parser import parse_verilog, verilog_object

# Function to generate Verilog testbench
def generate_verilog_testbench(verilog_module, test_inputs, test_outputs):
    # Parse Verilog module inputs and outputs

    test_pairs = parse_csv(test_inputs)
    module = parse_verilog(verilog_module)

    # Generate testbench file contents
    testbench = f"`timescale 1ns/1ns\n\n"
    testbench += f"module testbench();\n\n"

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

    testbench += "  initial begin\n"

    # CURRENTLY ADDING CSV OUTPUT

    testbench += f"    $fopen(\"{test_outputs}\");\n"
    testbench += f"    $fwrite(\"{test_outputs}\", \"Timestamp1, "
    for output in module.outputs:
        testbench += f"{output}1"
    testbench += f"\");\n"
    testbench += f"    $fwrite(\"{test_outputs}\", \"Timestamp2, "
    for output in module.outputs:
        testbench += f"{output}2"
    testbench += f"\\n\");\n\n"
    testbench += f"    // Apply test inputs\n\n"

    for i, pairs in enumerate(test_pairs):
        testbench += f"    // Test {i+1}\n"
        for name, value in pairs.first.items():
            testbench += f"    {name} = {value};\n"
        for name in module.outputs:
            #testbench += f"    $display(\"  Current simulation time = %t\", $time);\n"
            #testbench += f"    $display(\"  output {name} = %d\", {name});\n\n"
            testbench += f"    $fwrite(\"{test_outputs}\", \"%t,%d\", $time, {name});\n"
        testbench += "    #10;\n"  # Apply first inputs for 10 ns
        for name, value in pairs.second.items():
            testbench += f"    {name} = {value};\n"
        for name in module.outputs:
            #testbench += f"    $display(\"  Current simulation time = %t\", $time);\n"
            #testbench += f"    $display(\"  output {name} = %d\", {name});\n\n"
            testbench += f"    $fwrite(\"{test_outputs}\", \"%t,%d\\n\", $time, {name});\n\n"
    testbench += f"    fclose(\"{test_outputs}\");\n\n"
    testbench += "  end\n\n"
    testbench += "endmodule\n"
    return testbench


if __name__ == "__main__":
    # Generate and save Verilog testbench file
    print("Type 1 to enter manually or 0 to use examples.")
    examples = input()

    if examples == 1:
        print("Input the verilog module (.v) file name.")
        verilog_module_file = input() # "test/example_module.v"
        print("Input the input pairs (.csv) file name.")
        input_pairs_file = input() # "test/example_inputs.csv"
        print("Input the output (.csv) file name.")
        output_delay = input() # "test/example_outputs.csv"
        print("Input the verilog testbench (.v) file name.") 
        output_file = input() # "test/example_testbench.v"

        testbench = generate_verilog_testbench(verilog_module_file, input_pairs_file, output_delay)
        with open(output_file, "w") as f:
            f.write(testbench)
        print(f"Stored at {output_file}")

    else:
        testbench = generate_verilog_testbench("test/example_module.v", "test/example_inputs.csv", "test/example_outputs.csv")
        with open("test/example_testbench.v", "w") as f:
            f.write(testbench)
        print(f"Stored at test/example_testbench.v")