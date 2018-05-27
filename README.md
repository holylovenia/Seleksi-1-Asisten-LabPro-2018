# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Dibuat oleh : Prisila Michelle - 13516129

Petunjuk:

- Silahkan fork GitHub berikut agar dapat dikerjakan pada GitHub kalian masing-masing *(private)*.
- Pembagian soal dapat dilihat pada [tautan](https://docs.google.com/spreadsheets/d/1l8SNlbK4EI8wFb5_3pDDi3IfioO7VglCcPmfFCK2jJU/edit?usp=sharing) berikut ini.
- Kerjakan persoalan berikut (sesuai dengan pembagian) menggunakan algoritma yang menurut Anda mempunyai kInerja terbaik.
- Tuliskan penjelasan algoritma tersebut beserta *source code* pada saat pengumpulan.
- Perhatikan, yang perlu dikumpulkan adalah:
  - **README.md**, tolong hapus bagian yang tidak perlu. Readme minimal berisi hal-hal berikut:
    - Keterangan pembuat (NIM dan Nama Lengkap)
    - Deskripsi semua soal yang dikerjakan
    - *Source code* solusi untuk semua soal yang dikerjakan
    - Penjelasan solusi untuk semua soal yang dikerjakan
  - Direktori **src**, berisi file-file solusi soal, dengan format nama file **X-ProblemYY.eks**
    - **X** adalah nomor bab
    - **YY** adalah nomor problem
    - **eks** adalah ekstensi file solusi (sesuai bahasa pemrograman)
    - Contoh: 4-Problem03.pas
- Pemakaian fungsi bawaan yang berlebihan tidak diperbolehkan.
- ***Deadline pull request:*** Minggu, 27 Mei 2018 pukul 23.59, dengan subjek **[NIM] - Seleksi 1 Asisten LabPro 2018** (contoh: 13515113 - Seleksi 1 Asisten LabPro 2018). Jangan lupa segera di-*public* setelah melakukan *deadline* berlalu.
- *Have a nice day!*
------

------

------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 5](#problem-5)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 3](#problem-3-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 2](#problem-2-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 1](#problem-1-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 12](#problem-12-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------
### Problem 5

Tuan Vin diminta oleh dosennya untuk mencatat nilai ujian dalam indeks A-E, sementara nilai yang disediakan dalam bentuk 0-100. Berikut adalah konversina:


- 81 - 100: A
- 61 - 80: B
- 41 - 60: C
- 21 - 40: D
- 0 - 20: E


Karena banyak nilai yang harus dicatat, Tuan Vin meminta bantuan Anda untuk memudahkan merubah nilai.


**Format Input & Output (input di-*bold*)**
***
Masukan Nama : **Kevin**

Masukan Nilai : **88**

Kevin mendapat nilai A
***
Masukan Nama : **Albert**

Masukan Nilai : **63**

Albert mendapat nilai B
*** 

---------------------------------
#### Source code :
```
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
```
---------------------------------
#### Penjelasan : 
Program menerima masukan nama dan nilai, setelah itu masukan nilai dicek, apabila nilainya antara 0 sampai 20, indeksnya adalah E, apabila nilainya antara 21 sampai 40, indeksnya adalah D, apabila nilainya antara 41 sampai 60, indeksnya adalah C, apabila nilainya antara 61 sampai 81, indeksnya adalah B, dan apabila nilainya antara 81 sampai 100, maka indeksnya adalah A. Setelah itu, program menampilkan nama dan indeks yang didapat.

---------------------------------


## Bab 2 - Pengulangan
---------------------------------
### Problem 3


Karena bosan belajar kalkulus, seorang mahasiswa membuat sebuah deret. Deret tersebut sama dengan deret fibonacci, namun setiap bertemu bilangan yang habis dibagi **3**, maka nilai bilangan tersebut ditambahkan **1**. 
Sebagai contoh, 10 nilai deret pertama adalah sebagai berikut :
**1, 1, 2, 4, 7, 11, 19, 31, 50, 82, ...**


**Penjelasan :** 
Untuk bilangan keempat, seharusnya nilainya adalah 3, namun karena 3 habis dibagi 3, maka nilainya ditambah 1 menjadi 4 


Mahasiswa tersebut ingin membuat program, karena ia merasa deret ini sangatlah hebat. Bantulah mahasiswa tersebut!


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan banyaknya bilangan :10 
10 bilangan pertama dari deret adalah  
1  
1  
2  
4  
7  
11  
19  
31  
50  
82  
```
```
Masukkan banyaknya bilangan :3 
10 bilangan pertama dari deret adalah  
1  
1  
2  
```
---------------------------------
#### Source code :
```
n = int(input("Masukkan banyaknya bilangan :"))
print(n, "bilangan pertama dari deret adalah")

if n > 0:
	prevprev = 0
	fib = 1
	print(fib)
	
	for i in range(0,n-1):
		prev = fib
		fib = prevprev + prev
		if fib % 3 == 0:
			fib = fib + 1
		print(fib)
		prevprev = prev
```

---------------------------------
#### Penjelasan : 
Program menerima masukan banyaknya bilangan pada deret. Setelah itu, print bilangan pertama yaitu 1, lalu lakukan iterasi sebanyak n-1 kali untuk menampilkan nilai-nilai pada deret. Digunakan variabel prev yang menyimpan angka terakhir, prevprev yang menyimpan angka sebelum prev, dan fib yang menyimpan jumlah dari prevprev dan prev. Pada setiap iterasi, nilai prev diset dengan nilai fib, lalu nilai fib diganti dengan nilai prevprev ditambah prev. Setelah itu, jika nilai fib bisa dibagi 3, maka nilai fib ditambah dengan 1. Tampilkan nilai fib dan set nilai prevprev dengan prev. Begitu seterusnya hingga setiap nilai pada deret telah ditampilkan. 

---------------------------------
-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur
### Problem 2

Dalam dunia komputer, sering digunakan istilah *hexadecimal*, yaitu bilangan berbasis 16 (desimal adalah bilangan berbasis 10).Berikut adalah tabel yang membandingkan desimal dengan heksadesimal


| Desimal | Heksadesimal | Desimal | Heksadesimal |
| ------- | ------------ | ------- | ------------ |
| 0       | 00           | 9       | 09           |
| 1       | 01           | 10      | 0A           |
| 2       | 02           | 11      | 0B           |
| 3       | 03           | 12      | 0C           |
| 4       | 04           | 13      | 0D           |
| 5       | 05           | 14      | 0E           |
| 6       | 06           | 15      | 0F           |
| 7       | 07           | 16      | 10           |
| 8       | 08           | 17      | 11           |


Buatlah program yang menjumlahkan dua bilangan heksadesimal dua digit menjadi bilangan
heksadesimal! (Buatlah fungsi HexToDec() dan DecToHex())


**Format Input & Output (input di-*bold*)**
***
Masukan A : **11**

Masukan B: **05**

11 + 05 = 16
***
Masukan A : **1D**

Masukan B: **2B**

1D + 2B = 48
***
---------------------------------
#### Source code :
```
def Power(a,b):
	result = 1

	for i in range(0,b):
		result = result * a

	return result

def HexToDec(hex):
	pangkat = 1
	result = 0

	for i in range(0,2):
		if hex[i] == '0':
			result = result + 0
		elif hex[i] == '1':
			result = result + 1 * Power(16,pangkat)
		elif hex[i] == '2':
			result = result + 2 * Power(16,pangkat)
		elif hex[i] == '3':
			result = result + 3 * Power(16,pangkat)
		elif hex[i] == '4':
			result = result + 4 * Power(16,pangkat)
		elif hex[i] == '5':
			result = result + 5 * Power(16,pangkat)
		elif hex[i] == '6':
			result = result + 6 * Power(16,pangkat)
		elif hex[i] == '7':
			result = result + 7 * Power(16,pangkat)
		elif hex[i] == '8':
			result = result + 8 * Power(16,pangkat)
		elif hex[i] == '9':
			result = result + 9 * Power(16,pangkat)
		elif hex[i] == 'A':
			result = result + 10 * Power(16,pangkat)
		elif hex[i] == 'B':
			result = result + 11 * Power(16,pangkat)
		elif hex[i] == 'C':
			result = result + 12 * Power(16,pangkat)
		elif hex[i] == 'D':
			result = result + 13 * Power(16,pangkat)
		elif hex[i] == 'E':
			result = result + 14 * Power(16,pangkat)
		elif hex[i] == 'F':
			result = result + 15 * Power(16,pangkat)

		pangkat = pangkat - 1

	return result


def DecToHex(dec):
	result = []

	while dec > 0:
		remainder = dec % 16

		if remainder == 0:
			result.append('0')
		elif remainder == 1:
			result.append('1')
		elif remainder == 2:
			result.append('2')
		elif remainder == 3:
			result.append('3')
		elif remainder == 4:
			result.append('4')
		elif remainder == 5:
			result.append('5')
		elif remainder == 6:
			result.append('6')
		elif remainder == 7:
			result.append('7')
		elif remainder == 8:
			result.append('8')
		elif remainder == 9:
			result.append('9')
		elif remainder == 10:
			result.append('A')
		elif remainder == 11:
			result.append('B')
		elif remainder == 12:
			result.append('C')
		elif remainder == 13:
			result.append('D')
		elif remainder == 14:
			result.append('E')
		elif remainder == 15:
			result.append('F')

		dec = dec // 16

	hex = ''

	for i in reversed(range(len(result))):
		hex = hex + result[i] 

	return hex

A = input("Masukan A : ")
B = input("Masukan B: ")

resultA = HexToDec(A)
resultB = HexToDec(B)

resultinDec = resultA + resultB
resultinHex = DecToHex(resultinDec)

print(A, "+", B, "=", resultinHex)
```

---------------------------------
#### Penjelasan : 
Terdapat 3 fungsi yang digunakan oleh program ini, yaitu fungsi power, HexToDec, dan DecToHex. Fungsi Power(a,b) berfungsi untuk menghitung nilai a pangkat b. Fungsi HexToDec berfungsi untuk mengubah nilai hexadecimal 2 digit menjadi nilai decimal. Fungsi ini menggunakan 2 variabel yaitu variabel pangkat dan result. Dilakukan iterasi 2 kali, pada iterasi pertama, cek digit pertama dari hexadecimal, cocokkan nilainya dengan tabel, lalu tambahkan nilai result dengan rumus : nilai decimal dari digit hexadecimal * 16^pangkat. Nilai pangkat disesuaikan dengan posisi digit, jika pada posisi pertama, nilainya 1 sedangkan jika berada pada posisi kedua, nilainya 0. Setelah itu, kurangi nilai pangkat dan cek kembali digit kedua pada hexadecimal dengan cara sebelumnya, nilai result ditambahkan dari result sebelumnya dan ditambah dengan perhitungan rumus yang sama, hanya nilai pangkatnya sekarang 0. Setelah itu, kembalikan nilai result. Fungsi DecToHex berfungsi untuk mengubah nilai decimal menjadi hexadecimal. Fungsi ini menggunakan sebuah list yang bernama result dan variabel dec yang merupakan nilai decimal masukannya. Selama nilai dec tidak sama dengan 0, hitung remainder dengan melakukan mod pada nilai dec dengan 16. Setelah itu, remainder dicek sesuai tabel dan masukkan result dengan nilai hexadecimal yang sesuai. Selanjutnya, dilakukan div pada nilai dec dengan 16. Ulangi hingga nilai dec sama dengan 0. Setelah itu, karena result yang dihasilkan terbalik, maka buatlah string hex baru yang sesuai dengan cara melakukan concat dari nilai paling belakang pada list hingga ke nilai paling depan. Setelah itu kembalikan nilai hex yang dihasilkan. Program utama pada awalnya menerima nilai A dan B yang merupakan nilai hexadecimal 2 digit, lalu mengubah masing-masing nilai tersebut menjadi decimal, setelah itu dijumlahkan dan ubah hasil penjumlahan menjadi hexadecimal. Nilai penjumlahan yang sudah dalam hexadecimal kemudian ditampilkan. 

---------------------------------
------------------
-----------------
------

## Bab 4 - *Array*

### Problem 1
Budi mengelola sebuah toko kelontong. Setiap hari ia harus mencatat seluruh barang yang ada di tokonya dan mencatat penjualan dari barang tersebut. Karena ia mudah lupa, ia membutuhkan program untuk mencatat daftar belanja tersebut. Buatlah program untuk mencatat inventaris dan penjualan toko milik budi

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah barang : **4**

Masukkan nama barang : **kecap**

Masukkan nama barang : **mie**

Masukkan nama barang : **gula**

Masukkan nama barang : **telur**

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **kecap**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **2**

Stok toko : mie, gula, telur

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **minyak**

Barang tidak ada

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **mie**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **gula**

Barang berhasil dijual

1. Jual
2. Lihat stok

Pilihan menu : **1**

Masukkan nama barang : **telur**

Barang berhasil dijual

Barang sudah habis, silahkan melakukan restok barang
***

---------------------------------
#### Source code :
```
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
```
---------------------------------
#### Penjelasan : 
Program menerima masukan jumlah barang, lalu menerima masukan nama barang sejumlah masukan jumlah barang. Nama barang dimasukkan ke dalam sebuah list barang. Selama masih ada barang pada list barang, tampilkan menu, masukkan pilihan menu pada variabel menu, lalu jika yang dipilih adalah menu pertama, masukkan nama barang yang ingin dijual ke dalam variabel chosenthing, lalu cek apakah chosenthing terdapat di dalam list barang. Jika terdapat di list barang, jual barang tersebut, hapus dari list barang. Sedangkan jika tidak terdapat di list barang, tampilkan pesan "Barang tidak ada". Jika yang dipilih adalah menu kedua, tampilkan stok toko dengan menampilkan seluruh isi list barang. Ulangi hingga seluruh barang telah dijual.

---------------------------------
-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal
### Problem 12

Tuan Krab ingin memperluas pasar untuk Krabi Pati. Kali ini dia berencana membangun Krasti Krab di pegunungan. Untuk Krasti Krab yang baru ini, dia ingin agar bangunannya berbentuk **persegi**. Namun, tanah yang tersedia di pegunungan tidaklah rata. Untuk menghemat anggaran, Tuan Krab hanya akan membangun pada bidang tanah yang rata saja (memiliki ketinggian sama). Kontur tanah di pegunungan direpresentasikan dalam *square matrix* berukuran `N`x`N` dimana nilai setiap elemennya menggambarkan ketinggian tanah di tempat tersebut. Tuan Krab meminta bantuan Anda untuk dapat menentukan luas maksimum dari Krasti Krab yang dapat dibangun.

**Format *Input* dan *Output***
*Input* berupa matriks kontur tanah disimpan dalam file eksternal `contour.txt`. Dalam file ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` bilangan bulat yang masing-masing mewakili ketinggian tanah pada posisi tersebut. 
*Output* berupa informasi luas maksimum Krasti Krab yang dapat dibangun pada lokasi tersebut.

**Contoh**

- contour.txt

```
4
1 1 1 8
1 1 1 6
1 1 1 3
2 2 2 2
```

- *runtime program*
```
file loaded!
Luas maksimum Krasti Krab yang dapat dibangun adalah 9
```
----------------------------
---------------------------------
#### Source code :
```
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
```
---------------------------------
#### Penjelasan : 
Terdapat 2 fungsi yang digunakan oleh program ini, yaitu fungsi openfile dan fungsi findsize. Fungsi openfile berfungsi untuk membaca file text yang terdapat pada 1 folder dengan program. Fungsi ini mengembalikan ukuran dan matrix yang telah dibaca. Fungsi findsize berfungsi untuk mencari ukuran terbesar dari bidang tanah yang memiliki ketinggian yang sama (n). Fungsi ini menggunakan dp_matrix untuk menyimpan ukuran terbesar dari submatrix pada setiap titik. Submatrix dibentuk dengan mengecek barat, utara, dan barat laut dari sebuah titik. Luas dari bidang tanah yang memenuhi syarat adalah n*n.

---------------------------------
----------------------------
------

------
