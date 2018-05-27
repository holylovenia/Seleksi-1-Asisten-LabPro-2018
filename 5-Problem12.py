#Prisila Michelle - 13516129

import sys,os

def openfile(filename): #fungsi untuk membaca file
	with open(os.path.join(sys.path[0], filename), 'r') as file:
		size = int(file.readline())
		matrix = []
		for i in range(0,size):
			string = file.readline()
			string = string[:-1]
			matrix.append(list(string))		
			while ' ' in matrix[i]:
				matrix[i].remove(' ')

		return size, matrix

def findsize(contour,size):
	dp_matrix = []
	for i in range(0,size):
		dp_matrix.append([])

	max_size = 0
	
	for i in range(0,size):
		for j in range(0,size):
			if i == 0 or j == 0:
				dp_matrix[i].append(1)
			else:
				if contour[i][j] == contour[i-1][j] == contour[i][j-1] == contour[i-1][j-1]:
					dp_matrix[i].append(min(min(dp_matrix[i][j-1], dp_matrix[i-1][j]), dp_matrix[i-1][j-1]) + 1)
				else:
					dp_matrix[i].append(1)

			max_size = max(max_size, dp_matrix[i][j])

	return max_size

size,contour = openfile("contour.txt")

n = findsize(contour,size)
	
print("file loaded!")
print("Luas maksimum Krasti Krab yang dapat dibangun adalah", n*n)