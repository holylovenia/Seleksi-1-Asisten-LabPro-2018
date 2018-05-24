lines = [line.rstrip('\n') for line in open('contour.txt')]
mat = []
if ((len(lines[0]) == 1) and (len(lines) != 1)):
    lines.pop(0)

for line in lines :
    lin = line.split(" ")
    for i in range(0,len(lin)):
        lin[i] = int(lin[i])
    mat.append(lin)
print("file loaded!")

def findSubMatrix(mtrx):
    matLen = len(mtrx) 
    tempMat = []
    for i in range(matLen):
        lst = []
        for j in range(matLen):
            lst.append(0)
        tempMat.append(lst)

    res = 0
    for i in range (0,matLen):
        for j in range(0,matLen):
            if((i == 0) or (j == 0)):
                tempMat[i][j] = 1
            
            elif((mtrx[i][j] == mtrx[i-1][j]) and (mtrx[i][j] == mtrx[i][j-1]) and (mtrx[i][j] == mtrx[i-1][j-1])):
                tempMat[i][j] = min(min(tempMat[i-1][j],tempMat[i][j-1]),tempMat[i-1][j-1]) + 1
            else:
                tempMat[i][j] = 1
            res = max(res,tempMat[i][j])
    return(res)

n = findSubMatrix(mat)
print("Luas maksimum Krasti Krab yang dapat dibangun adalah " + str(n))
