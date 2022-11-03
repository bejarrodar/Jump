import itertools
from datetime import datetime
from os import sep

# Write a python program to calculate number of days between two dates.
# Sample dates: (2014,7,2),(2014,7,11)


def calculate_days(start_date, end_date, format="%Y,%m,%d"):
    date1 = datetime.strptime(start_date, format).date()
    date2 = datetime.strptime(end_date, format).date()
    days = (date2 - date1).days
    return days


# Write a program to check whether a specified value is in a group of values.
# Test Data:
# 	3 -> [1,5,8,3]: True
# 	-1 -> [1,5,8,3]: False


def check_if_in(value, check_list):
    if value in check_list:
        return True
    else:
        return False


# Write program to print out a set containing all th colors from color_list_1
# 	which are not present in color_list_2
# Test Data:
# 	color_list_1 = set(["White","Black","Red"])
# 	color_list_2 = set(["Red","Green"])
# Expected Output:
# 	{"Black","White"}


def find_missing_colors(color_list_1, color_list_2):
    return color_list_1 - color_list_2


# Solve (x+y)*(x+y)
# Test Data:
# 	x=4
# 	y=3
# Expected Output:
# 	((4+3)^2) = 49


def sum_squared(x, y):
    return (x + y) ** 2


# Create all possible strings by using 'a','e','i','o','u'.
# 	Use all chars exactly once.


def string_creator(chars):
    return ("".join(a) for a in itertools.permutations(chars))


def cli_run():
    while True:
        print("=============Question Console==============")
        print("Which would you like to do?")
        print("[1] Calculate days between dates")
        print("[2] Find if a value is in a list of values")
        print("[3] Find colors in a set missing from another set")
        print("[4] Find the squared sum of two numbers")
        print("[5] Find all combinations of a set of characters")
        first_choice = input()
        try:
            first_choice = int(first_choice)
            if first_choice in [1, 2, 3, 4, 5]:
                break
            else:
                print("I didn't understand")
                print("Please enter a number between 1 and 5")
        except ValueError:
            print("I didn't understand")
            print("Please enter a number between 1 and 5")
    if first_choice == 1:
        # Calculate days between dates
        while True:
            print("How would you like your dates formatted?")
            formats = list(
                (
                    "".join(a)
                    for a in itertools.permutations(["Year ", "Month ", "Day "])
                )
            )
            for i, each in enumerate(formats):
                print(f"[{i}] {each}")
            format_input = input()
            try:
                format_input = int(format_input)
                if format_input in range(len(formats)):
                    break
                else:
                    print("I didn't understand")
            except ValueError:
                print("I didn't understand")
        print(
            f"Selected Format: {formats[format_input].split(' ')[0]} : {formats[format_input].split(' ')[1]} : {formats[format_input].split(' ')[2]}"
        )
        while True:
            print("What separator would you like to use?")
            print("[1] /")
            print("[2] -")
            print("[3] ,")
            separator = input()
            try:
                separator = int(separator)
                if separator in [1, 2, 3]:
                    break
                else:
                    print("I didn't understand")
            except ValueError:
                print("I didn't understand")
        separators = ["/", "-", ","]
        formatting = ""
        for i, each in enumerate(formats[format_input].split(" ")):
            if i != 2:
                if each.strip() == "Year":
                    formatting += "%Y"
                    formatting += separators[separator - 1]
                if each.strip() == "Month":
                    formatting += "%m"
                    formatting += separators[separator - 1]
                if each.strip() == "Day":
                    formatting += "%d"
                    formatting += separators[separator - 1]
            else:
                if each.strip() == "Year":
                    formatting += "%Y"
                if each.strip() == "Month":
                    formatting += "%m"
                if each.strip() == "Day":
                    formatting += "%d"
        print(f"Please enter the first date using the formatting {formatting}")
        start_date = input()
        print(f"Please enter the second date using the formatting {formatting}")
        end_date = input()
        days_between = calculate_days(start_date, end_date, formatting)
        print(
            f"The number of days between {start_date} and {end_date} is {days_between}"
        )
    if first_choice == 2:
        # Find if a value is in a list of values
        value = input("What Value are you searching for?")
        search_list = input("What Values did you want to search separated by ,")
        search_list = search_list.split(",")
        is_in = check_if_in(value, search_list)
        if is_in:
            print(f"{value} was found in {search_list}")
        else:
            print(f"{value} was NOT found in {search_list}")
    if first_choice == 3:
        # Find colors in a set missing from another set
        print("What colors are in your first set?")
        colors1 = input()
        print("What colors are in your second set?")
        colors2 = input()
        colors1 = set(colors1.split(","))
        colors2 = set(colors2.split(","))
        difference = find_missing_colors(colors1, colors2)
        print(f"The colors {difference} where not found in {colors2}")
    if first_choice == 4:
        # Find the squared sum of two numbers
        while True:
            print("What is your first number?")
            x = input()
            try:
                x = int(x)
                break
            except ValueError:
                print("I didn't Understand")
        while True:
            print("What is the second number?")
            y = input()
            try:
                y = int(y)
                break
            except ValueError:
                print("I didn't Understand")
        squared_sum = sum_squared(x, y)
        print(f"The sum squared of {x} and {y} is {squared_sum}")
    if first_choice == 5:
        # Find all combinations of a set of characters
        print("What characters would you like to find the combinations of?")
        print("Separated by ,")
        chars = input()
        chars = chars.split(",")
        combos = string_creator(chars)
        print(f"The combos of {chars} is:")
        print(list(combos))


if __name__ == "__main__":
    cli_run()
