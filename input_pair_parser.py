import csv

class input_pair:
    def __init__(self, first, second):
        self.first = first
        self.second = second

def parse_csv(input_pairs):

    # create an empty list to store the pairs
    all_pairs = []

    # open the CSV file
    with open(input_pairs, 'r', newline='', encoding='utf-8-sig') as csvfile:
        reader = csv.reader(csvfile)
        input_names = next(reader)

        # iterate over all input pairs
        for row in reader:
            first_pairs = dict()
            second_pairs = dict()
            # place dictionary with input name as key into all_pairs vector
            for column in range(len(input_names)):
                if column + 1 <= len(input_names)/2:
                    first_pairs.update({input_names[column]: row[column]})
                else:
                    second_pairs.update({input_names[column]: row[column]})
            all_pairs.append(input_pair(first_pairs,second_pairs))

    # # print the pairs
    # for i in range(len(all_pairs)):
    #     print(f"#{i+1} First Pair: {all_pairs[i].first}")
    #     print(f"#{i+1} Second Pair: {all_pairs[i].second}")

    return all_pairs

if __name__ == "__main__":
    # Parse the Verilog module
    object = parse_csv("example_inputs.csv")