# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Petunjuk:

- Silahkan fork GitHub berikut agar dapat dikerjakan pada GitHub kalian masing-masing *(private)*.
- Pembagian soal dapat dilihat pada [tautan](https://docs.google.com/spreadsheets/d/1l8SNlbK4EI8wFb5_3pDDi3IfioO7VglCcPmfFCK2jJU/edit?usp=sharing) berikut ini.
- Kerjakan persoalan berikut (sesuai dengan pembagian) menggunakan algoritma yang menurut Anda mempunyai kinerja terbaik.
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

	Pembuat
	Nama	: Tony
	Nim		: 13516010

------

------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 5](#problem-5)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 4](#problem-4-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 3](#problem-3-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 2](#problem-2-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 1](#problem-1-4)

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
### Solusi

```
#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	string nama;
	int nilai;
	
	/* Algoritma */
	cout<<"Masukan Nama : ";
	cin>>nama;
	cout<<"Masukan Nilai : ";
	cin>>nilai;
	
	cout<<nama<<" mendapat nilai ";
	if(nilai >= 81){		/* nilai >= 81 dan nilai <= 100 */
		cout<<"A";
	}
	else if(nilai >= 61){	/* nilai >= 61 dan nilai <= 80 */
		cout<<"B";
	}
	else if(nilai >= 41){	/* nilai >= 41 dan nilai <= 60 */
		cout<<"C";
	}
	else if(nilai >= 21){	/* nilai >= 21 dan nilai <= 40 */
		cout<<"D";
	}
	else{					/* nilai >= 0 dan nilai <= 20 */
		cout<<"E";
	}
	cout<<endl;
	return 0;
}
```

---------------------------------


## Bab 2 - Pengulangan
---------------------------------
### Problem 4


Seorang asisten diminta untuk menghitung jumlah mahasiswa yang lulus dan yang tidak lulus. Seorang mahasiswa dianggap lulus jika nilainya **lebih besar** atau **sama dengan 60**. Karena malas, asisten tersebut meminta anda untuk membuat program untuk membantunya. 


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Banyak mahasiswa :4 
Nilai anak ke-1 :50 
Nilai anak ke-2 :90  
Nilai anak ke-3 :55 
Nilai anak ke-4 :90 
Total mahasiswa yang lulus adalah 2  
Total mahasiswa yang tidak lulus adalah 2  
```
```
Banyak mahasiswa :2
Nilai anak ke-1 :76
Nilai anak ke-2 :100 
Total mahasiswa yang lulus = 2  
Total mahasiswa yang tidak lulus = 0  
```

-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur

### Problem 3

Bilangan komposit adalah bilangan yang memiliki minimal satu bilangan lain yang dapat habis membagi bilangan tersebut selain 1 dan bilangan itu sendiri. Buatlah program yang menentukan semua bilangan komposit diantara dua buah bilangan A dan B (0  ≤ A, B ≤ 100000) inklusif.
Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan komposit atau bukan.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A : **0**

Masukkan nilai B : **10**

Bilangan komposit diantara 0 sampai 10 adalah:

4

6

8

9
***
Masukkan nilai A : **25**

Masukkan nilai B : **10**

Bilangan komposit diantara 10 sampai 25 adalah:

12

14

15

16

18

20

21

22

24

25
***

------------------
-----------------
------

## Bab 4 - *Array*

### Problem 2

Iwan adalah produsen barang unik. Untuk mendapatkan ide, Iwan memiliki kotak berisikan nama warna dan kotak berisi nama barang. Iwan memasangkan nama warna dan nama barang untuk mendapatkan ide barang unik yang akan ia produksi selanjutnya. Karena barang yang dimiliki Iwan semakin banyak, ia membutuhkan bantuan. Buatlah program untuk memasangkan setiap warna pada kotak dengan setiap nama barang pada kotak lainnya

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah warna : **3**

Masukkan nama warna :

**Biru**

**Hijau**

**Kuning**

Masukkan jumlah barang : **5**

Masukkan nama barang :

**Gunting**

**Permen**

**Buku**

**Baju**

**Tempe**

Ide barang selanjutnya :

Gunting Biru

Gunting Hijau

Gunting Kuning

Permen Biru

Permen Hijau

Permen Kuning

Buku Biru

Buku Hijau

Buku Kuning

Baju Biru

Baju Hijau

Baju Kuning

Tempe Biru

Tempe Hijau

Tempe Kuning

Terdapat 15 ide yang mungkin
***

-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal
### Problem 1
Pearl diajarkan mengenai suatu jenis matriks baru di sekolah, yaitu *bysimmetric matrix*. Matriks ini merupakan suatu matriks persegi berukuran `N`x`N` yang elemen-elemennya simetri terhadap kedua diagonalnya.
Tugas Anda adalah untuk membantu Pearl menentukan apakah suatu matriks tergolong jenis *bysimmetrix*.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut.
Jika matriks merupakan *bysimmetric matrix*, maka dituliskan **Yes** pada layar. 
Sebaliknya, jika bukan *bysimmetric matrix*, maka dituliskan **No**.
**Contoh**
- matriks.txt
```
3
1 2 3
2 5 2
3 2 1
```
- *runtime program*
```
matriks loaded!
Yes
```
-----------------------------------