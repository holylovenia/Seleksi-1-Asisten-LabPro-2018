---------------------------------------------------------------------------------------
Keterangan Pembuat
------------------
13516094
Ahmad Faishol Huda
---------------------------------------------------------------------------------------
Deksripsi persoalan
-------------------
Soal Bab 1 Problem 04
---------------------
Tuan Vin diajarkan tentang kuadran. Bidang kartesian dibagi menjadi kuadran 1, 2, 3, 4, serta sumbu x, sumbu y, dan titik origin. Karena Tuan Vin orang yang pelupa, dia lupa ciri-ciri masing-masing daerah. Tuan Vin meminta Anda untuk membantunya dengan membuat program yang dapat menentukan daeerah suatu titik.

Soal Bab 2 Problem 02
---------------------
Seorang mahasiswa mengklasifikasikan sebuah bilangan menjadi 3 kategori, yaitu bilangan A, bilangan B, dan bilangan C.
	* Bilangan A adalah bilangan yang seluruh faktornya kurang dari nilai bilangan tersebut.
	* Bilangan B adalah bilangan yang seluruh faktornya sama dari nilai bilangan tersebut.
	* Bilangan C adalah bilangan yang seluruh faktornya lebih dari nilai bilangan tersebut.
Yang disebut faktor pada sebuah bilangan N adalah bilangan yang dapat membagi bilangan N sampai habis dan tidak sama dengan bilangan N tersebut. Bantulah mahasiswa tersebut dengan membuat program yang membaca angka dari X sampai Y, lalu menerima inputan tipe bilangan apa yang diinginkan, lalu mencetak seluruh bilangan tersebut ke layar. Jika tidak ada, maka cetak Tidak ada.

Soal Bab 3 Problem 01
---------------------
Saat sedang mengerjakan PR kalkulus, seorang mahasiswa mendapatkan soal berikut.
	Diberikan fungsi sebagai berikut. f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2 untuk semua bilangan bulat positif x kurang dari 30. Carilah nilai x berdasarkan nilai f(x) yang diberikan.
Karena deadline PR kalkulus tinggal 1 jam lagi, bantulah mahasiswa tersebut untuk mengerjakan soal tersebut!

Soal Bab 4 Problem 12
---------------------
Lucio diminta oleh orangtuanya untuk menduplikat kunci kamar hotel yang tidak ada cadangannya. Setiap kunci, memiliki nomor yang menandakan nomor kamar. Buatlah program untuk menentukan mana saja kunci yang harus diduplikat oleh Lucio

Soal Bab 5 Problem 11
---------------------
Krasti Krab telah semakin maju. Kini, telah ada N kasir yang dapat melayani penjualan. Masing-masing kasir memiliki slot antrian sepanjang M. Tuan Krab ingin mengetahui panjang antrian yang paling panjang di antara semua kasir yang ada. Dia meminta bantuan Anda untuk memecahkan masalah tersebut.

Format Input dan Output Input berupa kondisi antrian disimpan dalam file queue.txt. Dalam file tersebut, baris pertama berisi 2 bilangan bulat positif N dan M yang merepresentasikan banyak kasir dan panjang slot antrian untuk setiap kasir. N baris berikutnya berisi M bilangan 0 atau 1 yang merepresentasikan kondisi antrian pada suatu kasir. Jika bernilai 0, maka slot tersebut kosong. Sebaliknya jika bernilai 1, maka slot tersebut terisi. Diasumsikan bahwa pengunjung yang baru datang akan memilih suatu kasir dan langsung mengambil slot terdepan yang tersedia pada kasir tersebut. Oleh karena itu, pada setiap baris antrian kasir, tidak ada angka 0 yang berada di sebelah kanan angka 1. Output berupa informasi mengenai panjang antrian terpanjang yang ada.

---------------------------------------------------------------------------------------
Source code solusi
------------------
Soal Bab 1 Problem 04
---------------------
```
x = int(input("Masukan nilai X : "))
y = int(input("Masukan nilai Y : "))

# determine kuadran of x,y
if x == 0 and y == 0:
	daerah = "titik origin"
elif x == 0 :
	daerah = "sumbu Y"
elif y == 0 :
	daerah = "sumbu X"
elif x > 0 and y > 0 :
	daerah = "kuadran 1"
elif x < 0 and y > 0 :
	daerah = "kuadran 2"
elif x < 0 and y < 0 :
	daerah = "kuadran 3"
else :
	daerah = "kuadran 4"
	
print('Titik ({0},{1}) berada di {2}'.format(x, y, daerah))
```
Soal Bab 2 Problem 02
---------------------
```
# function that return the sum of all factor of a number
def getSumOfAllFactor(x) :
	if x==1 :
		return 0
	sum = 0
	i = 1
	while (i<=x**0.5):
		if x%(i)==0 :
			sum += i + x//i
		i+=1
	return int(sum-x)
# function that check if a number x is type tipe or not
def isType(x, tipe) :
	if tipe=='A' and getSumOfAllFactor(x)<int(x) :
		return True
	elif tipe=='B' and getSumOfAllFactor(x)==int(x) :
		return True
	elif tipe=='C' and getSumOfAllFactor(x)>int(x) :
		return True
	else :
		return False
# get list of all x that 
def getList(x, y, tipe) :
	L = []
	for i in range(x, y+1):
		if isType(i, tipe) :
			L.append(i)
	return L
	
x = int(input("Masukan X :"))
y = int(input("Masukan Y :"))
tipe = input("Masukan tipe bilangan :")
print("Tipe bilangan {0} pada rentang {1} sampai {2} adalah".format(tipe, x, y))
L = getList(x, y, tipe)
if not L:
	print("Tidak ada")
else :
	for number in L:
		print(number)
```
		
