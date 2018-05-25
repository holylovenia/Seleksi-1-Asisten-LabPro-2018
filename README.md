# Seleksi 1 Asisten LabPro 2018
-----------------------------------
### Nama : Rizki Alif Salman Alfarisy
### NIM : 13516005
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

# Solusi Soal
## Bab 1 - Percabangan - Problem 3
---------------------------------
Tuan Vin sedang belajar tentang trigonometri. Dia tahu bahwa nilai sin suatu sudut tergantung kuadrannya, dimana pada kuadran 1 sin(a) = sin(a), kuadran 2 sin(180-a) = sin(a), kuadran 3 sin(180+a) = -sin(a), kuadran 4 sin(360-a) = -sin(a). Tuan Vin menantang Anda untuk membuat kalkulator untuk mempermudah perhitungan sin dengan mengubah sudutnya menjadi antara 0 sampai 90. Dapatkah Anda menjawab tantangan Tuan Vin? (0 dan 90 dihitung kuadran 1, 180 dihitung kuadran 2, 270 dihitung kuadran 3 dan 360 dihitung kuadran 4. Nilai sudut selalu di antara 0 hingga 360).


**Format Input & Output (input di-*bold*)**
***
Masukan nilai sudut: **150**

sin(150) = sin(30)
***
Masukan nilai sudut: **75**

sin(75) = sin(75)
***
Masukan nilai sudut: **270**

sin(270) = -sin(90)
***

---------------------------------
## Bab 2 - Pengulangan - Problem 2
---------------------------------
Seorang mahasiswa mengklasifikasikan sebuah bilangan menjadi 3 kategori, yaitu **bilangan A**, **bilangan B**, dan **bilangan C**. 
- **Bilangan A** adalah bilangan yang seluruh faktornya kurang dari nilai bilangan tersebut.
- **Bilangan B** adalah bilangan yang seluruh faktornya sama dari nilai bilangan tersebut.
- **Bilangan C** adalah bilangan yang seluruh faktornya lebih dari nilai bilangan tersebut. 


Yang disebut faktor pada sebuah bilangan **N** adalah bilangan yang dapat membagi bilangan **N** sampai habis dan tidak sama dengan bilangan **N** tersebut. 
Bantulah mahasiswa tersebut dengan membuat program yang membaca angka dari **X** sampai **Y**, lalu menerima inputan tipe bilangan apa yang diinginkan, lalu mencetak seluruh bilangan tersebut ke layar. Jika tidak ada, maka cetak **Tidak ada**.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan X :1  
Masukan Y :10  
Masukan tipe bilangan :B  
Tipe bilangan B pada rentang 1 sampai 10 adalah  
6  
```
*(penjelasan : bilangan 6 memiliki faktor (1,2,3) yang nilai totalnya adalah 6)*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :A  
Tipe bilangan A pada rentang 5 sampai 10 adalah  
5  
7  
8  
9  
10  
```
*(penjelasan : bilangan 5 memiliki faktor (1) )*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :C  
Tipe bilangan C pada rentang 1 sampai 10 adalah  
Tidak ada
```
---------------------------------
## Bab 3 - Fungsi dan Prosedur - Problem 1
---------------------------------
Saat sedang mengerjakan PR kalkulus, seorang mahasiswa mendapatkan soal berikut.


> Diberikan fungsi sebagai berikut.
`f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2`  untuk semua bilangan bulat positif x kurang dari 30.
Carilah nilai x berdasarkan nilai f(x) yang diberikan.


Karena *deadline* PR kalkulus tinggal 1 jam lagi, bantulah mahasiswa tersebut untuk mengerjakan soal tersebut!


**Format Input & Output (input di-*bold*)**
***
Masukan f(x) : **14**

Nilai x adalah 1   
***
Masukan f(x) : **1700818**

Nilai x adalah 15
***
Masukan f(x) : **2**

Tidak ada x yang sesuai
***


**Catatan:**

Anda diwajibkan membuat fungsi f(x) untuk nilainya dicocokan dengan masukan.

---------------------------------
## Bab 4 - *Array* - Problem 12
---------------------------------
Lucio diminta oleh orangtuanya untuk menduplikat kunci kamar hotel yang tidak ada cadangannya. Setiap kunci, memiliki nomor yang menandakan nomor kamar. Buatlah program untuk menentukan mana saja kunci yang harus diduplikat oleh Lucio

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kunci yang ada : **10**

Masukkan nomor ruangan kunci yang ada :

102

105

102

103

102

201

202


Kunci yang harus diduplikat :

105

103

201

202
***

-----------------
## Bab 5 - Matriks dan File Eksternal - Problem 11
-----------------
### Problem 11

Krasti Krab telah semakin maju. Kini, telah ada `N` kasir yang dapat melayani penjualan. Masing-masing kasir memiliki slot antrian sepanjang `M`. Tuan Krab ingin mengetahui panjang antrian yang paling panjang di antara semua kasir yang ada. Dia meminta bantuan Anda untuk memecahkan masalah tersebut.

**Format *Input* dan *Output***
*Input* berupa kondisi antrian disimpan dalam file `queue.txt`. Dalam file tersebut, baris pertama berisi 2 bilangan bulat positif `N` dan `M` yang merepresentasikan banyak kasir dan panjang slot antrian untuk setiap kasir. `N` baris berikutnya berisi `M` bilangan 0 atau 1 yang merepresentasikan kondisi antrian pada suatu kasir. Jika bernilai 0, maka slot tersebut kosong. Sebaliknya jika bernilai 1, maka slot tersebut terisi. Diasumsikan bahwa pengunjung yang baru datang akan memilih suatu kasir dan  **langsung mengambil slot terdepan yang tersedia pada kasir tersebut**. Oleh karena itu, pada setiap baris antrian kasir, tidak ada angka 0 yang berada di sebelah kanan angka 1.
*Output* berupa informasi mengenai panjang antrian terpanjang yang ada.

**Contoh**

- queue.txt

```
3 4
0 0 1 1
0 1 1 1
0 0 0 0
```

- *runtime program*

```
file loaded!
Antrian terpanjang adalah 3
```
