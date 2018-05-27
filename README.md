# Seleksi 1 Asisten Laboratorium Programming 2018
Oleh : Dandy Arif Rahman(13516086)

## Bab 1 Percabangan - Problem 9
### Deskripsi Soal
Tuan Vin ingin mengetahui suhu udara sekarang. Terdapat termometer pada dinding di dekatnya. Namun terkadang, satuan suhu yang tertulis tidak sesuai dengan yang ingin diketahuinya. Dari 3 jenis suhu R, C dan F, berikut adalah perbandingannya:


C : R : (F-32) = 5 : 4 : 9


Tuan Vin meminta bantuan Anda untuk dapat membaca suhu dengan lebih mudah


**Format Input & Output (input di-*bold*)**
***
Masukan satuan suhu termometer: **C**

Masukan besar suhu: **40**

Masukan satuan yang ingin diketahui: **R**

Besar suhu dalam R: 32
***

### Source Code Solusi
```Python
#Nama	: Dandy Arif Rahman
#NIM	: 13516086
#Soal	: BAB 1 - Problem 9

deg1 = input("Masukan suhu satuan termometer: ")
t1 = float(input("Masukan besar suhu: "))
deg2 = input("Masukan satuan yang ingin diketahui: ")

if (deg1 == "C"):
	if (deg2 == "C"):
		t2 = t1
	elif (deg2 == "R"):
		t2 = 4 / 5 * t1
	elif (deg2 == "F"):
		t2 = (9 / 5 * t1) + 32
	else:
		t2 = -1
elif (deg1 == "R"):
	if (deg2 == "C"):
		t2 = 5 / 4 * t1
	elif (deg2 == "R"):
		t2 = t1
	elif (deg2 == "F"):
		t2 = (9 / 4 * t1) + 32
	else:
		t2 = -1
elif (deg1 == "F"):
	if (deg2 == "C"):
		t2 = 5 / 9 * (t1 - 32)
	elif (deg2 == "R"):
		t2 = 4 / 9 * (t1 - 32)
	elif (deg2 == "F"):
		t2 = t1
	else:
		t2 = -1
else:
	t2 = -1

if t2 == -1:
	print("ERROR")
else:	
	print("Besar suhu dalam %s: %.2f" % (deg2, t2))
```
### Pembahasan Solusi
Pertama, satuan suhu saat ini dimasukkan ke variabel **deg1**, nilai suhu saat ini dimasukkan ke variabel **t1**, dan satuan suhu yang diinginkan dimasukkan ke variabel **deg2**. Kemudian, program mengecek apakah **deg1** bernilai 'C' atau 'R' atau 'F'. Jika deg1 bernilai selain dari 3 karakter diatas maka nilai **t2** di-assign dengan nilai -9999. Setelah itu, dilakukan pengecekan nilai variabel **deg2** apakah bernilai 'C' atau 'R' atau 'F'. Jika **deg** bernilai selain dari 3 karakter diatas maka nilai **t2** di-assign dengan nilai -9999. Setelah diketahui nilai **deg1** dan **deg2**, dilakukan perhitungan konversi rumus dari **t1** menjadi **t2**. Di tahap terakhir, dilakukan pengecekan, jika nilai **t2** -9999 maka dikeluarkan pesan error, jika selain dari itu dikeluarkan nilai **t2**.

## Bab 2 Pengulangan - Problem 8
### Deskripsi Soal

Agar dapat lulus dari kuliah, seorang mahasiswa dituntut untuk dapat menyebutkan bilangan prima diantara **A** dan **B**. Bantulah mahasiswa tersebut untuk menyebutkan bilangan prima tersebut.


