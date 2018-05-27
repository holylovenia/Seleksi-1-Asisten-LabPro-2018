Hani'ah Wafa (13516053)

Bab 1 Problem 9
----------------
Deskripsi Soal
Source Code
Penjelasan Solusi

Bab 2 Problem 8
---------------
Deskripsi Soal
Source Code
Penjelasan Solusi

Bab 3 Problem 7
---------------
Deskripsi Soal
Source Code
Penjelasan Solusi

Bab 4 Problem 6
---------------
Deskripsi Soal
Source Code
Penjelasan Solusi

Bab 5 Problem 5
---------------
Deskripsi Soal
Source Code
Penjelasan Solusi

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
  - [Problem 1](#problem-1)
  - [Problem 2](#problem-2)
  - [Problem 3](#problem-3)
  - [Problem 4](#problem-4)
  - [Problem 5](#problem-5)
  - [Problem 6](#problem-6)
  - [Problem 7](#problem-7)
  - [Problem 8](#problem-8)
  - [Problem 9](#problem-9)
  - [Problem 10](#problem-10)
  - [Problem 11](#problem-11)
  - [Problem 12](#problem-12)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 1](#problem-1-1)
  - [Problem 2](#problem-2-1)
  - [Problem 3](#problem-3-1)
  - [Problem 4](#problem-4-1)
  - [Problem 5](#problem-5-1)
  - [Problem 6](#problem-6-1)
  - [Problem 7](#problem-7-1)
  - [Problem 8](#problem-8-1)
  - [Problem 9](#problem-9-1)
  - [Problem 10](#problem-10-1)
  - [Problem 11](#problem-11-1)
  - [Problem 12](#problem-12-1)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 1](#problem-1-2)
  - [Problem 2](#problem-2-2)
  - [Problem 3](#problem-3-2)
  - [Problem 4](#problem-4-2)
  - [Problem 5](#problem-5-2)
  - [Problem 6](#problem-6-2)
  - [Problem 7](#problem-7-2)
  - [Problem 8](#problem-8-2)
  - [Problem 9](#problem-9-2)
  - [Problem 10](#problem-10-2)
  - [Problem 11](#problem-11-2)
  - [Problem 12](#problem-12-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 1](#problem-1-3)
  - [Problem 2](#problem-2-3)
  - [Problem 3](#problem-3-3)
  - [Problem 4](#problem-4-3)
  - [Problem 5](#problem-5-3)
  - [Problem 6](#problem-6-3)
  - [Problem 7](#problem-7-3)
  - [Problem 8](#problem-8-3)
  - [Problem 9](#problem-9-3)
  - [Problem 10](#problem-10-3)
  - [Problem 11](#problem-11-3)
  - [Problem 12](#problem-12-3)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 1](#problem-1-4)
  - [Problem 2](#problem-2-4)
  - [Problem 3](#problem-3-4)
  - [Problem 4](#problem-4-4)
  - [Problem 5](#problem-5-4)
  - [Problem 6](#problem-6-4)
  - [Problem 7](#problem-7-4)
  - [Problem 8](#problem-8-4)
  - [Problem 9](#problem-9-4)
  - [Problem 10](#problem-10-4)
  - [Problem 11](#problem-11-4)
  - [Problem 12](#problem-12-4)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

## Bab 1 - Percabangan
---------------------------------
### Problem 1
Tuan Vin diminta oleh temannya untuk mencatat jurusan-jurusan teman seangkatannya. Karena jumlahnya banyak, Tuan Vin tidak ingat siapa masuk jurusan mana. Dia hanya tahu bahwa 3 angka pertama NIM temannya menunjukkan jurusan mereka.


| Kode    | Jurusan                        |
| ------- | ------------------------------ |
| 135     | Teknik Informatika             |
| 180     | Teknik Tenaga Listrik          |
| 181     | Teknik Telekomunikasi          |
| 182     | Sistem Teknologi dan Informasi |
| Lainnya | ???                            |


Karena Tuan Vin harus menyerahkan hasilnya secepatnya, Tuan Vin meminta bantuan Anda untuk mempermudah pekerjaannya.


**Format Input & Output (input di-*bold*)**
***
Masukan Nama : **Kevin**

Masukan NIM : **13520001**

Kevin adalah mahasiswa Teknik Informatika
***
Masukan Nama : **Richard**

Masukan NIM : **18120999**

Richard adalah mahasiswa Teknik Telekomunikasi
***
Masukan Nama : **Albert**

Masukan NIM : **17720900**

Albert adalah mahasiswa ???
***

NIM dipastikan selalu 8 angka




### Problem 2
Tuan Vin ingin meminta bantuan Anda. Tuan Vin diminta untuk mengurutkan nilai ujian antara 3 orang. Ini adalah hal yang mudah, tetapi Tuan Vin perlu memeriksa ratusan orang. Karena malas, Tuan Vin meminta bantuan Anda, yang jago membuat program. Nilai ketiga orang dijamin berbeda.


**Format Input & Output (input di-*bold*)**
***
Masukan Nama 1: **Kevin**

Masukan Nilai 1: **70**

Masukan Nama 2: **Richard**

Masukan Nilai 2: **100**

Masukan Nama 3: **Albert**

Masukan Nilai 3: **80**

Peringkat pertama adalah Richard

Peringkat kedua adalah Albert

Peringkat ketiga adalah Kevin
***



### Problem 3

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



### Problem 4

Tuan Vin diajarkan tentang kuadran. Bidang kartesian dibagi menjadi kuadran 1, 2, 3, 4, serta sumbu x, sumbu y, dan titik origin. Karena Tuan Vin orang yang pelupa, dia lupa ciri-ciri masing-masing daerah. Tuan Vin meminta Anda untuk membantunya dengan membuat program yang dapat menentukan daeerah suatu titik.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai X : **0**

Masukkan nilai Y : **10**

Titik (0,10) berada di sumbu Y
***
Masukkan nilai X : **-3**

Masukkan nilai Y : **4**

Titik (-3,4) berada di kuadran 2
***
Masukkan nilai X : **0**

Masukkan nilai Y : **0**

Titik (0,0) berada di titik origin
***



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



### Problem 7

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



### Problem 8

Diketahui ada 5 jenis mineral (A, B, C, D, E) dan bahan-bahan makanan berikut mengandung mineral berikut:


- ikan: A, C
- daging: B, C, D
- sayur: D, E
- buah: B


Tuan Vin akan memakan 2 dari 4 jenis makanan tersebut (bisa sama), tetapi Tuan Vin takut kekurangan mineral. Tuan Vin meminta bantuan Anda untuk mengetahui mineral apa yang dia tidak dapatkan.


**Format Input & Output (input di-*bold*)**
***
Masukan makanan 1: **ikan**

Masukan makanan 2: **sayur**

Mineral B tidak didapatkan Tuan Vin
***
Masukan makanan 1: **buah**

Masukan makanan 2: **ikan**

Mineral D E tidak didapatkan Tuan Vin
***
Masukan makanan 1: **sayur**

Masukan makanan 2: **sayur**

Mineral A B C tidak didapatkan Tuan Vin
***



### Problem 9

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



### Problem 10

Tuan Vin sedang mengetik chat dan baru belajar emoticon. Emoticon dapat digunakan untuk mengekspreikan perasaan dalam chat. Karena baru belajar, jumlah emoticon yang diketahuinya hanya sedikit. Berikut adalah emoticon yang diketahui Tuan Vin:


- Senyum: :)
- Sedih: :(
- Tertwa: :D
- Menangis: :'(
- ROTFL: :))


Tuan Vin menantang Anda untuk menebak perasaan Tuan Vin berdasarkan emoticon yang dikirimnya.


**Format Input & Output (input di-*bold*)**
***
Masukan emoticon: **:D**

Tuan Vin sedang tertawa
***



### Problem 11

Tuan Vin menjadi wasit dalam permainan tic tac toe. Tuan Vin diminta menentukan pemenang dari setiap permainan. Karena malas, Tuan Vin meminta Anda yang jag membuat program untuk membuat program yang dapat menentukan pemenang permainan tic tac toe. Karena Tuan Vin menjadi wasit, dipastikan pada permainan ini paling banyak hanya ada 1 pemenang, dan papan dibiarkan terisi penuh karena Tuan Vin kesulitan menentukan pemenang.


**Format Input & Output (input di-*bold*)**
***
Masukkan isi papan:

**O X O**

**O O X**

**X X O**

Pemain O menang
***
Masukkan isi papan:

**X X X**

**O O X**

**X O O**

Pemain X menang
***
Masukkan isi papan:

**O X O**

**O X X**

**X O O**

Tidak ada yang menang
***
Hint: hanya ada 8 posisi yang menentukan pemenang dalam tic tac toe



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
### Problem 1


Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan **3** atau **7**. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut:
**1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 24, 25**


Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.


**Format Input dan Output** 
(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)
```
Masukan N :25  
1  
2  
4  
5  
8  
10  
11  
13  
16  
17  
19  
20  
21  
22  
23  
24  
25  
```
```
Masukan N :10  
1  
2  
4  
5  
8  
10  
```
---------------------------------


### Problem 2

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



### Problem 7


Karena cinta dengan pertambahan, maka seorang mahasiswa ingin membuat sebuah tanda tambah yang besar dengan ukuran **N**. Bantulah ia menggambar tanda tambah tersebut


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan N :4  
    |
    |
    |
    |
----+----
    |
    |
    |
    | 
```

---------------------------------



### Problem 8


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



### Problem 9


Seorang mahasiswa harus mencetak dokumen tugasnya. Karena hari sudah subuh dan harus dikumpulkan pada pagi hari, maka ia harus menentukan percetakan terdekat dari data yang tersedia. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan lokasi mahasiswa tersebut  
X :1
Y :0
Masukan banyaknya percetakan :3 
Masukan posisi percetakan 1  
X :1
Y :6
Masukan posisi pedagang 2  
X :0  
Y :0  
Masukan posisi pedagang 3  
X :5 
Y :7 
Pedagang terdekat adalah pedagang 2.
```
Hint : buatlah fungsi yang menghitung jarak 2 titik.



### Problem 10


Seorang mahasiswa ingin menentukan bilangan terendah kedua dan terbesar kedua dari **N** buah bilangan. Diasumsikan **N** selalu lebih besar dari **1**. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah bilangan :5  
Bilangan ke-1 :4 
Bilangan ke-2 :78
Bilangan ke-3 :25 
Bilangan ke-4 :20 
Bilangan ke-5 :34
Bilangan terendah kedua adalah 20
Bilangan tertinggi kedua adalah 34
```
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
---------------------------------



### Problem 12


Setelah selesai sidang tugas akhir di ITB, seorang mahasiswa ingin membuka sebuah restoran. Mahasiswa itu pun mengadakan survey, dan ternyata mahasiswa ITB senang makan pizza. Oleh karenanya, mahasiswa tersebut memutuskan untuk menjual pizza. Karena malas, mahasiswa tersebut ingin mengetahui berapa kali ia harus melakukan pemotongan pizza untuk memotong pizza tersebut menjadi **N** bagian. Contohnya adalah sebagai berikut.




Dapat dilihat pada gambar, untuk memotong pizza menjadi **4** bagian, mahasiswa tersebut perlu memotong pizza sebanyak **2** kali. Untuk menghitung jumlah pemotongan yang dibutuhkan, maka mahasiswa tersebut memutuskan untuk membuat sebuah program. Program tersebut menerima angka jumlah pemotongan, dan akan mengeluarkan jumlah potongan maksimal yang didapat. Berikut ini adalah contoh masukan dan keluaran dari program dari program


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah pemotongan :2  
Potongan maksimal yang didapat adalah 4  


Masukan jumlah pemotongan :7  
Potongan maksimal yang didapat adalah 29  
```
**Hint :** 
Rumus untuk mengitung jumlah pemotongan ke n adalah
*f(n) = n + f(n - 1)*, dimana f(0) = 1

-----------------------
-----------------------
------

## Bab 3 - Fungsi dan Prosedur
### Problem 1
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



### Problem 6

Menjelang akhir bulan ini, semua mahasiswa melakukan penghematan untuk biaya makan. Seorang mahasiswa memiliki akal untuk tidak hanya menghemat uang tetapi juga menghemat energi yang dia keluarkan.Ia mengetahui posisi seluruh penjual makanan yang harganya relatif sama dan ia berpikir bahwa ia dapat menghemat energi dengan pergi ke penjual paling dekat. Namun, ia terlalu malas untuk menentukan penjual paling dekat darinya (karena berpikir juga pakai energi).Bantulah mahasiswa tersebut menentukan penjual yang akan dikunjungi.Jika terdapat beberapa penjual dengan jarak sama, pilih yang mana saja.


**Format Input & Output (input di-*bold*)**
***
Masukan posisi mahasiswa

X : **0**

Y : **0**

Masukan banyak penjual: **3**

Masukan posisi penjual 1

X : **2**

Y : **2**

Masukan posisi penjual 2

X : **-2**

Y : **2**

Masukan posisi penjual 3

X : **1**

Y : **1**

Penjual terdekat adalah penjual 3.
***



### Problem 7

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



### Problem 8

Diberikan 2 bilangan positif a dan b. Tentukan nilai a^b!

**Format Input & Output (input di-*bold*)**

***
Masukan A : **2**

Masukan B : **10**

2^10 = 1024
***



### Problem 9

Diberikan 2 bilangan bulat A dan B (1 ≤ A, B ≤ 100000000), buatlah program yang menampilkan semua palindrom antara A dan B inklusif.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai range bilangan A dan B : **10 100**

Palindrome antara 10 dan 100 adalah:

11

22

33

44

55

66

77

88

99
***
Masukkan nilai range bilangan A dan B : **12 21**

Palindrome antara 10 dan 100 adalah:

TIDAK ADA
***


**Catatan:** 
Buatlah suatu fungsi yang memeriksa apakah suatu bilangan adalah bilangan palindrome atau bukan.



### Problem 10

Faktorial dari sebuah bilangan bulat N (N!) dapat dinyatakan dalam bentuk sebagai berikut.
`N! = N x (N-1) x (N-2) x ... x 1`


Buatlah sebuah program yang menghitung nilai faktorial dari sebuah bilangan bulat yang diberikan. misal N! (Catatan: Buat fungsi Faktorial(N) untuk menghitung nilai faktorial tersebut)


**Format Input & Output (input di-*bold*)**
***
Masukan N: **6**

N! = 720
***



### Problem 11

Bilangan menanjak adalah bialngan yang memiliki angka pada digit satuan lebih kecil dari digit puluhan, pada digit puluhan lebih kecil dari digit ratusan, dan seterusnya. Buatlah sebuah program yang memeriksa apakah sebuah bilangan N (0 ≤ N < 2000000000) adalah bilangan menanjak atau bukan!


**Format Input & Output (input di-*bold*)**
***
Masukkan N: **987654321**

Bilangan 987654321 adalah bilangan menanjak.
***
Masukkan N: **1**

Bilangan 1 adalah bilangan menanjak.
***
Masukkan N: **123456789**

Bilangan 123456789 bukan bilangan menanjak.
***



### Problem 12

Saat sedang kuliah kalkulus, seorang mahasiswa mendapatkan dua buah fungsi berikut.

`f(x) = 2x − 9`

`g(x) = x^3 + 7`


Ia baru saja belajar mengenai fungsi komposisi sehingga ia ingin mencoba untuk menerapkannya pada kedua fungsi tersebut. Bantulah ia untuk menghitung nilai f(g(f(x))) diberikan nilai x!


**Format Input & Output (input di-*bold*)**
***
Masukan nilai x: **4**

f(g(f(x))) = 3
***
Masukan nilai x: **0**

f(g(f(x))) = -1453
***


Anda diwajibkan membuat fungsi f(x) dan g(x).

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



### Problem 5

Diberikan dua buah array A dan B. Array tersebut akan berisi angka-angka sebanyak N. Array akan lebih besar jika gabungan semua angkanya lebih besar dari gabungan angka dari array yang lain. Tentukan mana array yang lebih besar

**Format Input & Output (input di-*bold*)**
***
Masukkan N : **5**

Masukkan array A : **5 6 7 8 1**

Masukkan array B : **5 8 7 6 1**

Array A lebih kecil dari array B
***
***
Masukkan N : **4**

Masukkan array A : **1 2 3 4**

Masukkan array B : **1 2 3 4**

Array A sama besar dengan array B
***
***
Masukkan N : **6**

Masukkan array A : **1 2 3 4 7 6**

Masukkan array B : **1 2 3 4 7 1**

Array A lebih besar dari array B
***

*Catatan : angka pasti positif*



### Problem 6

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



### Problem 7

Tiga kerajaan Wei, Wu ,dan Shu sedang membuat perjanjian untuk membagikan kekayaan yang mereka miliki untuk kerajaan kecil lain. Namun, agar tidak rugi, mereka hanya membagikan kekayaan yang mereka semua miliki. Untuk itu mereka membutuhkan program yang dapat menentukan mana saja kekayaan yang tiga negara tersebut miliki

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Perak**

**Berlian**

Masukkan jumlah kekayaan negara Wu : **2**

Masukkan kekayaan negara Wu :

**Emas**

**Tank**

**Perak**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Emas**

**Perak**

**Tank**

**Nuklir**

Ketiga negara tersebut harus membagikan :

Emas

Perak
***
***
Masukkan jumlah kekayaan negara Wei : **3**

Masukkan kekayaan negara Wei :

**Emas**

**Nuklir**

**Ternak**

Masukkan jumlah kekayaan negara Wu : **4**

Masukkan kekayaan negara Wu :

**Perak**

**Tank**

**Berlian**

**Permata**

Masukkan jumlah kekayaan negara Shu : **4**

Masukkan kekayaan negara Shu :

**Perunggu**

**Raksa**

**Berlian**

**Ternak**

Ketiga negara tersebut tidak memiliki kekayaan yang sama
***



### Problem 8

Terdapat sebuah array. Tentukan tiga angka a, b, dan c pada array tersebut yang memenuhi nilai a+b^2 = c dengan a != b != c

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah elemen array : **5**

Masukkan isi array : **0 1 2 4 5 7**

nilai a b c yang memenuhi adalah :

[0,2,4]

[1,2,5]

[4,1,5]

***
***
Masukkan jumlah elemen array : **3**

Masukkan isi array : **0 1 2**

tidak ada nilai a b c yang memenuhi
***



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



### Problem 10

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang integral persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat melakukan integral pada persamaan matematika

**Format Input & Output (input di-*bold*)**
***
Masukkan pangkat paling besar : **1**

Masukkan koefisien x^1 : **5**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2.5x^2 + 2x^1 + c
***
***
Masukkan pangkat paling besar : **2**

Masukkan koefisien x^2 : **6**

Masukkan koefisien x^1 : **3**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2x^3 + 1.5x^2 + 2x^1 + c
***


### Problem 11

Mei ditugaskan untuk mencatat absensi seluruh mahasiswa yang hadir. Setiap kali mahasiswa hadir, mahasiswa harus mengumpulkan kertas kehadiran berisi NIM kepada Karin. Buatlah program untuk membantu Karin mencatat berapa kali suatu mahasiswa hadir *NIM mahasiswa tidak lebih dari 3 digit*

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kertas kehadiran : **10**

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 230

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 89

Masukkan NIM mahasiswa : 100

Masukkan NIM mahasiswa : 100

Masukkan NIM mahasiswa : 74

Masukkan NIM mahasiswa : 74

Masukkan NIM mahasiswa : 89

Rekap kehadiran mahasiswa :

74 - 2 kali

89 - 4 kali

100 - 2 kali

230 - 1 kali

***



### Problem 12

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
-----------------------------------


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


### Problem 4

Pearl, anak dari Tuan Krab, sedang belajar matriks di sekolah. Dia mendapatkan PR untuk menghitung nilai eksponen dari suatu *square matrix*. Eksponen dari suatu matriks didefinisikan sebagai operasi `N`^`E`, yang ekuivalen dengan perkalian `N`x`N`x`N`x ... x `N` sebanyak `E` kali. Sebagai contoh, `N`^3 ekuivalen dengan `N`x`N`x`N`. Guru dari Pearl mempunyai motto hidup "*practices make perfect*", sehingga beliau memberikan banyak sekali soal PR. Pearl pun meminta bantuan Anda untuk dapat menyelesaikan PR nya.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Pada saat *runtime*, program akan meminta *input* berupa bilangan bulat `E` yang merupakan pangkat dari matriks yang akan dihitung.
*Output* berupa file eksternal `result.txt` dengan format yang sama seperti file *input*. 
**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)
- matriks.txt
```
3
2 1 0
0 2 1
2 0 1
```

- *runtime program*

```
file loaded!
Masukkan pangkat: 3
result exported!
```

- result.txt

```
3
10 12 5
10 10 7
14 10 3
```




### Problem 5

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



### Problem 6

Pearl sedang belajar matriks di sekolahnya. Hari ini, Ibu Puff menerangkan mengenai *orthogonal matrix*. *Orthogonal matrix* merupakan suatu jenis matriks persegi `A` yang memenuhi sifat `A`x`(A^t)` = `I`, dimana `(A^t)` merupakan matriks transpose dari `A`, dan `I` adalah matriks identitas. Ibu Puff memberikan PR kepada murid-muridnya untuk menentukan apakah suatu matriks adalah *orthogonal matrix* atau bukan. Pearl meminta Anda sebagai *programmer* kepercayaan keluarga Krab untuk membantunya menyelesaikan permasalahan tersebut.

**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *orthogonal matrix*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *orthogonal matrix*, maka dituliskan **No**. 

**Contoh**

- matriks.txt

```
3
1 0 0
0 1 0
0 0 1
```

- *runtime program*

```
matriks loaded!
Yes
```

-----------------------------------



### Problem 7

Spons akan membuat selai dari saus *jellyfish*. Menurut resep rahasia yang dia terima dari Tuan Krab, selai dengan rasa terbaik dihasilkan dari perpaduan dua ekor *jellyfish* dari jenis Spongian dan Patrician, dengan bobot total kedua ekor *jellyfish* tersebut adalah `X`. Spons pun pergi ke pasar untuk membeli *jellyfish* yang diperlukan. Di pasar, pedagang telah menyiapkan daftar bobot *jellyfish* yang tersedia dari masing-masing jenis (elemen masing-masing daftar *unique*). Pedagang ini merupakan orang yang sangat sistematis, sehingga daftar tersebut disimpan dalam bentuk matriks persegi yang masing-masing elemennya terurut membesar. Spons perlu untuk mengetahui berapa banyak pasangan bobot *jellyfish* jenis Spongian dan Patrician yang dapat dia gunakan untuk menghasilkan selai terbaik. Tugas Anda adalah untuk membantu Spons menghitung banyaknya pasangan bobot yang dapat ia gunakan tersebut.

**Definisi**
Misalkan matriks `A` merupakan matriks dengan elemen terurut membesar yang berukuran `N`x`N`. Hal ini berarti untuk setiap bilangan bulat non-negatif `i`, `j` yang bernilai kurang dari `N`, maka berlaku `A[i][j]` < `A[i][j+1]` dan `A[i][N-1]` < `A[i+1][0]`.

**Format *Input* dan *Output***
*Input* matriks bobot ukuran diambil dari file eksternal `spongian.txt` dan `patrician.txt`. Pada file-file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. Perlu diperhatikan bahwa nilai `N` ini sama di kedua file. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Pada saat *runtime*, pengguna akan memasukkan bilangan bulat positif `X` yang merupakan target jumlah bobot yang dicari oleh Spons.
 *Output* berupa banyaknya pasangan bobot dari kedua jenis *jellyfish* yang berjumlah `X`.

**Contoh**

- spongian.txt

```
3
1 5 6
8 10 11
15 16 18
```

- patrician.txt

```
3
2 4 7
9 10 12
13 16 20
```

- *runtime program*

```
matriks loaded!
Masukkan target bobot: 21
Banyak pasangan adalah 4
```

Keterangan: pasangan yang memenuhi adalah (1, 20), (5, 16), (8, 13) dan (11, 10).



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

-----------------------------------



### Problem 9

Kota Bikini Batem pada masa depan sudah penuh sesak dengan penduduk. Saking sesaknya, rumah-rumah penduduk saling berdekatan satu sama lain dan dapat digambarkan sebagai *cell* matriks persegi (berukuran `N`x`N`). Suatu hari, sebuah virus mematikan menyerang kota tersebut. Pada awalnya, hanya ada beberapa rumah yang terjangkit. Namun, dalam satu hari virus ini dapat menjangkit tetangga dari rumah tersebut. Tetangga dalam hal ini didefinisikan sebagai *cell-cell* yang bersinggungan dengan *cell* tersebut (satu *cell* maksimal mempunyai 8 tetangga). Tugas Anda adalah menghitung berapa lama waktu yang dibutuhkan (dalam hari) untuk virus tersebut menjangkit seluruh kota.

**Format *Input* dan *Output***
*Input* berupa kondisi awal kota ketika virus pertama kali menjangkit, yang disimpan dalam file eksternal `city.txt`. Rumah yang sehat direpresentasikan dengan karakter `H`, dan rumah yang terjangkit direpresentasikan dengan karakter `U`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah karakter yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai lama waktu yang dibutuhkan hingga seluruh rumah di kota Bikini Batem terjangkit virus.

**Contoh**

- city.txt

```
3
H H H
H U H
H H H
```

- *runtime program*

```
matriks loaded!
Lama waktu apocalypse adalah 1 hari
```

-----------------------------------



### Problem 10

Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran `N`x`N`. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan `K`. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan `K`. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

**Format *Input* dan *Output***
*Input* berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal `land.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat positif yang merupakan harga petak tanah pada *cell* tersebut. Pada saat *runtime*, diinputkan bilangan bulat `K` yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab.
*Output* berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

**Contoh**
(Elemen baris setelah tanda ":" pada *runtime* merupakan *input* dari  pengguna)

- land.txt

```
3
17 11 18
10 15 20
19 16 3
```

- *runtime program*

```
matriks loaded!
Pecahan uang: 4
Banyak bidang tanah yang dapat dibeli adalah 6
```

*Keterangan:*
Ada 6 buah bidang tanah yang dapat dibeli.
Bidang tanah yang tersebut yaitu

```
17 11
```

```
10 15
19 16
```

```
17 11
10 15
18 16
```

```
16
```

```
11 18
15 20
```

```
20
```

-----------------------------------



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

-----------------------------------



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
----------------------------
------

**Selamat Mengerjakan :)**

------

Arya Pradipta - Jordhy Fernando - Holy Lovenia - Kevin Jonathan - Pratama Agung - Vincent Hendryanto - William Aristea
