#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 4 - Problem 6

def selisihKekayaan(kekayaan1, kekayaan2) :	
	#menghasilkan kekayaan2 yang tidak dimiliki oleh kekayaan1
	diff = []
	for k2 in kekayaan2 :
		found = False
		for k1 in kekayaan1 :
			if k2 == k1 : 
				found = True
				break
		if not found :
			diff.append(k2)
	return diff

kekayaanAdolf = []
kekayaanTetangga = []

n1 = int(input("Masukkan jumlah kekayaan negara Adolf : "))
print("Masukkan kekayaan negara Adolf :")
for i in range(1, n1 + 1) :
	kekayaanAdolf.append(input())

n2 = int(input("Masukkan jumlah kekayaan negara tetangga : "))
print("Masukkan kekayaan negara tetangga :")
for i in range(1, n2 + 1) :
	kekayaanTetangga.append(input())

diff = selisihKekayaan(kekayaanAdolf, kekayaanTetangga)
if not diff:
	print("Negara adolf memiliki segalanya")
else:
	print("Negara Adolf tidak memiliki :")
	for elem in diff:
		print(elem)