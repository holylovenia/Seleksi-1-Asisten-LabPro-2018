#Prisila Michelle - 13516129

n = int(input("Masukkan banyaknya bilangan :"))
print(n, "bilangan pertama dari deret adalah")

if n > 0:
	prevprev = 0
	fib = 1
	print(fib)

	for i in range(0,n-1):
		prev = fib
		fib = prevprev + prev #angka sekarang = angka sebelum angka terakhir ditambah angka terakhir
		if fib % 3 == 0:
			fib = fib + 1
		print(fib)
		prevprev = prev
