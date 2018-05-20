#Author : Kurniandha Sukma Yunastrian (13516106)

def readFile (fileName) :
    file = open(fileName,'r')
    n = int(file.read(1))
    matrix = [[0 for i in range(n)] for j in range(n)]
    file.read(1)
    for i in range(int(n)) :
        for j in range (int(n)) :
            matrix[i][j] = file.read(1)
            file.read(1)
    file.close()
    print('matriks loaded!')
    return matrix

def transpose (matrix) :
    temp = [[0 for i in range(len(matrix))] for j in range(len(matrix))]
    for i in range(len(matrix)) :
        for j in range(len(matrix)) :
            temp[i][j] = matrix[j][i]
            
    return temp

def multiply (mat1,mat2) :
    temp = [[0 for i in range(len(matrix))] for j in range(len(matrix))]
    for i in range(len(temp)) :
        for j in range(len(temp)) :
            temp[i][j] = 0
            
    for i in range(len(mat1)) :
        for j in range(len(mat2)) :
            for k in range(len(mat1)) :
                temp[i][j] += int(mat1[i][k]) * int(mat2[k][j])
                
    return temp

def orthogonal_check (matrix) :
    mat_trans = transpose(matrix)
    result = multiply(matrix,mat_trans)
    check = 0
    i=0
    j=0
    while ((i<len(matrix)) and (check == 0)) :
        if (i == j) :
            if (result[i][j] != 1) :
                check = 1
        else :
            if (result[i][j] != 0) :
                check = 1
        if (j == len(matrix)-1) :
            i += 1
            j = 0
        else :
            j += 1
    if (check == 0) :
        return 'Yes'
    else :
        return 'No'

#Main Program
matrix = readFile('matriks.txt')
print (orthogonal_check(matrix))
