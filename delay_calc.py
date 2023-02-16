import csv

class input:

    def __init__(self, first, second):
        self.first = first
        self.second = second

def delay(design, input_pairs):

    # create an empty list to store the pairs
    all_pairs = []

    # open the CSV file
    with open(input_pairs, 'r', newline='', encoding='utf-8-sig') as csvfile:
        reader = csv.reader(csvfile)
        input_names = next(reader)

        # iterate over all input pairs
        for row in reader:
            pairs = dict()
            # place dictionary with input name as key into all_pairs vector
            for column in range(len(input_names)):
                pairs.update({input_names[column]: row[column]})
            all_pairs.append(pairs)

    # print the pairs
    print(all_pairs)

if __name__ == "__main__":
    # Parse the Verilog module
    object = delay(None,"example_inputs.csv")