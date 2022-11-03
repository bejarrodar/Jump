import numpy as np


# return numpy array of fibonacci sequence up to a given number
def fib_array(x:int) -> np.array:
    # start 0 1
    if x == 0:
        return np.array([0],int)
    # start 0 1
    fib_list = [0,1]
    # iterate through the list adding 
    while fib_list[-1]+fib_list[-2] <= x:
        fib_list.append(fib_list[-1]+fib_list[-2])
    # have to use array of python objects because int can't handle the size
    return np.array(fib_list)
        
print(fib_array(1))

# return numpy array of factorial sequence up to a given number
def fac_array(x:int) -> np.array:
    # factorial of 0 = 1
    if x == 0:
        return np.array([1])
    fac_list = [1]
    # iterate through each number up to given number adding to list
    for i in range(1,x+1):
        product = 1
        for j in range(i,0,-1):
            product *=j
        fac_list.append(product)
    # have to use array of python objects because int can't handle the size
    return np.array(fac_list)

print(fac_array(10))

