# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Azka Nabilah Mumtaz - 13516013

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

------

------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 6](#problem-6)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 5](#problem-5-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 4](#problem-4-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 3](#problem-3-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 2](#problem-2-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------
### Problem 6

Tuan Vin pergi meminjam buku ke perpustakaan. Perpustakaan tersebut meminjamkan buku dengan sewa pokok P per hari dan batas waktu sewa T. Jika setelah T hari tidak dikembalikan, harga sewa akan bertambah D per harinya. Saat Tuan Vin hendak mengembalikan buku, Tuan Vin bingung menghitung harga sewa bukunya. Agar tidak ditipu mengurus perusahaan, Tuan Vin memeinta bantuan Anda untuk menghitung uang sewa yang tepat.


**Format Input & Output (input di-*bold*)**
***
Masukan harga sewa pokok: **1000**

Masukan batas waktu sewa: **7**

Masukan tambahan harga sewa: **500**

Masukan lama Tuan Vin meminjam: **3**

Harga sewa yang harus dibayar Tuan Vin adalah: 3000
***
Masukan harga sewa pokok: **3000**

Masukan batas waktu sewa: **7**

Masukan tambahan harga sewa: **500**

Masukan lama Tuan Vin meminjam: **10**

Harga sewa yang harus dibayar Tuan Vin adalah: 31500
***


Penjelasan contoh 1:
Tuan Vin tidak melebihi batas waktu sewa sehingga tidak perlu membayar lebih


Penjelasan contoh 2:
Pada 7 hari pertama, harga sewa hanya 3000. Setelah itu, harga sewa naik menjadi 3500, sehingga total sewanya adalah 7*3000 + (10-7)*3500 = 31500

-----------------------
-----------------------
------

## Bab 2 - Pengulangan
---------------------------------
### Problem 5


Terdapat sebuah permainan, dimana terdapat N buah kelompok, dan masing - masing kelompok memiliki **M** orang anggota kelompok. Banyaknya anggota kelompok bisa berbeda - beda antar kelompok. Sebuah kelompok dianggap menang jika kelompok tersebut mengetahui kelompok berapa yang memiliki anggota paling sedikit. Bantulah kelompok tersebut untuk memenangkan permainan.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah kelompok :3
Masukan jumlah anggota kelompok 1 :10 
Masukan jumlah anggota kelompok 2 :12 
Masukan jumlah anggota kelompok 3 :9 
Kelompok dengan anggota tersedikit adalah kelompok 3
```

-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur

### Problem 4

Bilangan prima adalah bilangan yang hanya habis dibagi oleh 1 dan bilangan itu sendiri. Buatlah program yang menentukan semau bilangan prima diantara dua buah bilangan A dan B (0  ≤ A, B ≤ 100000) inklusif.
Catatan : Buatlah fungsi yang memeriksa apakah sebuah bilangan adalah bilangan prima atau bukan.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A : **0**

Masukkan nilai B : **10**

Bilangan prima diantara 0 sampai 10 adalah:

2

3

5

7
***
Masukkan nilai A : **25**

Masukkan nilai B : **10**

Bilangan prima diantara 10 sampai 25 adalah:

11

13

17

19

23
***

------------------
-----------------
------

## Bab 4 - *Array*

### Problem 3

Pada suatu acara pernikahan diadakan undian berhadiah mobil. Setiap tamu yang masuk ke dalam ruangan memiliki nomor unik. Tamu-tamu yang memiliki nomor tertentu akan mendapatkan hadiah. Setiap tamu yang memiliki nomo yang merupakan bilangan fibonnaci akan mendapatkan hadiah. Buatlah program untuk mencari siapa tamu yang mendapatkan hadiah

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah tamu : **10**

Masukan nama tamu 1 : **Asep**

Masukan nama tamu 2 : **Budi**

Masukan nama tamu 3 : **Charlie**

Masukan nama tamu 4 : **Doddy**

Masukan nama tamu 5 : **Erma**

Masukan nama tamu 6 : **Frans**

Masukan nama tamu 7 : **Gelbert**

Masukan nama tamu 8 : **Hans**

Masukan nama tamu 9 : **Iwan**

Masukan nama tamu 10 : **Julia**

Tamu yang akan mendapat hadiah adalah :

Asep

Budi

Charlie

Erma

Hans
***

-----------------
-----------------

## Bab 5 - Matriks dan File Eksternal

### Problem 2

Tuan Krab mempunyai kumpulan file foto jaman SMA-nya dulu. Selagi bernostalgia membuka satu-persatu foto tersebut, dia menyadari bahwa *skill* fotografi-nya dulu sangatlah buruk. Ternyata terdapat banyak foto yang posisinya tidak sesuai, sehingga dia perlu untuk melakukan rotasi pada foto tersebut. Dia pun meminta bantuan Anda dalam merotasi foto-foto tersebut.
Sebagai seorang *programmer* handal, Anda berinisiatif untuk membuat program yang membantu dalam melakukan rotasi. 
**Format *Input* dan *Output***
*Input* foto berupa file `image.txt` yang merupakan file foto sederhana. Foto direpresentasikan dalam *square pixel matrix* `N x N`. Baris pertama file ini berisi bilangan bulat positif `N` yang merupakan ukuran matriks. `N` baris selanjutnya berisi `N` buah bilangan bulat non-negatif yang merepresentasikan warna *pixel* pada posisi tersebut. Kemudian pada saat *runtime*, program akan meminta masukan berupa bilangan bulat non-negatif `R` yang merupakan banyak **rotasi 90 derajat searah jarum jam** yang akan dilakukan pada file foto tersebut. *Output* berupa file `result.txt` dengan format yang sama dengan file *input*.
**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)
- image.txt
```
3
1 2 3
4 5 6
7 8 9
```
- *runtime program*
```
file loaded!
Masukkan banyak rotasi : 1
result exported!
```
- result.txt
```
3
7 4 1
8 5 2
9 6 3
```
----------------------------
----------------------------
------