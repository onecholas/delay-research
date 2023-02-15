import re

def parse_verilog(verilog_file):

    with open(verilog_file, "r") as file:
        verilog_text = file.read()

    # Define regular expressions to match Verilog syntax
    module_pattern = re.compile(r"module\s+(\w+)\s*\(")
    input_pattern = re.compile(r"input\s+(\w+)")
    output_pattern = re.compile(r"output\s+(\w+)")

    # Find the module name
    match = module_pattern.search(verilog_text) # Check for match
    if match:
        module_name = match.group(1) # Only return first match

        # Find the input ports
        input_matches = input_pattern.findall(verilog_text) # Check for all matches

        # Find the output ports
        output_matches = output_pattern.findall(verilog_text) # Check for all matches

        print(f"Module: {module_name}")
        print(f"Inputs: {input_matches}")
        print(f"Outputs: {output_matches}")

    else:
        print("No module found in Verilog text.")


if __name__ == "__main__":
    # Parse the Verilog module
    parse_verilog("example_file.v")