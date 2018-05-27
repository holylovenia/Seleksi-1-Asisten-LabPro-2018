#Prisila Michelle - 13516129

n = int(input("Masukkan jumlah barang : "))

barang = []
for i in range(0,n):
	x = input("Masukkan nama barang : ")
	barang.append(x)

while barang:
	print("	1. Jual")
	print("	2. Lihat stok")

	menu = input("Pilihan menu : ")

	if menu == '1':
		chosenthing = input("Masukkan nama barang : ")
		found = False
		i = 0
		while i < len(barang) and not found:
			if barang[i] == chosenthing:
				found = True
			else:
				i = i + 1

		if found:
			print("Barang berhasil dijual")
			barang.remove(chosenthing)
		else:
			print("Barang tidak ada")

	elif menu == '2':
		print("Stok toko : ", end='')
		for i in range(len(barang)):
			if i < (len(barang)-1):
				print(barang[i], end=', ')
			else:
				print(barang[i])

print("Barang sudah habis, silahkan melakukan restok barang")
