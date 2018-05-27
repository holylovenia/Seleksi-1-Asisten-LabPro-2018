#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 2 - Problem 8
from math import sqrt, floor

ListPrime = []
A = int(input("Masukkan nilai A :"))
B = int(input("Masukkan nilai B :"))
print("Bilangan prima antara %d sampai %d adalah" %  (A, B))

for num in range(2, B + 1):
	temp = floor(sqrt(num))
	prime = True
	for i in range(2, temp+1):	
		if num % i == 0:
			prime = False
			break
	if prime : ListPrime.append(num)
for prime in ListPrime:
	print(prime)