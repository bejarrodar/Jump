#!/bin/python3

import math
import os
import random
import re
import sys


#
# implement method/function with name 'solve' below.
#
# The function is expected to return a value of type STRING.
# The function accepts following parameters:
#  1. s is of type STRING.
def find_opposite(s, e):
    for each in s:
        if each == e:
            return True
    return False


def solve(s):
    start = ["[", "(", "{"]
    end = ["]", ")", "}"]
    for i in range(len(s)):  # get each char
        for j in range(len(start)):
            if s[i] == start[j]:  # compare each char to start chars
                found = find_opposite(s[i : len(s)], end[j])
                if not found:
                    return "false"
            if s[i] == end[j]:  # compare each char to start chars
                found = find_opposite(s[0:i], start[j])
                if not found:
                    return "false"
    return "true"


if __name__ == "__main__":
    cases = ["[]{}()", "(]", "()", "([)]"]
    for s in cases:
        print(s, solve(s))
