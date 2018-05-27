# Seleksi 1 Asisten LabPro 2018
-----------------------------------

oleh Teresa - 13516133

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


---------------------------------
---------------------------------


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
---------------------------------
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

