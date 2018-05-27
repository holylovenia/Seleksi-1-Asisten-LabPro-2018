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


## Bab 1 - Percabangan
---------------------------------
### Problem 7

source code: [a relative link](src/1-Problem07.pas)
Anda sedang bermain suit dengan Tuan Vin. Suit adalah permainan yang mengeluarkan batu, gunting atau kertas, dan pemenang ditentukan dari apa yang mereka keluarkan. Batu menang melawan gunting, gunting menang melawan kertas, kertas menang melawan batu. Karena Anda terus kalah, Anda menantang Tuan Vin untuk mengalahkan program Anda dalam suit. Tuan Vin pun setuju, tapi Anda hanya diperbolehkan menggunakan **batu atau kertas saja**. Dapatkah Anda membuat program yang tidak pernah kalah dari Tuan Vin?


**Format Input & Output (input di-*bold*)**
***
Tuan Vin mengeluarkan: **gunting**

Anda mengeluarkan: **batu**
***
Tuan Vin mengeluarkan: **kertas**

Anda mengeluarkan: **kertas**
***
Penjelasan contoh 2:
Karena Anda hanya boleh mengeluarkan batu atau kertas saja, maka agar tidak kalah Anda harus menang atau memaksa seri dengan mengeluarkan kertas lagi.

---------------------------------
---------------------------------


## Bab 2 - Pengulangan
---------------------------------

### Problem 6


Seorang mahasiswa menabung di sebuah bank.Banknya tempat mahasiswa tersebut menabung menggunakan sistem bunga majemuk.Karena kesulitan menghitung, mahasiswa tersebut ingin mengetahui berapa jumlah uang per bulannya. Selain itu, ia juga berencana menabung secara konsisten setiap bulannya. Bantulah ia untuk menghitung tabungannya.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan uang tabungan :1000 
Masukan persen bunga :10
Masukan lama menabung :4 
Tabungan pada bulan ke-1 = 1100  
Tabungan pada bulan ke-2 = 2310  
Tabungan pada bulan ke-3 = 3641  
Tabungan pada bulan ke-4 = 5105  
```


Penjelasan : Uang Tuan Vin pada bulan pertama adalah 1000 + 100 = 1100. Pada bulan kedua, uang Tuan
Vin menjadi (1100 + 1000) + (1100 + 1000) * 10% = 2310. Pada bulan ketiga, (2310 + 1000) + (2310 + 1000) * 10% =  3641.

Dan pada bulan keempat, uang Tuan Vin menjadi (3641 + 1000) + (3641 + 1000) * 10% =  5105. Anda dapat mengabaikan seluruh digit dibelakang koma.


## Bab 3 - Fungsi dan Prosedur
---------------------------------

### Problem 5

Seorang mahasiswa sedang mengantri untuk mendapatkan nomor peserta dari lomba nyanyi yang ia ikuti. Ia pun sangat deg-degan karena kakeknya pernah bermimpi bila Tuan Vin mendapatkan nomor peserta Lucky 7, tuan Vin sudah pasti memenangkan lomba ini. Apa itu Lucky 7? Lucky 7 adalah bilangan yang mengandung digit 7 dan juga habis dibagi 7. Sebagai contoh 77 merupakan Lucky 7 sementara 76 bukan karena tidak habis dibagi 7. Diberikan nomor peserta yang didapatkan oleh mahasiswa tersebut, tentukan apakah mahasiswa tersebut akan memenangkan lomba menyanyi ini.


**Format Input & Output (input di-*bold*)**
***
Masukan nomor peserta: 117

Mahasiswa tersebut akan kalah!
***
Masukan nomor peserta: 77

Mahasiswa tersebut akan menang!
***



## Bab 4 - *Array*
---------------------------------

### Problem 4

Charlie adalah salah satu tamu undangan dalam suatu acara pernikahan. Pesta pernikahan ini merupakan pesta pernikahan yang unik, karena semua mobil diparkirkan dalam rentang nilai tertentu. Namun ketika Charlie kembali, mobil Charlie hilang. Sialnya, ia lupa dengan nomor platnya. Buatlah program yang dapat menentukan nomor plat mobil yang dimiliki Charlie

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah mobil : **5**

Masukkan 4 nomor mobil yang ada:

**1203**

**1204**

**1208**

**1205**

**1206**

Mobil Charlie adalah mobil dengan nomor 1207
***
***
Masukkan jumlah mobil : **5**

Masukkan 4 nomor mobil yang ada:

**1203**

**1204**

**1207**

**1205**

**1206**


Tidak ada mobil yang merupakan mobil Charlie
***

## Bab 5 - Matriks dan File Eksternal
---------------------------------
### Problem 3

Tuan Krab sedang bernostalgia dengan masa kecilnya. Dia mengajak Anda untuk bermain Tic-Tac-Toe. 
Bagi Anda yang belum pernah bermain Tic-Tac-Toe, tidak perlu khawatir! Tuan Krab dengan senang hati akan menjelaskannya. Pada permainan ini, setiap pemain akan mengisi suatu *cell matrix* dengan karakter tertentu. Besarnya matriks yang digunakan tergantung pada kesepakatan para pemain, namun harus berupa *square matrix*. Pada permainan ini, Anda menggunakan karakter `x` dan Tuan Krab menggunakan karakter `o`. Permainan akan dimenangkan oleh pemain yang berhasil membuat suatu diagonal, baris, atau kolom yang semua *cell*-nya berisi karakter yang sama.  
Sebagai *programmer* kepercayaan Tuan Krab, Anda diminta untuk menentukan siapakah pemain yang memenangkan permainan ini.
**Format *Input* dan *Output***
*Input* berupa file eksternal `result.txt` yang berisi informasi mengenai keadaan akhir permainan. Baris pertama berisi bilangan bulat positif `N`, merupakan ukuran matriks yang digunakan dalam permainan tersebut. `N` baris berikutnya berisi `N` buah karakter (tanpa dipisahkan spasi) yang merepresentasikan kondisi akhir dari matriks. Karakter yang digunakan adalah:
- `x` : karakter milik Tuan Krab
- `o` : karakter milik Anda
- `-` : *cell* belum terisi (kosong)


*Output* berupa pesan yang menginformasikan siapa pemenang dari permainan tersebut. Jika tidak ada pemenang, maka tuliskan `Tidak ada pemenang`.
**Contoh**
- result.txt
```
3
xoo
-xo
-xo
```
- *runtime program*
```
result loaded!
Pemenangnya adalah Anda
```
-----------------------------------

Dicky Adrian - 13516050