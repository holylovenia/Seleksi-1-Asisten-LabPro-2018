#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 5 - Problem 5

def calculateMagicConstant(n):
	if n % 2 == 0:
		return int((n * (n * n + 1)) / 2)
	else:
		return int(n * ((n * n + 1) / 2)) 

def createIndex(n):
	#n is the size of the matrix
	#createIndex(n) will return a list of indexes in row, column, and diagonal form
	
	listIndex = []

	#row Indexes
	for i in range(0, n):
		listRow = []
		for j in range(0, n):
			val = i * n + j
			listRow.append(val)
		listIndex.append(listRow)

	#column Indexes
	for i in range(0, n):
		listCol = []
		for j in range(0, n):
			val = i + j * n
			listCol.append(val)
		listIndex.append(listCol)

	#diagonal Indexes
	listDiagonal = []
	for i in range(0, n):
		val = i + n * i
		listDiagonal.append(val)
	listIndex.append(listDiagonal)

	listDiagonal = []
	for i in range(1, n + 1):
		val = i * (n - 1)
		listDiagonal.append(val)
	listIndex.append(listDiagonal)

	return listIndex

matrix = []

for line in open('matriks.txt'):
	for num in line.split():
		matrix.append(int(num))
print("matriks loaded!")

n = matrix.pop(0)
magicConstant = calculateMagicConstant(n)
indexes = createIndex(n)

for idx in indexes:
	if sum(matrix[i] for i in idx) != magicConstant:
		print("No")
		break

print("Yes")