Soal Bab 3 Problem 01
---------------------
```
# function to check if there is a number from 1 to 30 that solve the function = f
def brute(P, f):
	S = []
	for i in range(1,31):
		Fx = 0
		for k in P:
			Fx += k
			Fx *=i
		Fx //=i
		# if i solve the function add it to S
		if Fx==f :
			S.append(i)
	return S
	
# example function
P = [2, 3, 9, -1, 3, -2]
# input value of f(x)
f = int(input("Masukan f(x) : "))
# brute all x that solve the function
S = brute(P, f)
#if there is not x solve the function
if not S:
	print("Tidak ada x yang sesuai")
# print all x thth solve the function
else:
	print("Nilai x adalah {0}".format(*S, sep=","))
```
Soal Bab 4 Problem 12
---------------------
```
#input total number of keys
n = int(input("Masukan jumlah kunci yang ada : "))

# array to save all number keys
arr = []
# save all keys number to array
print("Masukan nomor ruangan kunci yang ada :")
for i in range(0, n):
	arr.append(int(input()))

# array to check if keys has duplicate or not , 1 if it has duplicate and 0 if its not
# set all V to 0
V = [0]*n
# iterate aall keys, and check whether it has duplicate or not
for i in range(0, n):
	j = 0
	# if this keys still not checked or isnt a duplicate of previous keys
	if (V[i]==0):
		while (j < n):
			# if duplicate found set V of current keys and the duplicate to 1
			if (i!=j and arr[i]==arr[j]) :
				V[i] = V[j] = 1
			j += 1
# array to contain all keys that need to duplicated
S = []
for i in range(0, n):
	if (V[i]==0) :
		S.append(arr[i])

print("Kunci yang harus di duplikat :")
for k in s:
	print(k)
```
Soal Bab 5 Problem 11
---------------------
```
import sys

# Input from file
filename  = input("Masukan nama file : ")
file = open(filename)
sys.stdin = file

#save size of matriks on size and element matriks on M
size = [int(x) for x in input().split(" ")]
M = [[int(x) for x in input().split(" ")] for _ in range(size[0])]
print("file loaded!")
# set maks Queue to 0
maks = 0

# Check for each row on matriks for longest queue
for i in range(size[0]) :
	counter = 0
	j = size[1] - 1
	# iterate from front to back and count how long current queue
	while (j>=0) :
		# if 
		if (M[i][j] == 1) :
			counter += 1
		j -= 1
	# if this queue longer than maks queue then change maks queue
	if (counter > maks) :
		maks = counter

print("antrian terpanjang adalah {0}".format(maks))
```
---------------------------------------------------------------------------------------
Penjelasan solusi
-----------------
Soal Bab 1 Problem 04
---------------------
pada persoalan kali ini yang perlu kita lakukan hanyalah membuat percabangan(if-else statement) sebanyak 7 buah , yaitu untuk titik origin, sumbu x, sumbu y,kuadran 1, kuadran 2, kuadran 3, dan kuadran 4.  lalu tentukan hasilnya dengan masuk ke percabangan tersebut

Soal Bab 2 Problem 02
---------------------
Pada persolanan kali ini, yang pertama kita lakukan adalah lakukan iterasi dari X sampai Y , lalu cari jumlah faktor dari bilangan tersebut, setelah itu kita bisa menentukan apakah bilangan tersebut termasuk ke tipe yang dicari, jika termasuk maka cetak bilangan.

Soal Bab 3 Problem 01
---------------------
Pada persoalan kali ini, yang kita lakukan adalah melakukan iterasi dari 1 sampai 30 lalu substitusi bilangan tersebut ke fungsi yang diketahui, jika hasil dari substitusi sama dengan input maka cetak bilangan

Soal Bab 4 Problem 12
---------------------
Untuk persoalan ini yang kita lakukan setelah menerima semua input nomor kunci, buat array baru <array V>yang menunjukan apakah sebuah kunci mempuyai duplikat atau tidak, inisialisasi semua elemen array tersebut dengan 0, iterasi semua kunci, lalu lakukan pengecekan terhadap kunci kunci lain, jika ada kunci dengan nomor yang sama ubah nilai array V menjadi 1 untuk kedua kunci. iterasi array V, jika ada elemen array V yang bernilai 0 maka kunci dengan indeks tersebut di array belum memiliki duplikat, cetak nomor kunci ke layar.
	
Soal Bab 5 Problem 11
---------------------
Untuk persoalan ini buat sebuah variabel maks yang menunjukan panjang maksimum antrian di krusty krab, inisialisasi maks dengan 0, lakukan iterasi pada setaiap baris array dari ujung, buat variabel baru counter yang menunjukan panjang antrian pada baris ini,lakukan iterasi pada  baris tersebut, selama tidak menemukan nilai 0, tambah variabel counter dengan 1, setelah selesai atau bertemu dengan angka 0, bandingkan variabel counter dengan variabel maks, jika variabel counter lebih dari maks ubah nilai variabel maks dengan nilai variabel counter. cetak variabel maks.
