import math
import os
import random
import re
from datetime import datetime

ran_num = [random.randint(18, 100) for x in range(100)]
log_list = [math.log(n) for n in ran_num if n % 2 == 0]
year_list = [datetime.today().year - y for y in ran_num]
py_files = [z for z in os.listdir() if re.search("^.*py$", z)]


print("\n\n", ran_num, log_list, year_list, py_files, sep="\n\n")
