#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 3 - Problem 7

def kombinasi(n, r):
	if n == r  : result = 1
	elif r == 0 : result = 1
	else:
		if (n - r) > r:
			pembilang = 1
			for i in range(n - r + 1, n + 1):
				pembilang *= i
			penyebut = 1
			for i in range(1, r + 1):
				penyebut *= i 
		else:
			pembilang = 1
			for i in range(r + 1, n + 1):
				pembilang *= i
			penyebut = 1
			for i in range(1, n - r + 1):
				penyebut *= i 
		result = pembilang / penyebut
	return int(result)

def printSegitiga(n):
	for i in range(1, n + 1):
		for j in range(1, i + 1):
			print(kombinasi(i - 1, j - 1), end='')
		print()

n = int(input("Masukan jumlah baris: "))
printSegitiga(n)