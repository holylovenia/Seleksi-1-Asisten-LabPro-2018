# Seleksi 1 Asisten LabPro 2018
-----------------------------------

(c) Ihsan Muhammad Asnadi / 135-16-028

---------------------------------
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

---------------------------------
### Solusi Problem 11

```
#include <bits/stdc++.h>
using namespace std;
```

---------------------------------
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
### Solusi Problem 10


---------------------------------
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

---------------------------------
### Solusi Problem 9


---------------------------------
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

---------------------------------
### Solusi Problem 8

---------------------------------
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

---------------------------------
### Solusi Problem 7
