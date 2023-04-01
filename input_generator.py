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

def sparse_input_generator_with_probability(verilog_module, input_pairs_file, prob: float):
        inputs = parse_verilog(verilog_module).inputs
        inputs = inputs + inputs
        default = [0 for idx in range(len(inputs))]

        with open(input_pairs_file, 'w', newline='', encoding='utf-8-sig') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow(inputs)
                for idx in range(len(inputs)):
                        for idx in range(len(inputs)):
                                # What the random input should be
                                default[idx] = random.choices([0,1], weights=(prob, 1 - prob), k = 1)[0]
                        writer.writerow(default)

def sparse_input_generator_with_probability_range(verilog_module, input_pairs_file, prob: float, range: float):
        inputs = parse_verilog(verilog_module).inputs
        inputs = inputs + inputs
        default = [0 for idx in range(len(inputs))]

        with open(input_pairs_file, 'w', newline='', encoding='utf-8-sig') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow(inputs)
                for idx in range(len(inputs)):
                        for idx in range(len(inputs)):
                                # What the random input should be
                                default[idx] = random.choices([0, range], weights=(prob, 1 - prob), k = 1)[0]
                        writer.writerow(default)

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

def one_input_generator(verilog_module, input_pairs_file):
        inputs = parse_verilog(verilog_module).inputs
        inputs = inputs + inputs
        default = [0 for idx in range(len(inputs))]

        with open(input_pairs_file, 'w', newline='', encoding='utf-8-sig') as csvfile:
                writer = csv.writer(csvfile)
                writer.writerow(inputs)
                default[0] = 1
                writer.writerow(default)

if __name__ == "__main__":
        # sparse_input_generator("test2/adder_module.v", "test2/adder_rand_inputs.csv")
        # random_input_generator("test2/adder_module.v", "test2/adder_rand_inputs.csv")
        sparse_input_generator_with_probability("test2/adder_module.v", "test2/adder_rand_inputs.csv", 0.5)
        # one_input_generator("test2/adder_module.v", "test2/adder_rand_inputs.csv")