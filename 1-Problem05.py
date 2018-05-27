#Prisila Michelle - 13516129

#menerima masukan nama dan nilai
nama = input("Masukan Nama : ")
nilai = int(input("Masukan Nilai : "))

#menentukan indeks yang didapat dari masukan nilai
if 0 <= nilai <= 20:	
	indeks = 'E'
elif 21 <= nilai <= 40:
	indeks = 'D'
elif 41 <= nilai <= 60:
	indeks = 'C'
elif 61 <= nilai <= 80:
	indeks = 'B'
elif 81 <= nilai <= 100:
	indeks = 'A'

#menampilkan nama dan indeks yang didapat
print(nama, "mendapat nilai", indeks)  