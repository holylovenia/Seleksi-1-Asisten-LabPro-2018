# Seleksi 1 Asisten LabPro 2018
-----------------------------------
Oleh:

|      |                    |
|------|--------------------|
| NIM  | 13516030           |
| Nama | Yonas Adiel Wiguna |

------

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 12](#problem-12)
  - [Solusi Problem 12](#solusi-problem-12)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 11](#problem-11)
  - [Solusi Problem 11](#solusi-problem-11)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 10](#problem-10)
  - [Solusi Problem 10](#solusi-problem-10)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 9](#problem-9)
  - [Solusi Problem 9](#solusi-problem-9)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 8](#problem-8)
  - [Solusi Problem 8](#solusi-problem-8)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
------

------

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

### Solusi Problem 12

Karena ada dua operator yang harus ditebak dan ada 4 kemungkinan operator, kita dapat mengetahui ada 16 kemungkinan jawaban.

Jawaban dapat dikatakan benar jika persamaan memenuhi. Misal jika kita menebak kedua operator adalah penjumlahan, maka tebakan kita benar jika *a+b = c+d*. Untuk memeriksanya di Pascal, kita gunakan:
```
if (a+b = c+d) then
  writeln(a, ' + ', b, ' = ', c, ' + ', d);
```
Karena ada 16 kemungkinan, *copy-paste* potongan kode di atas sebanyak 16 kali, lalu sesuaikan operatornya.

---------------------------------
---------------------------------
------

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

### Solusi Problem 11
Pada string, fungsi `length(s)` mengembalikan panjang dari string s, dan `s[1]` mengakses karakter pertama, `s[2]`, mengakses karakter kedua, dan seterusnya.

Lalu, fungsi `ord(c)` mengembalikan nilai desimal dari sebuah karakter (penjelasan lebih lanjut ada di kode program) dan fungsi `chr(n)` mengembalikan karakter dari sebuah nilai desimal.

Supaya dapat kita operasikan, tiap karakter di string kita dapatkan nilai desimalnya terlebih dahulu. Kemudian, kita kurangkan dengan `ord('a')`. Dengan demikian, huruf a menjadi 0, b menjadi 1, dan seterusnya hingga z menjadi 25.

Lalu, kita kurangkan desimal tadi dengan N. Namun agar tidak menjadi negatif, kita tambah dengan 26 dulu, lalu kita modulo 26.

Akhirnya, dapatkan karakter yg perlu ditulis dengan menambah dengan `ord('a')` lalu menggunakan fungsi `chr()`. Perhatikan pula kalau `ord('a') <> ord('A')`. Jadi, rumus akhirnya adalah

```
write(chr(((ord(s[i]) - ord('a') + 26 - n) mod 26) + ord('a')));
```

untuk huruf kecil dan

```
write(chr(((ord(s[i]) - ord('A') + 26 - n) mod 26) + ord('A')));
```

untuk huruf besar. Untuk memeriksa huruf kecil / besar / tanda baca, cukup gunakan `if` dalam nilai ord nya.


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

### Solusi Problem 10
Fungsi faktorial yang akan kita buat akan memiliki judul
```
function fac(n: integer): integer;
```
karena fungsi ini menerima 1 buah bilangan integer dan juga menghasilkan bilangan integer, yaitu hasil faktorialnya.

Untuk menghitungnya, isi `fact` dengan `1`, kemudian kalikan dengan semua bilangan dari `1` hingga `n`. Cukup dengan for sederhana, kita bisa mendapatkan hasil faktorialnya.

------------------
-----------------
------

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

### Solusi Problem 9
Kita menyimpan koefisien dari polinom ke dalam sebuah array. Lalu kita akan menghitung hasil turunannya.

Pada turunan, koefisien dari polinom hasil turunan adalah koefisien suku dengan 1 derajat lebih tinggi dikali dengan derajatnya. Sebagai contoh, bila kita koefisien mula-mula x^2 adalah 3, maka koefisien x^1 nantinya akan menjadi 6 (2 x 3).

Lakukan perulangan untuk semua koefisien, dan kurangi derajat dari polinom, maka didapatkan polinom turunannya.

-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal
-----------------------------------
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

### Solusi Problem 8
Kita dapat membuat matriks dan file input dengan deklarasi

```
papan: array [1..100, 1..100] of integer; { papan catur }
fin: text; { file input }
```

Kemudian, kita dapat membaca seluruh matriks dari file dengan potongan kode berikut
```
assign(fin, 'chess.txt');
reset(fin);

read(fin, n);
for i := 1 to n do
  for j := 1 to n do
    read(fin, papan[i][j]);
```

Kemudian untuk setiap sel di papan, kita akan memeriksa apakah ada benteng atau tidak. Jika iya, kita akan menghitung jumlah benteng di baris dan kolom yg sama.
```
for i := 1 to n do
  for j := 1 to n do
    if (papan[i][j] = 1) then begin
      { menghitung jumlah benteng di baris dan kolom yang sama }
    end;
```
Cara meghitung benteng di baris yang sama adalah dengan memeriksa `papan[i][1]`, `papan[i][2]`, dan seterusnya hingga `papan[i][n]`. Untuk kolom, kita pertahankan `j` dan memeriksa `papan[1][j]`, `papan[2][j]`, dan seterusnya hingga `papan[n][j]`. Untuk itu, kita buat perulangan baru. Seharusnya, hanya ada 1 benteng, yakni benteng di `papan[i][j]`. Namun, benteng itu akan terhitung 2 kali, di baris dan kolom.

Setelah mengulangi langkah di atas untuk semua sel di papan, keluarkan jumlah benteng yang tidak saling menyerang.

----------------------------
----------------------------
------
