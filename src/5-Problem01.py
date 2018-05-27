def checkBysimmetric(dim, matrix):
  half = 0

  if(dim % 2 == 1):
    half = dim//2 + 1
  else :
    half = dim//2

  for i in range(half):
    for j in range(dim):
      if((matrix[i][j] != matrix[j][i]) or (matrix[i][j] != matrix[dim-1-j][dim-1-i])):
        return False

  return True

matrix = []
dimension = 0

with open('matrix.txt') as file :
  try:
    dimension = int(file.readline())

    for i in range(dimension):
      temp = file.readline().strip().split(' ')
      matrix.append(temp)
  
  except Excetion as e:
    print(e)

print('matriks loaded!')
print('Yes') if checkBysimmetric(dimension, matrix) else print('No')
