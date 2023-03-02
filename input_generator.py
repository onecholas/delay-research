import random
import csv

from input_module_parser import parse_verilog, verilog_object

def sparse_input_generator(verilog_module, input_pairs_file):
        
        inputs = parse_verilog(verilog_module).inputs
        inputs = inputs + inputs
        default = [0 for idx in range(len(inputs))]

        with open(input_pairs_file, 'w', newline='', encoding='utf-8-sig') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow(inputs)
                for idx in range(len(inputs)):
                        # What the random input should be
                        default[idx] = 1
                        writer.writerow(default)
                        default = [0 for idx in range(len(inputs))]

def random_input_generator(verilog_module, input_pairs_file):

        inputs = parse_verilog(verilog_module).inputs
        inputs = inputs + inputs

        with open(input_pairs_file, 'w', newline='', encoding='utf-8-sig') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow(inputs)
                for idx in range(len(inputs)):
                        # What the random input should be
                        row = [random.randint(0, 100) for idx in range(len(inputs))]
                        writer.writerow(row)
                        

if __name__ == "__main__":
        # sparse_input_generator("test2/adder.v", "test2/adder_rand_inputs.csv")
        random_input_generator("test2/adder.v", "test2/adder_rand_inputs.csv")