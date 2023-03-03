from input_pair_parser import parse_csv, input_pair
from input_module_parser import parse_verilog, verilog_object
import re

# Function to generate Verilog testbench
def generate_verilog_testbench(verilog_module, test_inputs):
    # Parse Verilog module inputs and outputs

    test_pairs = parse_csv(test_inputs)
    module = parse_verilog(verilog_module)

    # Generate testbench file contents
    testbench = f"`timescale 1ns/1ns\n\n"
    testbench += f"module testbench();\n\n"

    # INPUTS AND OUTPUTS

    testbench += "  // Test inputs\n"

    for input in module.inputs:
        if input.startswith("\\"):
            testbench += f"  reg {input} ;\n"
        else:
            testbench += f"  reg {input};\n"

    testbench += "\n  // Test outputs\n"

    for output in module.outputs:
        if output.startswith("\\"):
            testbench += f"  wire {output} ;\n"
        else:
            testbench += f"  wire {output};\n"


    # DUT

    testbench += f"\n  {module.module} dut (\n"

    for input in module.inputs:
        if input.startswith("\\"):
            testbench += f"    .{input} ({input} ),\n"
        else:
            testbench += f"    .{input}({input}),\n"
    
    for i, output in enumerate(module.outputs):
        if i + 1 == len(module.outputs):
            if output.startswith("\\"):
                testbench += f"    .{output} ({output} )\n"
            else:
                testbench += f"    .{output}({output})\n"
            testbench += f"  );\n\n"
        else:
            if output.startswith("\\"):
                testbench += f"    .{output} ({output} ),\n"
            else:
                testbench += f"    .{output}({output}),\n"

    testbench += "  initial begin\n"

    # CURRENTLY ADDING CSV OUTPUT

    # testbench += f"    $fopen(\"{test_outputs}\");\n"
    # testbench += f"    $fwrite(\"{test_outputs}\", \"Timestamp1, "
    # for output in module.outputs:
    #     testbench += f"{output}1"
    # testbench += f"\");\n"
    # testbench += f"    $fwrite(\"{test_outputs}\", \"Timestamp2, "
    # for output in module.outputs:
    #     testbench += f"{output}2"
    # testbench += f"\\n\");\n\n"
    testbench += f"    // Apply test inputs\n"

    for i, pairs in enumerate(test_pairs):
        testbench += f"\n    // Test {i+1}\n"
        for name, value in pairs.first.items():
            testbench += f"  "
            testbench += f"    {name} = {value};\n"
        testbench += f"    $display(\"  Current simulation time = %t\", $time);\n"
        for name in module.outputs:
            if name.startswith("\\"):
                testbench += f"    $display(\"  output {name} = %d\", {name} );\n"
            else:
                testbench += f"    $display(\"  output {name} = %d\", {name});\n"  
            # testbench += f"    $fwrite(\"{test_outputs}\", \"%t,%d\", $time, {name});\n"
        testbench += "    #10;\n"  # Apply first inputs for 10 ns
        for name, value in pairs.second.items():
            testbench += f"    {name} = {value};\n"
        testbench += f"    $display(\"  Current simulation time = %t\", $time);\n"
        for name in module.outputs:
            if name.startswith("\\"):
                testbench += f"    $display(\"  output {name} = %d\", {name} );\n"
            else:
                testbench += f"    $display(\"  output {name} = %d\", {name});\n"  
            # testbench += f"    $fwrite(\"{test_outputs}\", \"%t,%d\\n\", $time, {name});\n\n"
    #testbench += f"    fclose(\"{test_outputs}\");\n\n"
    testbench += "  end\n\n"
    testbench += "endmodule\n"
    return testbench


if __name__ == "__main__":
    # Generate and save Verilog testbench file
    print("Type 1 to enter manually or 0 to use examples.")
    examples = input()

    if examples == "1":
        print("Input the verilog module (.v) file name.")
        verilog_module_file = input() # "test/example_module.v"
        print("Input the input pairs (.csv) file name.")
        input_pairs_file = input() # "test/example_inputs.csv"
        print("Input the output (.csv) file name.")
        output_file = input() # "test/example_testbench.v"

        testbench = generate_verilog_testbench(verilog_module_file, input_pairs_file)
        with open(output_file, "w") as f:
            f.write(testbench)
        print(f"Stored at {output_file}")

    else:
        # testbench = generate_verilog_testbench("test/example_module.v", "test/example_inputs.csv")
        # with open("test/example_testbench.v", "w") as f:
        #     f.write(testbench)
        # print(f"Stored at test/example_testbench.v")

        testbench = generate_verilog_testbench("test2/adder.v", "test2/adder_rand_inputs.csv")
        with open("test2/adder_testbench.v", "w") as f:
            f.write(testbench)
        print(f"Stored at test2/adder_testbench.v")

    # string = "input \\a[0] , \\a[1] , \\a[2] , \\a[3] ;"

    # # Define the keyword and the keyword to end on
    # start_keyword = "input"
    # end_keyword = ";"

    # # Define the regex pattern
    # pattern = r"(?<=input\s)(.*?)(?=\s;)"

    # # Use findall to get all matches
    # matches = re.findall(pattern, string)

    # # Print the matches
    # print(matches)

    # input_string = "input \\a[0] , \\b[2] , \\f[100] , \\g[400] , stop"
    # pattern = r"input\s+(\\[a-z]+\[\d+\]\s*,\s*)*\\[a-z]+\[\d+\]\s*"
    # match = re.search(pattern, input_string)
    # if match:
    #     result = re.findall(r"\\[a-z]+\[\d+\]\s*", match.group())
    #     print(result)
    # else:
    #     print("No match found.")


    # input_matches = re.findall(r"(?<=input\s)(\\\S+\s*)+", "input \\a[0] , \\b[2] , \\f[100] , stop")
    # print(input_matches)