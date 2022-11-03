def gather_input(
    question: str = "Please Enter Input: ",
    input_type: type = int,
    lower_range: int = None,
    upper_range: int = None,
) -> int:
    """Gathers input from a user of the input_type with optional lower and upper range"""

    while True:
        try:
            x = input(question)
            cast = input_type(x)
        except ValueError:
            print(f"Input was not recognized as a(n) {input_type.__name__}.")
        else:
            if lower_range and cast < lower_range:
                print(f"Input must be greater then {lower_range}")
            elif upper_range and cast > upper_range:
                print(f"Input must be less then {upper_range}")
            else:
                return cast


if __name__ == "__main__":
    print(gather_input())
    print(gather_input(input_type=float))
    print(gather_input(lower_range=5, upper_range=10))
