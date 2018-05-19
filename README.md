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

------

------

# Deskripsi Soal

## Bab 1 - Percabangan
---------------------------------

### Problem 12

Tuan Vin menemukan sebuah kertas berisi persamaan matematika, tetapi operatornya ada yang hilang. Persamaan tersebut berbentuk:


A op1 B = C op2 D


Tuan Vin tahu bahwa operator yang mungkin hanya tambah, kurang, kali dan div dan pasti ada jawabnnya. Karena iseng, Tuan Vin menantang Anda untuk menyelesaikannya. Jika ada lebih dari 1 jawaban, tampilkan yang mana saja


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai A: **2**

Masukkan nilai B: **3**

Masukkan nilai C: **7**

Masukkan nilai D: **1**

Persamaan yang mungkin adalah: 2 * 3 = 7 - 1
***
Masukkan nilai A: **10**

Masukkan nilai B: **3**

Masukkan nilai C: **2**

Masukkan nilai D: **1**

Persamaan yang mungkin adalah: 10 / 3 = 2 + 1
***

---------------------------------
---------------------------------


## Bab 2 - Pengulangan
---------------------------------

### Problem 11


Suatu program didesain untuk mengenkripsi sebuah teks. Caranya adalah dengan mengubah karakter setiap hurufnya (kecuali tanda baca) dengan aturan menggeser sebanyak N. Misal jika N adalah 2, maka teks **i love you!** akan berubah menjadi **k nqxg aqw!**. 
Anda ditugaskan untuk memecahkan isi teks terenkripsi yang diberikan dan juga diberikan besarnya nilai **N**


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan teks terenkripsi :k nqxg aqw!
Masukan nilai N :2
Teks aslinya adalah "i love you!"
```

-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur
---------------------------------


### Problem 10

Faktorial dari sebuah bilangan bulat N (N!) dapat dinyatakan dalam bentuk sebagai berikut.
`N! = N x (N-1) x (N-2) x ... x 1`


Buatlah sebuah program yang menghitung nilai faktorial dari sebuah bilangan bulat yang diberikan. misal N! (Catatan: Buat fungsi Faktorial(N) untuk menghitung nilai faktorial tersebut)


**Format Input & Output (input di-*bold*)**
***
Masukan N: **6**

N! = 720
***


## Bab 4 - *Array*
---------------------------------

### Problem 9

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang turunan persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat menurunkan persamaan matematika

**Format Input & Output (input di-*bold*)**
***
Masukkan pangkat paling besar : **2**

Masukkan koefisien x^2 : **5**

Masukkan koefisien x^1 : **2**

Masukkan koefisien x^0 : **2**

Maka hasil turunannya adalah 10x^1 + 2x^0
***
***
Masukkan pangkat paling besar : **3**

Masukkan koefisien x^3 : **1**

Masukkan koefisien x^2 : **5**

Masukkan koefisien x^1 : **2**

Masukkan koefisien x^0 : **2**

Maka hasil turunannya adalah 3x^2 + 10x^0 + 2x^0
***

-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal

### Problem 8

Tuan Krab sedang iseng bermain catur di waktu luangnya. Namun, Tuan Krab ingin mencoba sebuah permainan catur baru. Pada permainan ini, dia hanya menggunakan sejumlah benteng (*rook*). Selain itu, ukuran papan catur adalah `N`x`N` dengan `N` adalah bilangan bulat positif. Tantangannya adalah mencari banyaknya benteng yang tidak saling menyerang dengan benteng lain yang ada pada permainan. Bantulah Tuan Krab untuk menyelesaikan permainan ini!

**Format *Input* dan *Output***
*Input* kondisi papan permainan diambil dari file eksternal `chess.txt`. Kondisi permainan digambarkan dengan matriks berukuran `N`x`N`. Jika isi suatu *cell* matriks adalah 1, maka terdapat benteng pada *cell* tersebut. Sebaliknya jika berisi 0, maka *cell* tersebut kosong. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai banyak benteng yang tidak saling serang.

**Contoh**

- chess.txt

```
4
1 0 0 1
0 1 0 0
0 0 1 0
0 0 0 1
```

- *runtime program*

```
matriks loaded!
Banyaknya benteng yang tidak saling serang adalah 2
```
