from math import *


def isPrime(n: int) -> bool:
    """This function returns TRUE if passed number is Prime or FALSE if not"""

    if n <= 1:
        return False

    if n == 2 or n == 3:
        return True

    if n % 2 == 0 or n % 3 == 0:
        return False

    for i in range(5, floor(sqrt(n)), 6):
        if n % i == 0 or n % (i + 2) == 0:
            return False

    return True


lst = []
fizz = 0
buzz = 0
fizzbuzz = 0
sums = 0

try:
    max = int(input("Please enter the max range: "))
except ValueError:
    print("Integer was not entered for Max")

prime = input("Would you like to exclude prime numbers? (y/n)").lower()[0]


for i in range(1, max + 1):
    if i % 3 == 0:
        if i % 5 == 0:
            lst.append("Fizzbuzz")
            fizzbuzz += 1
        lst.append("Fizz")
        fizz += 1
    elif i % 5 == 0:
        lst.append("Buzz")
        buzz += 1
    else:
        if prime == "y":
            if not isPrime(i):
                lst.append(i)
                sums += i
        else:
            lst.append(i)
            sums += i

for element in lst:
    print(element)

print(
    f"""Number of Fizz: {fizz}
Number of Buzz: {buzz}
Number of FizzBuzz: {fizzbuzz}
Sum of Non Fizzbuzz': {sums}"""
)
