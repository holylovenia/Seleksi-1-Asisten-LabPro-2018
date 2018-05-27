# Seleksi 1 Asisten LabPro 2018
-----------------------------------

## Author
[Muhammad Alif Arifin](https://github.com/AlifArifin) - 13516078

## Deskripsi Persoalan

### Bab 1 Problem 2
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

### Bab 2 Problem 1

Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan **3** atau **7**. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut:
**1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 24, 25**


Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.


**Format Input dan Output** 
(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)
```
Masukan N: 25  
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
Masukan N: 10  
1  
2  
4  
5  
8  
10  
```
---------------------------------

### Bab 3 Problem 12

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

### Bab 4 Problem 11

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
----------------------------

### Bab 5 Problem 10

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