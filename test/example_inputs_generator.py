import random
import csv

def random_input_generator(input_pairs):
        with open(input_pairs, 'w', newline='', encoding='utf-8-sig') as csvfile:
                reader = csv.reader(csvfile)
                input_names = next(reader)

if __name__ == "__main__":
        random_input_generator("example_inputs_long.csv")