**Catatan :** 
Buatlah suatu fungsi yang mengecek apakah suatu bilangan merupakan bilangan prima atau bukan


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan nilai A :1 
Masukkan nilai B :10
Bilangan prima diantara 1 sampai 10 adalah
2  
3  
5  
7  
```
```
Masukkan nilai A :10
Masukkan nilai B :20
Bilangan prima diantara 10 sampai 20 adalah 
11  
13  
17  
19
```
---------------------------------

### Source Code Solusi
```Python
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
```

### Pembahasan Solusi
Pertama, input dari user dimasukan ke variabel **A** sebagai batas bawah dan input selanjutnya dimasukan ke variabel **B** sebagai batas atas. Kemudian dilakukan pengecekan bilangan prima dengan cara, dilakukan looping dari angka 2 hingga **B** misal variabel **num**, lalu ­assign sebuah variabel **temp** dengan fungsi bawah dari akar **num**, kemudian dilakukan pengecekan dari angka 2 hingga **temp** misal **i**, jika **num** habis dibagi dengan dengan **i** maka num adalah bilangan prima, dan ditambahkan ke list bilangan prima pada variabel **ListPrime**.

## Bab 3 Fungsi dan Prosedur - Problem 9
### Deskripsi Soal
Segitiga Pascal adalah segitiga yang dibuat dimulai dari angka 1 dan tiap angka di baris kedua dan selanjutnya berasal dari jumlah dua angka di atasnya. Berikut contoh 5 baris pertama Segitiga Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1



Segitiga Pascal juga dapat dibentuk dari kombinatorik, dengan bilangan pada baris ke-i dan kolom ke-j bernilai C(i-1,j-1). Berikut adalah contoh penerapan pada 5 baris Segitiga Pascal.

C(0,0)

C(1,0) C(1,1)

C(2,0) C(2,1) C(2,2)

C(3,0) C(3,1) C(3,2) C(3,3)

C(4,0) C(4,1) C(4,3) C(4,4) C(4,5)


Buatlah sebuah program yang membuat Segitiga Pascal! (Buat fungsi Kombinasi(n, r) untuk
memudahkan penghitungan)


**Format Input & Output (input di-*bold*)**
***
Masukan jumlah baris: **5**

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1
***

### Source Code Solusi
```Python
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
```

### Pembahasan Solusi
Pertama, input jumlah baris dimasukan ke variabel **n**. Lalu dengan fungsi printSegitiga(n) gambar segitiga ditampilkan.

Program terdiri dari 2 fungsi yaitu **kombinasi(n,r)** dan **printSegitiga(n)**. Fungsi **kombinasi(n,r)** melakukan perhitungan nCr dengan cara, pertama, pengecekan nilai antara **n-r** dan **r** mana yang lebih besar, ini ditujukan untuk mempercepat perhitungan. Jika **n-r** lebih besar, dilakukan perhitungan ((n-r+1) x (n-r+2) x ... x (n)) / r!. Sedangkan jika **r** lebih besar dilakukan perhitungan ((r+1) x (r+2) x ... x (n)) / (n-r)!.

Fungsi **printSegitiga(n)** menghasilkan gambar segitiga pascal dengan ukuran **n**. Pertama dilakukan looping sebanyak **n** dengan variabel **i** dan looping didalamnya sebanyak **i** dengan variabel **j**. Kemudian dilakukan pencetakan nilai **kombinasi(i-1, j-1)**.

## Bab 4 *Array* - Problem 6
### Deskripsi Soal

Adolf suka membandingkan kekayaan negaranya dan negara lain. Ia ingin mengetahui apa yang tidak dimiliki oleh negaranya di negara tetangga. Buatlah program untuk menentukan mana saja kekayaan negara tetangga yang tidak dimiliki oleh negara Adolf.

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **7**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

**Nuklir**

**Berlian**

**Gedung**

**Ternak**

Negara adolf tidak memiliki :

Gedung

Ternak
***
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **3**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

Negara adolf memiliki segalanya
***

### Source Code Solusi
```Python
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
```

### Pembahasan Solusi
Pertama, variabel **n1** di-*assign* dengan jumlah kekayaan negara Adolf, kemudian variabel list **kekayaanAdolf** di-*assign* dengan kekayaan Adolf sebanyak **n1**, variabel **n2** di-*assign* dengan jumlah kekayaan negara tetangga, kemudian variabel list **kekayaanTetangga** di-*assign* dengan kekayaan tetangga sebanyak **n2**. Lalu dilakukan proses pencarian kekayaan tetangga yang tidak dimiliki adolf menggunakan fungsi **selisihKekayaan(kekayaan1, kekayaan2)** yang hasilnya di-*assign* ke variabel **diff**.

Fungsi **selisihKekayaan(kekayaan1, kekayaan2)** menghasilkan list kekayaan2 yang tidak dimiliki kekayaan1, dengan cara iterasi seluruh **kekayaan2** dengan variabel **k2** lalu didalamnya iterasi lagi pada **kekayaan1** dengan variabel **k1** lalu dicek apakah **k2** terdapat di **kekayaan1** jika iya lanjut ke **k2** berikutnya, jika tidak tambahkan **k2** ke list kekayaan2 yang tidak dimiliki oleh k1 ke variabel **diff**.

Setelah itu dilakukan pengecekan variabel **diff**, jika kosong maka dikeluarkan pesan **Negara adolf memiliki segalanya**, jika tidak dikeluarkan isi dari list **diff**

## Bab 5 Matriks dan File Eksternal - Problem 5
### Deskripsi Soal

Tuan Krab mempunyai diberikan teka-teki oleh Plankton. Dia diberikan suatu matriks, kemudian dia diminta untuk menentukan apakah matriks tersebut merupakan *magic square* atau bukan. 
*Magic square* merupakan suatu matriks persegi berukuran `N`x`N` dengan elemen yang berbeda-beda. Masing-masing elemen berada pada rentang dari 1 hingga `N`^2. Matriks tersebut dikatakan merupakan *magic square* jika penjumlahan elemen-elemen pada setiap kolom, baris, dan diagonal memiliki nilai yang sama.
Karena cukup kesulitan, Tuan Krab meminta bantuan Anda untuk menyelesaikan permasalahan tersebut.

**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *magic square*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *magic square*, maka dituliskan **No**. 
- matriks.txt

```
3
2   7   6
9   5   1
4   3   8
```

- *runtime program*

```
matriks loaded!
Yes
```

-----------------------------------

### Source Code Solusi
```Python
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
```

### Pembahasan Solusi
Pertama, dilakukan pembacaan dari file eksternal bernama "matriks.txt", semua angka yang ada di file tersebut dimasukan ke sebuah list **matrix**. Kemudian karena angka pertama yang merupakan ukuran matriks juga ikut terbaca ke list **matrix** maka elemen pertama list di pop dan dimasukan ke variabel **n**. Kemudian di-*assign* variabel **magicConstant** dengan fungsi **calculateMagicConstant(n)**, dan variabel **indexes** dengan fungsi **createIndex(n)**.

Fungsi **calculateMagicConstant(n)** berisi rumus matematika untuk melakukan perhitungan bilangan magic constant dari suatu matriks berukuran **n**. Rumus tersebut dibedakan jika **n** ganjil dan genap. Jika Ganjil maka rumusnya **n * ((n * n + 1) / 2)**, sedangkan jika Genap maka rumusnya **(n * (n * n + 1)) / 2**. Magic Constant sendiri merupakan nilai penjumlahan tiap baris, kolom, dan diagonal dari sebuah matriks, jika ada salah satu baris atau kolom atau diagonal yang jumlahnya tidak sama dengan Magic Constant maka matriks tersebut bukanlah magic square matrix.

Fungsi **createIndex(n)** adalah fungsi yang memudahkan untuk penjumlahan elemen-elemen matriks berdasarkan baris, kolom, dan diagonal. Untuk matriks berukuran n, akan terdapat n baris, n kolom, dan 2 diagonal. Contoh untuk matriks berukuran 3 maka matriks akan mempunyai indeks

(0,4,8)           (2,4,6)
d1                d2

0        1        2   r1(0,1,2)
3        4        5   r2(3,4,5) 
6        7        8   r3(6,7,8)

c1       c2       c3
(0,3,6)  (1,4,7)  (2,5,8)

r1,r2,r3 merupakan indeks untuk elemen baris
c1,c2,c3 merupakan indeks untuk elemen kolom
d1,d2 merupakan indeks untuk elemen diagonal

Lalu pada list **matrix** di cek apakah tiap elemen berindeks **idx** pada **indexes** jumlahnya sama dengan **magicConstant**, jika ada satu saja yang jumlahnya berbeda maka matriks tersebut bukan magic squared matrix. 
