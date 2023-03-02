import re

class verilog_object:
    
    def __init__(self, module_name, input_vec, output_vec):
        self.module = module_name
        self.inputs = input_vec
        self.outputs = output_vec

def parse_verilog(verilog_file):

    with open(verilog_file, "r") as file:
        verilog_text = file.read().replace('\n', '').replace(' ', '')

    # Define regular expressions to match Verilog syntax
    module_pattern = re.compile(r"module+(\w+)*\(")
    input_pattern1 = re.compile(r"input+(\w+)")
    input_pattern2 = re.compile(r"(?<=input)(.*?)(?=;)")
    output_pattern1 = re.compile(r"output+(\w+)")
    output_pattern2 = re.compile(r"(?<=output)(.*?)(?=;)")

    # Find the module name
    match = module_pattern.search(verilog_text) # Check for match
    if match:
        module_name = match.group(1) # Only return first match

        # Find the input ports
        input_matches = input_pattern1.findall(verilog_text) # Check for all matches
        if len(input_matches) == 0:
            input_matches = input_pattern2.findall(verilog_text) # Check for all matches
            input_matches = input_matches[0].split(',')

        # Find the output ports
        output_matches = output_pattern1.findall(verilog_text) # Check for all matches
        if len(output_matches) == 0:
            output_matches = output_pattern2.findall(verilog_text)
            output_matches = output_matches[0].split(',')

        return verilog_object(module_name, input_matches, output_matches)

    else:
        # print("No module found in Verilog text.")

        return None

if __name__ == "__main__":
    # Parse the Verilog module
    object = parse_verilog("test2/adder.v")
    print(f"Module: {object.module}")
    print(f"Inputs: {object.inputs}")
    print(f"Outputs: {object.outputs}")



# Two different formats possible:
# Difference is if input/outputs labeled in module port defintion
# First:
    # module fadder(
    # input a, //data in a
    # input b, //data in b
    # input cin, //carry in
    # output sum_out, //sum output
    # output c_out //carry output
    # );
    # wire c1, c2, c3; //wiring needed
    # assign sum_out = a ^ b ^ cin; //half adder (XOR gate)
    # assign c1 = a & cin; //carry condition 1
    # assign c2 = b & cin; //carry condition 1
    # assign c3 = a & b; //carry condition 1
    # assign c_out = (c1 + c2 + c3);
    # endmodule

# Second:
    # module XYZ (en, data, all_zero, result, status);  // XYZ is the module name
    #   input        en;        // scalar input
    #   input  [3:0] data;      // vector input
    #   output       all_zero;  // scalar output
    #   output [3:0] result;    // vector output
    #   inout  [1:0] status;    // bi-directional port
    
    # <body>
    # endmodule
