# Seleksi 1 Asisten LabPro 2018
-----------------------------------
NIM : 13516040
Nama Lengkap : Maha William Chandra

# Daftar Isi

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [Bab 1 - Percabangan](#bab-1---percabangan)
  - [Problem 4](#problem-4)
- [Bab 2 - Pengulangan](#bab-2---pengulangan)
  - [Problem 3](#problem-3)
- [Bab 3 - Fungsi dan Prosedur](#bab-3---fungsi-dan-prosedur)
  - [Problem 2](#problem-2)
- [Bab 4 - *Array*](#bab-4---array)
  - [Problem 12](#problem-12)
- [Bab 5 - Matriks dan File Eksternal](#bab-5---matriks-dan-file-eksternal)
  - [Problem 11](#problem-11)


<!-- END doctoc generated TOC please keep comment here to allow auto update -->

------------------------------------
# Deskripsi Soal, Source Code, dan Penjelasan Solusi Setiap Soal
## Bab 1 - Percabangan
---------------------------------
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

Source code:
program Bab1Problem4;

procedure ReadPosition(var x:integer; var y:integer);
{Prosedur untuk membaca input posisi X dan Y pada bidang kartesian}
begin
	write('Masukkan nilai X : ');
	readln(x);
	write('Masukkan nilai Y : ');
	readln(y);
end;

procedure PrintPosition(x:integer; y:integer);
{Prosedur untuk mencetak kuadran dari posisi (x,y) pada bidang kartesian}
begin
	if (x = 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di titik origin');
	end else
	if (x = 0) and (y <> 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu Y');
	end else
	if (x <> 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu X');
	end else
	if (x > 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 1');
	end else
	if (x < 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 2');
	end else
	if (x < 0) and (y < 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 3');
	end else
		writeln('Titik (', x, ',', y, ') berada di kuadran 4');
end;
var
	xPosition : integer;
	yPosition : integer;
	
begin
	ReadPosition(xPosition,yPosition);
	PrintPosition(xPosition,yPosition);
end.

---------------------------------


## Bab 2 - Pengulangan
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

## Bab 3 - Fungsi dan Prosedur
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

## Bab 4 - *Array*
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

## Bab 5 - Matriks dan File Eksternal
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

