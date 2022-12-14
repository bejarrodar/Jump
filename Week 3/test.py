def valid_solution(board):
    answers = [1,2,3,4,5,6,7,8,9]
    for i in range(9):
        column = []
        for each in board:
            for x in answers:
                if x not in each:
                    return False
            column.append(each[i])
        for x in answers:
            if x not in column:
                return False
    for i in range(9):
        sub_grid = []
        match i:
            case 0:
                sub_grid.append(board[0][0:3])
                sub_grid.append(board[1][0:3])
                sub_grid.append(board[2][0:3])
            case 1:
                sub_grid.append(board[0][3:6])
                sub_grid.append(board[1][3:6])
                sub_grid.append(board[2][3:6])
            case 2:
                sub_grid.append(board[0][6:])
                sub_grid.append(board[1][6:])
                sub_grid.append(board[2][6:])
            case 3:
                sub_grid.append(board[3][0:3])
                sub_grid.append(board[4][0:3])
                sub_grid.append(board[5][0:3])
            case 4:
                sub_grid.append(board[3][3:6])
                sub_grid.append(board[4][3:6])
                sub_grid.append(board[5][3:6])
            case 5:
                sub_grid.append(board[3][6:])
                sub_grid.append(board[4][6:])
                sub_grid.append(board[5][6:])
            case 6:
                sub_grid.append(board[6][0:3])
                sub_grid.append(board[7][0:3])
                sub_grid.append(board[8][0:3])
            case 7:
                sub_grid.append(board[6][3:6])
                sub_grid.append(board[7][3:6])
                sub_grid.append(board[8][3:6])
            case 8:
                sub_grid.append(board[6][6:])
                sub_grid.append(board[7][6:])
                sub_grid.append(board[8][6:])
        flat_list = [item for sublist in sub_grid for item in sublist]
        for x in answers:
            if x not in flat_list:
                return False
    return True



print(valid_solution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
                    [6, 7, 2, 1, 9, 5, 3, 4, 8],
                    [1, 9, 8, 3, 4, 2, 5, 6, 7],
                    [8, 5, 9, 7, 6, 1, 4, 2, 3],
                    [4, 2, 6, 8, 5, 3, 7, 9, 1],
                    [7, 1, 3, 9, 2, 4, 8, 5, 6],
                    [9, 6, 1, 5, 3, 7, 2, 8, 4],
                    [2, 8, 7, 4, 1, 9, 6, 3, 5],
                    [3, 4, 5, 2, 8, 6, 1, 7, 9]]), True)

print(valid_solution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
                            [6, 7, 2, 1, 9, 0, 3, 4, 9],
                            [1, 0, 0, 3, 4, 2, 5, 6, 0],
                            [8, 5, 9, 7, 6, 1, 0, 2, 0],
                            [4, 2, 6, 8, 5, 3, 7, 9, 1],
                            [7, 1, 3, 9, 2, 4, 8, 5, 6],
                            [9, 0, 1, 5, 3, 7, 2, 1, 4],
                            [2, 8, 7, 4, 1, 9, 6, 3, 5],
                            [3, 0, 0, 4, 8, 1, 1, 7, 9]]), False)

print(valid_solution([[1, 3, 2, 5, 7, 9, 4, 6, 8]
                        ,[4, 9, 8, 2, 6, 1, 3, 7, 5]
                        ,[7, 5, 6, 3, 8, 4, 2, 1, 9]
                        ,[6, 4, 3, 1, 5, 8, 7, 9, 2]
                        ,[5, 2, 1, 7, 9, 3, 8, 4, 6]
                        ,[9, 8, 7, 4, 2, 6, 5, 3, 1]
                        ,[2, 1, 4, 9, 3, 5, 6, 8, 7]
                        ,[3, 6, 5, 8, 1, 7, 9, 2, 4]
                        ,[8, 7, 9, 6, 4, 2, 1, 5, 3]]), True)

print(valid_solution([[1, 3, 2, 5, 7, 9, 4, 6, 8]
                        ,[4, 9, 8, 2, 6, 1, 3, 7, 5]
                        ,[7, 5, 6, 3, 8, 4, 2, 1, 9]
                        ,[6, 4, 3, 1, 5, 8, 7, 9, 2]
                        ,[5, 2, 1, 7, 9, 3, 8, 4, 6]
                        ,[9, 8, 7, 4, 2, 6, 5, 3, 1]
                        ,[2, 1, 4, 9, 3, 5, 6, 8, 7]
                        ,[3, 6, 5, 8, 1, 7, 9, 2, 4]
                        ,[8, 7, 9, 6, 4, 2, 1, 3, 5]]), False)

print(valid_solution([[1, 3, 2, 5, 7, 9, 4, 6, 8]
                        ,[4, 9, 8, 2, 6, 0, 3, 7, 5]
                        ,[7, 0, 6, 3, 8, 0, 2, 1, 9]
                        ,[6, 4, 3, 1, 5, 0, 7, 9, 2]
                        ,[5, 2, 1, 7, 9, 0, 8, 4, 6]
                        ,[9, 8, 0, 4, 2, 6, 5, 3, 1]
                        ,[2, 1, 4, 9, 3, 5, 6, 8, 7]
                        ,[3, 6, 0, 8, 1, 7, 9, 2, 4]
                        ,[8, 7, 0, 6, 4, 2, 1, 3, 5]]), False)

print(valid_solution([[1, 2, 3, 4, 5, 6, 7, 8, 9]
                            ,[2, 3, 4, 5, 6, 7, 8, 9, 1]
                            ,[3, 4, 5, 6, 7, 8, 9, 1, 2]
                            ,[4, 5, 6, 7, 8, 9, 1, 2, 3]
                            ,[5, 6, 7, 8, 9, 1, 2, 3, 4]
                            ,[6, 7, 8, 9, 1, 2, 3, 4, 5]
                            ,[7, 8, 9, 1, 2, 3, 4, 5, 6]
                            ,[8, 9, 1, 2, 3, 4, 5, 6, 7]
                            ,[9, 1, 2, 3, 4, 5, 6, 7, 8]]), False)
