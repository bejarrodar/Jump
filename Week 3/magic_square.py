def is_magic_square(arr:list[list]) -> bool:
    initial_sum = sum(arr[0]) #find the sum of first row
    len_arr = len(arr)
    diag2_sum = 0
    for x in range(len(arr)): # iterate through each row
        diag2_sum += arr[x][len(arr)-1-x]
        if len(arr[x]) != len_arr: return False # make sure the input is a square
        if sum(arr[x]) != initial_sum: return False #compare sum of row to initial sum if != return false
        col_sum = 0
        diag_sum = 0
        for y in range(len(arr)): #iterate through each column 
            col_sum += arr[x][y]
            diag_sum += arr[y][y]
        if col_sum != initial_sum: return False # compare sum of column to initial if != return false
        if diag_sum != initial_sum: return False # check first diagonal 
    if diag2_sum != initial_sum: return False # check second diagonal 
    return True
        


arr = [[2,7,6],[9,5,1],[4,3,8]]
print(is_magic_square(arr))