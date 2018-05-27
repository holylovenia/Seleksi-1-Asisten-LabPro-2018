# Seleksi 1 Asisten LabPro 2018
-----------------------------------

## Author
[Muhammad Alif Arifin](https://github.com/AlifArifin) - 13516078

## Persoalan
### Bab 1 Problem 2
#### Deskripsi
Tuan Vin ingin meminta bantuan Anda. Tuan Vin diminta untuk mengurutkan nilai ujian antara 3 orang. Ini adalah hal yang mudah, tetapi Tuan Vin perlu memeriksa ratusan orang. Karena malas, Tuan Vin meminta bantuan Anda, yang jago membuat program. Nilai ketiga orang dijamin berbeda.

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan Nama 1: <b>Kevin</b>
Masukan Nilai 1: <b>70</b>
Masukan Nama 2: <b>Richard</b>
Masukan Nilai 2: <b>100</b>
Masukan Nama 3: <b>Albert</b>
Masukan Nilai 3: <b>80</b>

Peringkat pertama adalah Richard
Peringkat kedua adalah Albert
Peringkat ketiga adalah Kevin
</pre>

#### Source code
- 1-problem02.pas
```
// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Percabangan -  Bab 1 Problem 2
// Deskripsi : Mengurutkan 3 mahasiswa berdasarkan nilai
// Batasan   : Nilai ketiga orang dijamin berbeda

program bab1;

{ KAMUS }
type
	mahasiswa = record
		nama : string;
		nilai : integer;
	end;

var
	m1, m2, m3 : mahasiswa; // untuk menyimpan 3 data mahasiswa

{ ALGORITMA }
begin
	write('Masukan Nama 1: ');
	readln(m1.nama);
	write('Masukan Nilai 1: ');
	readln(m1.nilai);
	write('Masukan Nama 2: ');
	readln(m2.nama);  
	write('Masukan Nilai 2: ');
	readln(m2.nilai);
	write('Masukan Nama 3: ');
	readln(m3.nama);  
	write('Masukan Nilai 3: ');
	readln(m3.nilai);
	
	// jika m1 merupakan peringkat pertama
	if ((m1.nilai > m2.nilai) and (m1.nilai > m3.nilai)) then
	begin
		writeln('Peringkat pertama adalah ', m1.nama);
		// jika m2 merupakan peringkat kedua
		if (m2.nilai > m3.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m2.nama);
			writeln('Peringkat ketiga adalah ', m3.nama);          
		end
		// jika m3 merupakan peringkat kedua
		else
		begin 
			writeln('Peringkat kedua adalah ', m3.nama);              
			writeln('Peringkat ketiga adalah ', m2.nama);
		end;
	end
	// jika m2 merupakan peringkat pertama
	else if ((m2.nilai > m1.nilai) and (m2.nilai > m3.nilai)) then
	begin
		writeln('Peringkat pertama adalah ', m2.nama);
		// jika m1 merupakan peringkat kedua    
		if (m1.nilai > m3.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m1.nama);
			writeln('Peringkat ketiga adalah ', m3.nama);                  
		end
		// jika m3 merupakan peringkat kedua    
		else 
		begin
			writeln('Peringkat kedua adalah ', m3.nama);    
			writeln('Peringkat ketiga adalah ', m1.nama);    
		end;
	end
	// jika m3 merupakan peringkat pertama
	else
	begin
		writeln('Peringkat pertama adalah ', m3.nama);
		// jika m2 merupakan peringkat kedua    
		if (m2.nilai > m1.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m2.nama);
			writeln('Peringkat ketiga adalah ', m1.nama);          
		end
		// jika m1 merupakan peringkat kedua    
		else 
		begin
			writeln('Peringkat kedua adalah ', m1.nama);    
			writeln('Peringkat ketiga adalah ', m2.nama);    
		end;      
	end;
end.
```

---------------------------

### Bab 2 Problem 1
#### Deskripsi
Karena bosan belajar, sekumpulan anak TPB memutuskan untuk bermain. Pada permainan ini, anak TPB tersebut secara bergantian menyebutkan bilangan natural secara berurutan. Namun, mereka tidak boleh menyebutkan angka kelipatan **3** atau **7**. Misal jika mereka bermain sampai angka 25, bilangan yang akan mereka ucapkan adalah sebagai berikut:
**1, 2, 4, 5, 8, 10, 11, 13, 16, 17, 19, 20, 21, 22, 23, 24, 25**

Dapat dilihat bahwa seluruh bilangan kelipatan 3 atau 7 tidak disebutkan, kecuali kelipatan 3 dan 7 (yaitu 21). Karena tidak ingin kalah terus menerus, seorang mahasiswa membuat program untuk membantunya bermain. Program tersebut menerima input berupa suatu bilangan bulat N dan mencetak seluruh angka yang harus disebutkan sampai bilangan N.

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan N: <b>25</b>  
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
</pre>
<pre>
Masukan N: <b>10</b>
1  
2  
4  
5  
8  
10  
</pre>
---------------------------------

### Bab 3 Problem 12
#### Deskripsi
Saat sedang kuliah kalkulus, seorang mahasiswa mendapatkan dua buah fungsi berikut.

`f(x) = 2x − 9`

`g(x) = x^3 + 7`

Ia baru saja belajar mengenai fungsi komposisi sehingga ia ingin mencoba untuk menerapkannya pada kedua fungsi tersebut. Bantulah ia untuk menghitung nilai f(g(f(x))) diberikan nilai x!

#### Format Input dan Output
input di-**bold**  
*Contoh*
<pre>
Masukan nilai x: <b>4</b>

f(g(f(x))) = 3
</pre>
<pre>
Masukan nilai x: <b>0</b>

f(g(f(x))) = -1453
</pre>

Anda diwajibkan membuat fungsi f(x) dan g(x).

------------------

### Bab 4 Problem 11
#### Deskripsi
Mei ditugaskan untuk mencatat absensi seluruh mahasiswa yang hadir. Setiap kali mahasiswa hadir, mahasiswa harus mengumpulkan kertas kehadiran berisi NIM kepada Karin. Buatlah program untuk membantu Karin mencatat berapa kali suatu mahasiswa hadir *NIM mahasiswa tidak lebih dari 3 digit*

#### Format Input dan Output 
input di-**bold**  
*Contoh*
<pre>
Masukkan jumlah kertas kehadiran : <b>9</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>230</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>89</b>
Masukkan NIM mahasiswa : <b>100</b>
Masukkan NIM mahasiswa : <b>100</b>
Masukkan NIM mahasiswa : <b>74</b>
Masukkan NIM mahasiswa : <b>74</b>
Masukkan NIM mahasiswa : <b>89</b>

Rekap kehadiran mahasiswa :
74 - 2 kali
89 - 4 kali
100 - 2 kali
230 - 1 kali
</pre>
----------------------------

### Bab 5 Problem 10
#### Deskripsi
Tuan Krab ingin membuka cabang baru dari Krasti Krab. Oleh karena itu, dia perlu untuk membeli bidang tanah baru. Petak-petak tanah yang tersedia direpresentasikan dalam matriks berukuran `N`x`N`. Setiap petak tanah mempunyai harga masing-masing. Untuk membangun cabang dari Krasti Krab, dibutuhkan suatu bidang tanah yang berbentuk kotak. Namun, ternyata Tuan Krab hanya membawa uang dalam pecahan `K`. Karena tidak mau rugi, maka Tuan Krab mengambil keputusan hanya akan membeli bidang tanah dengan harga total berupa kelipatan `K`. Tugas Anda adalah mencari banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

#### Format Input dan Output
*Input* berupa matriks yang merepresentasikan harga petak tanah disimpan dalam file eksternal `land.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat positif yang merupakan harga petak tanah pada *cell* tersebut. Pada saat *runtime*, diinputkan bilangan bulat `K` yang merepresentasikan pecahan uang yang dibawa oleh Tuan Krab.  
*Output* berupa informasi banyaknya bidang tanah yang dapat dibeli oleh Tuan Krab.

*Contoh*
- land.txt

```
3
17 11 18
10 15 20
19 16 3
```

- *runtime program*

<pre>
matriks loaded!
Pecahan uang: <b>4</b>
Banyak bidang tanah yang dapat dibeli adalah 6
</pre>

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